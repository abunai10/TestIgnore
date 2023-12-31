local Unlocker, Caffeine, Project = ...

local SpellBook = Caffeine.Globals.SpellBook

print("I'm in the real spellbook!")

Project.Spells = {
    -- General
    avatar                   = SpellBook:GetSpell(107574),
    battle_shout             = SpellBook:GetSpell(6673),
    battle_stance            = SpellBook:GetSpell(386164),
    berserker_rage           = SpellBook:GetSpell(18499),
    berserker_shout          = SpellBook:GetSpell(384100),
    bitter_immunity          = SpellBook:GetSpell(383762),
    charge                   = SpellBook:GetSpell(100),
    defensive_stance         = SpellBook:GetSpell(386208),
    disarm                   = SpellBook:GetSpell(236077),
    execute                  = SpellBook:GetSpell(163201),
    hamstring                = SpellBook:GetSpell(1715),
    heroic_leap              = SpellBook:GetSpell(6544),
    heroic_throw             = SpellBook:GetSpell(57755),
    ignore_pain              = SpellBook:GetSpell(190456),
    impending_victory        = SpellBook:GetSpell(202168),
    intervene                = SpellBook:GetSpell(3411),
    piercing_howl            = SpellBook:GetSpell(12323),
    pummel                   = SpellBook:GetSpell(6552),
    rallying_cry             = SpellBook:GetSpell(97462),
    ravager                  = SpellBook:GetSpell(228920),
    rend                     = SpellBook:GetSpell(772),
    shattering_throw         = SpellBook:GetSpell(64382),
    shockwave                = SpellBook:GetSpell(46968),
    slam                     = SpellBook:GetSpell(1464),
    storm_bolt               = SpellBook:GetSpell(107570),
    taunt                    = SpellBook:GetSpell(355),
    thunder_clap             = SpellBook:GetSpell(6343),
    thunderous_roar          = SpellBook:GetSpell(384318),
    titanic_throw            = SpellBook:GetSpell(384090),
    victory_rush             = SpellBook:GetSpell(34428),
    whirlwind                = SpellBook:GetSpell(190411),
    wrecking_throw           = SpellBook:GetSpell(384110),

    
    -- Fury
    berserker_stance         = SpellBook:GetSpell(386196),
    bloodbath                = SpellBook:GetSpell(335096),
    bloodrage                = SpellBook:GetSpell(329038),
    bloodthirst              = SpellBook:GetSpell(23881),
    crushing_blow            = SpellBook:GetSpell(335097),
    death_wish               = SpellBook:GetSpell(199261),
    enraged_regeneration     = SpellBook:GetSpell(184364),
    odyns_fury               = SpellBook:GetSpell(385059),
    onslaught                = SpellBook:GetSpell(315720),
    raging_blow              = SpellBook:GetSpell(85288),
    rampage                  = SpellBook:GetSpell(184367),
    recklessness             = SpellBook:GetSpell(1719),

    -- Arms
    bladestorm               = SpellBook:GetSpell(389774),
    cleave                   = SpellBook:GetSpell(845),
    colossus_smash           = SpellBook:GetSpell(167105),
    die_by_the_sword         = SpellBook:GetSpell(118038),
    duel                     = SpellBook:GetSpell(236273),
    mortal_strike            = SpellBook:GetSpell(12294),
    overpower                = SpellBook:GetSpell(7384),
    sharpen_blade            = SpellBook:GetSpell(198817),
    skullsplitter            = SpellBook:GetSpell(260643),
    spear_of_bastion         = SpellBook:GetSpell(376079),
    spell_reflection         = SpellBook:GetSpell(23920),
    sweeping_strikes         = SpellBook:GetSpell(260708),
    war_banner               = SpellBook:GetSpell(236320),
    warbreaker               = SpellBook:GetSpell(262161),

    -- Protection
    bodyguard                = SpellBook:GetSpell(213871),
    challenging_shout        = SpellBook:GetSpell(1161),
    demoralizing_shout       = SpellBook:GetSpell(1160),
    devastate                = SpellBook:GetSpell(20243),
    disrupting_shout         = SpellBook:GetSpell(386071),
    dragon_charge            = SpellBook:GetSpell(206572),
    intimidating_shout       = SpellBook:GetSpell(316593),
    last_stand               = SpellBook:GetSpell(12975),
    oppressor                = SpellBook:GetSpell(205800),
    revenge                  = SpellBook:GetSpell(6572),
    shield_bash              = SpellBook:GetSpell(198912),
    shield_block             = SpellBook:GetSpell(2565),
    shield_charge            = SpellBook:GetSpell(385952),
    shield_slam              = SpellBook:GetSpell(23922),
    shield_wall              = SpellBook:GetSpell(871),
    spell_block              = SpellBook:GetSpell(392966),

    -- Auras
    cadence_of_fujieda       = SpellBook:GetSpell(335558),
    exploiter                = SpellBook:GetSpell(335452),
    colossus_smash_aura      = SpellBook:GetSpell(208086),
    sudden_death             = SpellBook:GetSpell(52437),
    enrage_buff              = SpellBook:GetSpell(184362),
    whirlwind_buff           = SpellBook:GetSpell(85739),
}