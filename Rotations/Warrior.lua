local Unlocker, Caffeine, Project = ...

-- This is only for retail
if Caffeine:IsClassic() then return end

local spec_index = GetSpecialization()
local spec_id = GetSpecializationInfo(spec_index)

-- Initial Spec (No spec)
if spec_id ~= 1446 then return end

local spells        = Project.Spells

local Module        = Caffeine.Module:New("war")

local Player        = Caffeine.UnitManager:Get("player")
local Target        = Caffeine.UnitManager:Get("target")
local None          = Caffeine.UnitManager:Get("none")

local CombatAPL     = Caffeine.APL:New("default")
local RestingAPL    = Caffeine.APL:New("resting")

-- Charge if far away and facing the target
CombatAPL:AddSpell(
    spells.charge:CastableIf(function(self)
        return self:IsKnownAndUsable() and Target:Exists() and Target:GetDistance(Player) > 8 and self:IsInRange(Target)
    end):SetTarget(Target)
)

-- Use kick when available
CombatAPL:AddSpell(
    spells.pummel:CastableIf(function(self)
        return self:IsKnownAndUsable() and Target:IsCastingOrChanneling() and self:IsInRange(Target)
    end):SetTarget(Target)
)

-- Use Shield Block against multiple enemies or if low HP
CombatAPL:AddSpell(
    spells.shield_block:CastableIf(function(self)
        return self:IsKnownAndUsable() and ((Player:GetEnemies(8) > 1) or (Player:GetHP() < 65))
    end):SetTarget(None)
)

-- Use Execute when available
CombatAPL:AddSpell(
    spells.execute:CastableIf(function(self)
        return self:IsKnownAndUsable() and self:IsInRange(Target)
    end):SetTarget(Target)
)

-- Use Victory Rush to heal
CombatAPL:AddSpell(
    spells.victory_rush:CastableIf(function(self)
        return self:IsKnownAndUsable() and Player:GetHP() < 90 and self:IsInRange(Target)
    end):SetTarget(Target)
)

-- Use Shield Slam on CD
CombatAPL:AddSpell(
    spells.shield_slam:CastableIf(function(self)
        return self:IsKnownAndUsable() and self:IsInRange(Target)
    end):SetTarget(Target)
)

-- Use Whirlwind as a rage spender in AoE
CombatAPL:AddSpell(
    spells.whirlwind:CastableIf(function(self)
        return self:IsKnownAndUsable() and Player:GetEnemies(8) > 1
    end):SetTarget(None)
)

-- Use Slam as a rage spender
CombatAPL:AddSpell(
    spells.slam:CastableIf(function(self)
        return self:IsKnownAndUsable() and self:IsInRange(Target)
    end):SetTarget(Target)
)

--[[ RESTING APL BEGINS ]]

-- Maintain Battle Shout Buff
RestingAPL:AddSpell(
    spells.battle_shout:CastableIf(function(self)
        return self:IsKnownAndUsable() and (not Player:GetAuras():FindMy(spells.battle_shout):IsUp() or Player:GetAuras():FindMy(spells.battle_shout):GetRemainingTime() < 120)
    end):SetTarget(None)
)

Module:Sync(function()
    if Player:IsMounted() then return end
    
    if Player:IsAffectingCombat() then
        if Target:Exists() and Player:IsFacing(Target) and not Player:IsCastingOrChanneling() then
            CombatAPL:Execute()
        end
    else
        RestingAPL:Execute()
    end
end)

Caffeine:Register(Module)