SWEP.Base = "tacrp_base"
SWEP.Spawnable = true

AddCSLuaFile()

// names and stuff
SWEP.PrintName = "CheyTac M200"
SWEP.AbbrevName = "Intervention"
SWEP.Category = "Tactical RP"

SWEP.SubCatTier = "1Elite"
SWEP.SubCatType = "7Sniper Rifle"

SWEP.Description = "Futuristic in-between of a sniper rifle and an AMR. Excellent armor penetration and high muzzle velocity. \nEquipped with a 12x scope by default."
SWEP.Description_Quote = "\"Just like old times.\"" -- Modern Warfare 2 (2009)

SWEP.Trivia_Caliber = ".408 Cheyenne Tactical"
SWEP.Trivia_Manufacturer = "CheyTac USA"
SWEP.Trivia_Year = "2001"

SWEP.Faction = TacRP.FACTION_COALITION
SWEP.Credits = [[
Model: Syncing
Texture: Frizz925
Sounds: Seven-Zero & Ghost
Animation: Tactical Intervention
]]


SWEP.ViewModel = "models/weapons/tacint_shark/v_intervention.mdl"
SWEP.WorldModel = "models/weapons/tacint_shark/w_intervention.mdl"

SWEP.Slot = 2
SWEP.SlotAlt = 3

SWEP.BalanceStats = {
    [TacRP.BALANCE_SBOX] = {
        Damage_Max = 45,
        Damage_Min = 125,

        Range_Min = 1600,
        Range_Max = 4875,

        Sway = 2,
        ScopedSway = 0.1,

        RecoilKick = 12,
    },
    [TacRP.BALANCE_TTT] = {
        Damage_Max = 25,
        Damage_Min = 80,
        Range_Min = 1000,
        Range_Max = 4700,
        RPM = 25,
        ShootTimeMult = 1.325,
        ClipSize = 6,

        AimDownSightsTime = 0.45,

        RecoilResetTime = 0.4,

        BodyDamageMultipliers = {
            [HITGROUP_HEAD] = 5,
            [HITGROUP_CHEST] = 1.25,
            [HITGROUP_STOMACH] = 1,
            [HITGROUP_LEFTARM] = 0.75,
            [HITGROUP_RIGHTARM] = 0.75,
            [HITGROUP_LEFTLEG] = 0.5,
            [HITGROUP_RIGHTLEG] = 0.5,
            [HITGROUP_GEAR] = 0.5
        },
    },
    [TacRP.BALANCE_PVE] = {
        Description = "Magnum sniper rifle with decent handling and mobility.\nPowerful, but slow to fire and only lethal at long range.\nEquipped with a 12x scope by default.",

        Damage_Max = 25,
        Damage_Min = 75,
        Range_Min = 700,
        Range_Max = 3000,

        Sway = 2,
        ScopedSway = 0.075,
    },
    [TacRP.BALANCE_OLDSCHOOL] = {
        HipFireSpreadPenalty = 0.023,
    }
}

SWEP.TTTReplace = TacRP.TTTReplacePreset.SniperRifle

// "ballistics"

SWEP.Damage_Max = 125
SWEP.Damage_Min = 70
SWEP.Range_Min = 2000
SWEP.Range_Max = 5100
SWEP.Penetration = 35 // units of metal this weapon can penetrate
SWEP.ArmorPenetration = 0.95
SWEP.ArmorBonus = 4

SWEP.BodyDamageMultipliers = {
    [HITGROUP_HEAD] = 3,
    [HITGROUP_CHEST] = 1.15,
    [HITGROUP_STOMACH] = 1.05,
    [HITGROUP_LEFTARM] = 0.75,
    [HITGROUP_RIGHTARM] = 0.75,
    [HITGROUP_LEFTLEG] = 0.5,
    [HITGROUP_RIGHTLEG] = 0.5,
    [HITGROUP_GEAR] = 0.5
}

SWEP.MuzzleVelocity = 41000

// misc. shooting

SWEP.Firemode = 1

SWEP.FiremodeName = "Bolt-Action" // only used externally for firemode name distinction

SWEP.RPM = 27

SWEP.Spread = 0

SWEP.HipFireSpreadPenalty = 0.05
SWEP.PeekPenaltyFraction = 0.3

SWEP.RecoilPerShot = 1
SWEP.RecoilMaximum = 1
SWEP.RecoilResetTime = 0.35
SWEP.RecoilDissipationRate = 1
SWEP.RecoilFirstShotMult = 1 // multiplier for the first shot's recoil amount

SWEP.RecoilVisualKick = 6

SWEP.RecoilKick = 15

SWEP.RecoilSpreadPenalty = 0 // extra spread per one unit of recoil

SWEP.CanBlindFire = true

SWEP.ShootTimeMult = 1.3

// handling

SWEP.MoveSpeedMult = 0.72
SWEP.ShootingSpeedMult = 0.65
SWEP.SightedSpeedMult = 0.45

SWEP.ReloadSpeedMult = 0.3

SWEP.AimDownSightsTime = 0.4
SWEP.SprintToFireTime = 0.47

SWEP.Sway = 2.5
SWEP.ScopedSway = 0.2

SWEP.FreeAimMaxAngle = 9

SWEP.Bipod = true
SWEP.BipodRecoil = 0.2
SWEP.BipodKick = 0.25

// hold types

SWEP.HoldType = "ar2"
SWEP.HoldTypeSprint = "passive"
SWEP.HoldTypeBlindFire = false
SWEP.HoldTypeNPC = "shotgun"

SWEP.GestureShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_CROSSBOW
SWEP.GestureReload = ACT_HL2MP_GESTURE_RELOAD_AR2

SWEP.PassiveAng = Angle(0, 0, 0)
SWEP.PassivePos = Vector(2, -2, -5)

SWEP.BlindFireAng = Angle(-10, -15, -0)
SWEP.BlindFirePos = Vector(3, -2, -2)

SWEP.BlindFireSuicideAng = Angle(0, 115, 0)
SWEP.BlindFireSuicidePos = Vector(0, 32, -24)

SWEP.SprintAng = Angle(30, -15, 0)
SWEP.SprintPos = Vector(5, 0, -4)

SWEP.SightAng = Angle(0.45, 0.11, 0)
SWEP.SightPos = Vector(-3.732, -11, -3.75)

SWEP.CorrectivePos = Vector(-0.1, 0, 0.225)
SWEP.CorrectiveAng = Angle(-0.35, 0, 0)

SWEP.HolsterVisible = true
SWEP.HolsterSlot = TacRP.HOLSTER_SLOT_BACK2
SWEP.HolsterPos = Vector(5, 8, -6)
SWEP.HolsterAng = Angle(0, 0, 0)

// scope

SWEP.Scope = true
SWEP.ScopeOverlay = Material("tacrp/scopes/sniper.png", "mips smooth") // Material("path/to/overlay")
SWEP.ScopeFOV = 90 / 12
SWEP.ScopeLevels = 1 // 2 = like CS:S
SWEP.ScopeHideWeapon = true
SWEP.ScopeOverlaySize = 0.8

// reload

SWEP.ClipSize = 7
SWEP.Ammo = "357"
SWEP.Ammo_Expanded = "ti_sniper"

SWEP.ReloadTimeMult = 1.3
SWEP.DropMagazineImpact = "metal"
SWEP.DropMagazineModel = "models/weapons/tacint_shark/magazines/intervention.mdl"

SWEP.ReloadUpInTime = 1.75
SWEP.DropMagazineTime = 0.8

// sounds

local path = "TacRP/weapons/uratio/uratio_"
local path1 = "tacint_shark/intervention/awp"

SWEP.Sound_Shoot = "^" .. path1 .. "1.wav"
SWEP.Sound_Shoot_Silenced = path1 .. "_silenced.wav"

SWEP.Vol_Shoot = 130
SWEP.ShootPitchVariance = 2.5 // amount to vary pitch by each shot

// effects

// the .qc attachment for the muzzle
SWEP.QCA_Muzzle = 1
// ditto for shell
SWEP.QCA_Eject = 2

SWEP.MuzzleEffect = "muzzleflash_1"
SWEP.EjectEffect = 2
SWEP.EjectDelay = 0.9

// anims

SWEP.AnimationTranslationTable = {
    ["deploy"] = "unholster",
    ["fire"] = "shoot1",
    ["blind_fire"] = "blind_shoot1"
}

// attachments

SWEP.AttachmentElements = {
    ["foldstock"] = {
        BGs_VM = {
            {1, 1}
        },
        BGs_WM = {
            {1, 1}
        },
    },
    ["optic"] = {
        BGs_VM = {
            {2, 1}
        },
        BGs_WM = {
            {2, 1}
        },
    },
    ["irons"] = {
        BGs_VM = {
            {3, 1}
        },
    },
    ["bipod"] = {
        BGs_VM = {
            {4, 1}
        },
        BGs_WM = {
            {3, 1}
        },
    },
}

SWEP.Attachments = {
    [1] = {
        PrintName = "Optic",
        Category = {"ironsights_sniper", "optic_cqb", "optic_medium", "optic_sniper"},
        WMBone = "Box01",
        Bone = "ValveBiped.uratio_rootbone",
        AttachSound = "TacRP/weapons/optic_on.wav",
        DetachSound = "TacRP/weapons/optic_off.wav",
        InstalledElements = {"optic"},
        VMScale = 0.8,
        WMScale = 0.8,
        Pos_VM = Vector(-5.18, 0, 6),
        Ang_VM = Angle(90, 0, 0),
        Pos_WM = Vector(0, 6, 1),
        Ang_WM = Angle(0, -90, 0),
    },
    [2] = {
        PrintName = "Muzzle",
        Category = "silencer",
        WMBone = "Box01",
        Bone = "ValveBiped.uratio_rootbone",
        AttachSound = "TacRP/weapons/silencer_on.wav",
        DetachSound = "TacRP/weapons/silencer_off.wav",
        InstalledElements = {"muzzle"},
        Pos_VM = Vector(-3.7, 0, 38),
        Ang_VM = Angle(90, 0, 0),
        Pos_WM = Vector(-0.1, 42, -0.65),
        Ang_WM = Angle(0, -90, 0),
    },
    [3] = {
        PrintName = "Tactical",
        Category = {"tactical", "tactical_zoom", "tactical_ebullet"},
        WMBone = "Box01",
        Bone = "ValveBiped.uratio_rootbone",
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
        InstalledElements = {"tactical"},
        Pos_VM = Vector(-2.05, -0.1, 22.5),
        Ang_VM = Angle(90, 0, 180),
        Pos_WM = Vector(-0.2, 23.7, -2.4),
        Ang_WM = Angle(0, -90, 180),
    },
    [4] = {
        PrintName = "Accessory",
        Category = {"acc", "acc_foldstock", "acc_extmag_sniper", "acc_sling", "acc_duffle", "acc_bipod"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [5] = {
        PrintName = "Bolt",
        Category = {"bolt_manual"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [6] = {
        PrintName = "Trigger",
        Category = {"trigger_manual"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [7] = {
        PrintName = "Ammo",
        Category = {"ammo_amr", "m200_mlg"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [8] = {
        PrintName = "Perk",
        Category = {"perk", "perk_melee", "perk_shooting", "perk_reload"},
        AttachSound = "tacrp/weapons/flashlight_on.wav",
        DetachSound = "tacrp/weapons/flashlight_off.wav",
    },
}

local function addsound(name, spath)
    sound.Add({
        name = name,
        channel = 16,
        volume = 1.0,
        sound = spath
    })
end

addsound("tacint_intervention.Clip_Out", path1 .. "_clipout.wav")
addsound("tacint_intervention.Clip_In", path1 .. "_clipin.wav")
addsound("tacint_intervention.Bolt_Back", path1 .. "_bolt_back.wav")
addsound("tacint_intervention.bolt_forward", path1 .. "_bolt_forward.wav")