SWEP.Base = "tacrp_base"
SWEP.Spawnable = true

AddCSLuaFile()

// names and stuff
SWEP.PrintName = "HK HK21E"
SWEP.Category = "Tactical RP"

SWEP.SubCatTier = "1Elite"
SWEP.SubCatType = "5Machine Gun"

SWEP.Description = "Belt-fed machine gun variant of a classic battle rifle. Accurate and seriously powerful, but hard to use while on the move."
SWEP.Description_Quote = "\"Now I can solve up to 800 problems a minute!\""

SWEP.Trivia_Caliber = "7.62x51mm"
SWEP.Trivia_Manufacturer = "Heckler & Koch"
SWEP.Trivia_Year = "1961"

SWEP.Faction = TacRP.FACTION_COALITION
SWEP.Credits = [[
Model: Twinke Masta
Textures: NZ-Reason
Animations: Tactical Intervention, edited by Fesiug
Sounds: Treyarch, rzen1th
]]

SWEP.ViewModel = "models/weapons/tacint_shark/v_hk23e_beta10.mdl"
SWEP.WorldModel = "models/weapons/tacint_shark/w_hk23e_beta10.mdl"

SWEP.Slot = 2
SWEP.SlotAlt = 3

SWEP.BalanceStats = {
    [TacRP.BALANCE_SBOX] = {
        Damage_Max = 32,
        Damage_Min = 20,

        Spread = 0.009,

        RecoilKick = 10,

        ClipSize = 75,
    },
    [TacRP.BALANCE_TTT] = {

        Description = "Machine gun with high damage but very low mobility.",

        Damage_Max = 20,
        Damage_Min = 12,
        Range_Min = 750,
        Range_Max = 3000,
        ClipSize = 75,

        BodyDamageMultipliers = {
            [HITGROUP_HEAD] = 2,
            [HITGROUP_CHEST] = 1,
            [HITGROUP_STOMACH] = 1,
            [HITGROUP_LEFTARM] = 0.9,
            [HITGROUP_RIGHTARM] = 0.9,
            [HITGROUP_LEFTLEG] = 0.75,
            [HITGROUP_RIGHTLEG] = 0.75,
            [HITGROUP_GEAR] = 0.9
        },
    }
}

SWEP.TTTReplace = TacRP.TTTReplacePreset.MachineGun

SWEP.BodyDamageMultipliers = {
    [HITGROUP_HEAD] = 2.5,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 0.9,
    [HITGROUP_RIGHTARM] = 0.9,
    [HITGROUP_LEFTLEG] = 0.75,
    [HITGROUP_RIGHTLEG] = 0.75,
    [HITGROUP_GEAR] = 0.75
}

// "ballistics"

SWEP.Damage_Max = 35
SWEP.Damage_Min = 25
SWEP.Range_Min = 1500
SWEP.Range_Max = 4500
SWEP.Penetration = 10
SWEP.ArmorPenetration = 0.8

SWEP.MuzzleVelocity = 22200

// misc. shooting

SWEP.Firemodes = {2, -3, 1}
SWEP.RunawayBurst = true
SWEP.PostBurstDelay = 0.2

SWEP.RPM = 750
SWEP.RPMMultBurst = 900 / 750
SWEP.PostBurstDelay = 0.12

SWEP.Spread = 0.004

SWEP.ShootTimeMult = 0.5

SWEP.RecoilPerShot = 1
SWEP.RecoilMaximum = 28
SWEP.RecoilResetTime = 0.2
SWEP.RecoilDissipationRate = 33
SWEP.RecoilFirstShotMult = 0.5

SWEP.RecoilVisualKick = 1

SWEP.RecoilKick = 8
SWEP.RecoilStability = 0.25

SWEP.HipFireSpreadPenalty = 0.035
SWEP.MoveSpreadPenalty = 0.02
SWEP.RecoilSpreadPenalty = 0.00875
SWEP.PeekPenaltyFraction = 0.125

SWEP.CanBlindFire = true

// handling

SWEP.MoveSpeedMult = 0.8
SWEP.ShootingSpeedMult = 0.25
SWEP.SightedSpeedMult = 0.5

SWEP.ReloadSpeedMult = 0.1
SWEP.ReloadSpeedMultTime = 1

SWEP.AimDownSightsTime = 0.5
SWEP.SprintToFireTime = 0.55

SWEP.Sway = 2
SWEP.ScopedSway = 0.75

SWEP.FreeAimMaxAngle = 7

SWEP.Bipod = true
SWEP.BipodRecoil = 0.35
SWEP.BipodKick = 0.25

// hold types

SWEP.HoldType = "ar2"
SWEP.HoldTypeSprint = "passive"
SWEP.HoldTypeBlindFire = false

SWEP.GestureShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.GestureReload = ACT_HL2MP_GESTURE_RELOAD_SMG1

SWEP.PassiveAng = Angle(0, 0, 0)
SWEP.PassivePos = Vector(0, -4, -5)

SWEP.BlindFireAng = Angle(0, 5, 0)
SWEP.BlindFirePos = Vector(0, -4, -3)

SWEP.SprintAng = Angle(30, -15, 0)
SWEP.SprintPos = Vector(5, 0, -2)

SWEP.SightAng = Angle(0, 0, 0)
SWEP.SightPos = Vector(-4.48, -5.5, -3.55)

SWEP.CorrectivePos = Vector(0.025, 0, 0.125)
SWEP.CorrectiveAng = Angle(0, 0, 0)

SWEP.HolsterVisible = true
SWEP.HolsterSlot = TacRP.HOLSTER_SLOT_BACK2
SWEP.HolsterPos = Vector(5, 0, -6)
SWEP.HolsterAng = Angle(0, 0, 0)

// reload

SWEP.ClipSize = 100
SWEP.Ammo = "ar2"

SWEP.ReloadTimeMult = 1
SWEP.DropMagazineModel = "models/weapons/tacint_shark/magazines/hk23e.mdl"
SWEP.DropMagazineImpact = "metal"

SWEP.ReloadUpInTime = 5.5
SWEP.DropMagazineTime = 0.7

SWEP.BulletBodygroups = {
    [1] = {3, 0},
    [2] = {3, 1},
    [3] = {3, 2},
    [4] = {3, 3},
    [5] = {3, 4},
    [6] = {3, 5},
    [7] = {3, 6},
}
SWEP.DefaultBodygroups = "0007"

// sounds

local path = "TacRP/weapons/mg4/"
local path1 = "tacint_shark/hk23e/"

SWEP.Sound_Shoot = "^" .. "tacint_rz/weapons/hk21/" .. "fire.ogg"
SWEP.Sound_Shoot_Silenced = "TacRP/weapons/g36k/g36k_fire_silenced-1.wav"

SWEP.Vol_Shoot = 130
SWEP.ShootPitchVariance = 2.5 // amount to vary pitch by each shot

// effects

// the .qc attachment for the muzzle
SWEP.QCA_Muzzle = 1
// ditto for shell
SWEP.QCA_Eject = 2

SWEP.MuzzleEffect = "muzzleflash_minimi"
SWEP.EjectEffect = 2

// anims

SWEP.AnimationTranslationTable = {
    ["fire_iron"] = {"fire4_M", "fire3_M", "fire2_M", "fire1_M"},
    ["fire1"] = "fire1_L",
    ["fire2"] = "fire2_L",
    ["fire3"] = "fire3_L",
    ["fire4"] = "fire4_L",
    ["fire5"] = "fire5_L",
    ["melee"] = {"melee1", "melee2"}
}

// attachments

SWEP.AttachmentElements = {
    ["sights"] = {
        BGs_VM = {
            {2, 1}
        },
        BGs_WM = {
            {2, 1}
        },
    },
    ["bipod"] = {
        BGs_VM = {
            {1, 1}
        },
        BGs_WM = {
            {1, 1}
        },
    },
}

//ValveBiped.MG4_root

SWEP.NoRMR = true

SWEP.Attachments = {
    [1] = {
        PrintName = "Optic",
        Category = {"optic_cqb", "optic_medium", "optic_sniper"},
        Bone = "ValveBiped.MG4_root",
        InstalledElements = {"sights"},
        AttachSound = "TacRP/weapons/optic_on.wav",
        DetachSound = "TacRP/weapons/optic_off.wav",
        VMScale = 1.1,
        Pos_VM = Vector(-7.7, -0.07, 7.4),
        Ang_VM = Angle(90, 0, 0),
        Pos_WM = Vector(8, 1.15, -7),
        Ang_WM = Angle(0, 0, 180),
    },
    [2] = {
        PrintName = "Muzzle",
        Category = "silencer",
        Bone = "ValveBiped.MG4_root",
        AttachSound = "TacRP/weapons/silencer_on.wav",
        DetachSound = "TacRP/weapons/silencer_off.wav",
        Pos_VM = Vector(-5.2, 0, 33),
        Pos_WM = Vector(33, 1.2, -5.3),
        Ang_VM = Angle(90, 0, 0),
        Ang_WM = Angle(0, 0, 180),
    },
    [3] = {
        PrintName = "Tactical",
        Category = {"tactical", "tactical_zoom", "tactical_ebullet"},
        Bone = "ValveBiped.MG4_root",
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
        InstalledElements = {"tactical"},
        Pos_VM = Vector(-5.225, -1, 26),
        Pos_WM = Vector(21.5, 2, -5.25),
        Ang_VM = Angle(90, 0, -90),
        Ang_WM = Angle(0, 0, 90),
    },
    [4] = {
        PrintName = "Accessory",
        Category = {"acc", "extendedbelt", "acc_duffle", "acc_bipod", "acc_sling"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [8] = {
        PrintName = "Perk",
        Category = {"perk", "perk_melee", "perk_shooting", "perk_reload"},
        AttachSound = "tacrp/weapons/flashlight_on.wav",
        DetachSound = "tacrp/weapons/flashlight_off.wav",
    },
    [5] = {
        PrintName = "Bolt",
        Category = {"bolt_automatic"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [6] = {
        PrintName = "Trigger",
        Category = {"trigger_4pos"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [7] = {
        PrintName = "Ammo",
        Category = {"ammo_rifle"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    }
}

local function addsound(name, spath)
    sound.Add({
        name = name,
        channel = 16,
        volume = 1.0,
        sound = spath
    })
end

addsound("TacInt_hk23e.Clip_Out",           path1 .. "clipout.wav")
addsound("TacInt_hk23e.Clip_In",            path1 .. "clipin.wav")
addsound("TacInt_hk23e.bolt_release",       path1 .. "boltforward.ogg")
addsound("TacInt_hk23e.bolt_back",          path1 .. "boltback.ogg")
addsound("TacInt_hk23e.chainjiggy",         path1 .. "chainjiggy.ogg")
addsound("TacInt_hk23e.bolt_forward",       path1 .. "boltforward.ogg")
addsound("TacInt_hk23e.insertbullets",      path1 .. "belt.ogg")
addsound("TacInt_hk23e.deploy",             path .. "deploy-1.wav")