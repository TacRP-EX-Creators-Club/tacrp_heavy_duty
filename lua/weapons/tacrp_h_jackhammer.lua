SWEP.Base = "tacrp_base"
SWEP.Spawnable = true

AddCSLuaFile()

// names and stuff
SWEP.PrintName = "Pancor Jackhammer"
SWEP.Category = "Tactical RP"

SWEP.SubCatTier = "1Elite"
SWEP.SubCatType = "5Shotgun"

SWEP.Description = "One-of-one bulky automatic shotgun with a cylinder magazine. Quite heavy and a bit unreliable."
SWEP.Description_Quote = "\"Moo, I say!\""

SWEP.Trivia_Caliber = "12 Gauge"
SWEP.Trivia_Manufacturer = "Pancor Corporation"
SWEP.Trivia_Year = "1984"

SWEP.Faction = TacRP.FACTION_MILITIA
SWEP.Credits = [[
Model: Soldier11, edited by speedonerd (Front sight)
Textures: Millenia
Sounds: Vunsunta
Animations: Tactical Intervention, edited by speedonerd
]]

SWEP.ViewModel = "models/weapons/tacint_shark/v_jackhammer.mdl"
SWEP.WorldModel = "models/weapons/tacint_shark/w_jackhammer.mdl"

SWEP.Slot = 2

SWEP.BalanceStats = {
    [TacRP.BALANCE_SBOX] = {
        Damage_Max = 12,
        Damage_Min = 4,
        JamFactor = 0.05,
    },
    [TacRP.BALANCE_TTT] = {
        Damage_Max = 10,
        Damage_Min = 5,
        Range_Min = 300,
        Range_Max = 1000,

        JamFactor = 0.04,
        RPM = 200,
    },
    [TacRP.BALANCE_PVE] = {
        Damage_Max = 8,
        Damage_Min = 4,
        RPM = 200,
    },
}

SWEP.TTTReplace = TacRP.TTTReplacePreset.AssaultRifle

// "ballistics"

SWEP.Damage_Max = 12
SWEP.Damage_Min = 6
SWEP.Range_Min = 300
SWEP.Range_Max = 1200
SWEP.Penetration = 1
SWEP.ArmorPenetration = 0.4
SWEP.Num = 9

SWEP.BodyDamageMultipliers = {
    [HITGROUP_HEAD] = 2,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 0.8,
    [HITGROUP_RIGHTARM] = 0.8,
    [HITGROUP_LEFTLEG] = 0.75,
    [HITGROUP_RIGHTLEG] = 0.75,
    [HITGROUP_GEAR] = 0.8
}

SWEP.MuzzleVelocity = 9000

// misc. shooting

SWEP.Firemode = 2

SWEP.RPM = 240

SWEP.Spread = 0.05
SWEP.ShotgunPelletSpread = 0.035

SWEP.JamFactor = 0.025

SWEP.RecoilResetInstant = false
SWEP.RecoilPerShot = 2
SWEP.RecoilMaximum = 10
SWEP.RecoilResetTime = 0.1
SWEP.RecoilDissipationRate = 30
SWEP.RecoilFirstShotMult = 1 // multiplier for the first shot's recoil amount

SWEP.RecoilVisualKick = 2

SWEP.RecoilKick = 10
SWEP.RecoilStability = 0.2

SWEP.RecoilSpreadPenalty = 0.015
SWEP.HipFireSpreadPenalty = 0.025

SWEP.CanBlindFire = true

// handling

SWEP.MoveSpeedMult = 0.78
SWEP.ShootingSpeedMult = 0.5
SWEP.SightedSpeedMult = 0.5

SWEP.ReloadSpeedMult = 0.5

SWEP.AimDownSightsTime = 0.4
SWEP.SprintToFireTime = 0.55

SWEP.Sway = 1
SWEP.ScopedSway = 0.125

SWEP.FreeAimMaxAngle = 5

// hold types

SWEP.HoldType = "ar2"
SWEP.HoldTypeSprint = "passive"
SWEP.HoldTypeBlindFire = false

SWEP.GestureShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.GestureReload = ACT_HL2MP_GESTURE_RELOAD_SMG1

SWEP.PassiveAng = Angle(0, 0, -2)
SWEP.PassivePos = Vector(1, -4, -6)

SWEP.BlindFireAng = Angle(0, 5, 0)
SWEP.BlindFirePos = Vector(3, -2, -5)

SWEP.SprintAng = Angle(30, -15, 0)
SWEP.SprintPos = Vector(5, 0, -4)

SWEP.SightAng = Angle(-0.9, 0, 0)
SWEP.SightPos = Vector(-4.15, -5, -5.2)

SWEP.CorrectivePos = Vector(0.3, 2, -0.1)
SWEP.CorrectiveAng = Angle(0.5, -0.5, 0)

SWEP.CustomizeAng = Angle(30, 15, 0)
SWEP.CustomizePos = Vector(5, 0, -8)

SWEP.HolsterVisible = true
SWEP.HolsterSlot = TacRP.HOLSTER_SLOT_BACK
SWEP.HolsterPos = Vector(5, 4, -6)
SWEP.HolsterAng = Angle(0, 0, 0)

// reload

SWEP.ClipSize = 10
SWEP.Ammo = "buckshot"

SWEP.ReloadTimeMult = 1.6
SWEP.DropMagazineModel = "models/weapons/tacint_shark/magazines/jackhammer.mdl"
SWEP.DropMagazineImpact = "metal"

SWEP.ReloadUpInTime = 1.45
SWEP.DropMagazineTime = 0.8

// sounds

local path = "tacrp/weapons/aug/aug_"
local path1 = "tacint_shark/jackhammer/"

SWEP.Sound_Shoot = "^" .. path1 .. "XM1014-1.wav"
SWEP.Sound_Shoot_Silenced = path1 .. "m4a1-1.wav"

SWEP.Vol_Shoot = 115
SWEP.ShootPitchVariance = 2.5 // amount to vary pitch by each shot

// effects

// the .qc attachment for the muzzle
SWEP.QCA_Muzzle = 1
// ditto for shell
SWEP.QCA_Eject = 2

SWEP.MuzzleEffect = "muzzleflash_shotgun"
SWEP.EjectEffect = 0

// anims

SWEP.AnimationTranslationTable = {
    ["fire_iron"] = "fire1_M",
    ["fire1"] = "fire1_M",
    ["fire2"] = "fire2_M",
    ["fire3"] = "fire3_M",
    ["fire4"] = "fire3_M",
    ["fire5"] = "fire3_M",
    ["melee"] = {"melee1", "melee2"},
    ["deploy"] = "unholster"
}

SWEP.DeployTimeMult = 2.2

// attachments

SWEP.AttachmentElements = {
    ["rail"] = {
        BGs_VM = {
            {1, 1}
        },
        BGs_WM = {
            {1, 1}
        }
    },
}


SWEP.Attachments = {
    [1] = {
        PrintName = "Optic",
        Category = {"optic_cqb", "optic_medium"},
        Bone = "ValveBiped.AUG_rootbone",
        AttachSound = "tacrp/weapons/optic_on.wav",
        DetachSound = "tacrp/weapons/optic_off.wav",
        VMScale = 1,
        InstalledElements = {"rail"},
        Pos_VM = Vector(-8.3, -0.1, 4.25),
        Ang_VM = Angle(90, 0, -0.8),
        Pos_WM = Vector(6, 1.65, -8.75),
        Ang_WM = Angle(0, 0, 180),
    },
    [2] = {
        PrintName = "Tactical",
        Category = {"tactical"},
        Bone = "ValveBiped.AUG_rootbone",
        AttachSound = "tacrp/weapons/flashlight_on.wav",
        DetachSound = "tacrp/weapons/flashlight_off.wav",
        InstalledElements = {"tactical"},
        VMScale = 1.1,
        WMScale = 1.1,
        Pos_VM = Vector(-4, -0.8, 13),
        Ang_VM = Angle(90, 0, -90),
        Pos_WM = Vector(12, 2.5, -4.5),
        Ang_WM = Angle(0, 0, 90),
    },
    [3] = {
        PrintName = "Accessory",
        Category = {"acc", "acc_sling", "acc_duffle"},
        AttachSound = "tacrp/weapons/flashlight_on.wav",
        DetachSound = "tacrp/weapons/flashlight_off.wav",
    },
    [4] = {
        PrintName = "Bolt",
        Category = {"bolt_automatic"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [5] = {
        PrintName = "Trigger",
        Category = {"trigger_auto"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [6] = {
        PrintName = "Ammo",
        Category = {"ammo_shotgun"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [7] = {
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

addsound("tacint_jackhammer.insert_clip", path1 .. "magtap.mp3")
addsound("tacint_jackhammer.remove_clip", path1 .. "clipout.mp3")
addsound("tacint_jackhammer.Handle_FoldDown", path .. "handle_folddown.wav")
addsound("tacint_jackhammer.bolt_lockback", path1 .. "xm1014_boltforward.wav")
addsound("tacint_jackhammer.bolt_release", path1 .. "xm1014_boltback.wav")