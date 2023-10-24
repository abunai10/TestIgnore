local Unlocker, Caffeine, Project = ...

-- This is only for retail
if Caffeine:IsClassic() then return end

local spec_index = GetSpecialization()
local spec_id = GetSpecializationInfo(spec_index)

-- Initial Spec (No spec)
if spec_id ~= 1446 then return end

local Module        = Caffeine.Module:New("mage")

Caffeine:Register(Module)