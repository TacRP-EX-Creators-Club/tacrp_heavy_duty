SWEP.Base = "tacrp_base"
SWEP.Spawnable = true

AddCSLuaFile()

// names and stuff
SWEP.PrintName = "Franchi SPAS-12"
SWEP.Category = "Tactical RP"

SWEP.SubCatTier = "1Elite"
SWEP.SubCatType = "5Shotgun"

SWEP.Description = "Imposing combat shotgun with dual mode operation. High power and stable recoil. Folding stock blocks the use of optics."
SWEP.Description_Quote = "\"Wrong.\""

SWEP.Trivia_Caliber = "12 Gauge"
SWEP.Trivia_Manufacturer = "Luigi Franchi S.p.A."
SWEP.Trivia_Year = "1979"

SWEP.Faction = TacRP.FACTION_NEUTRAL
SWEP.Credits = [[
Model & Textures: Stoke
Sounds: iFlip & speedonerd
Animations: Tactical Intervention, edited by speedonerd
]]

SWEP.ViewModel = "models/weapons/tacint_shark/v_spas12.mdl"
SWEP.WorldModel = "models/weapons/tacint_shark/w_spas12.mdl"

SWEP.Slot = 2
SWEP.SlotAlt = 3

SWEP.BalanceStats = {
    [TacRP.BALANCE_SBOX] = {
        Damage_Max = 16,
        Damage_Min = 7,
    },
    [TacRP.BALANCE_TTT] = {
        Damage_Max = 11,
        Damage_Min = 6,
        Range_Min = 300,
        Range_Max = 1400,

        BodyDamageMultipliers = {
            [HITGROUP_HEAD] = 1.5,
            [HITGROUP_CHEST] = 1,
            [HITGROUP_STOMACH] = 1,
            [HITGROUP_LEFTARM] = 1,
            [HITGROUP_RIGHTARM] = 1,
            [HITGROUP_LEFTLEG] = 0.75,
            [HITGROUP_RIGHTLEG] = 0.75,
            [HITGROUP_GEAR] = 0.9
        },
    },
    [TacRP.BALANCE_PVE] = {
        Damage_Max = 10,
        Damage_Min = 5,
        Range_Min = 300,
        Range_Max = 1200,
    },
}

SWEP.TTTReplace = TacRP.TTTReplacePreset.Shotgun

// "ballistics"

SWEP.Damage_Max = 16
SWEP.Damage_Min = 9
SWEP.Range_Min = 600 // distance for which to maintain maximum damage
SWEP.Range_Max = 1500 // distance at which we drop to minimum damage
SWEP.Penetration = 1 // units of metal this weapon can penetrate
SWEP.Num = 8
SWEP.ArmorPenetration = 0.6
SWEP.ArmorBonus = 0.5

SWEP.MuzzleVelocity = 13000

SWEP.BodyDamageMultipliers = {
    [HITGROUP_HEAD] = 1.25,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 1,
    [HITGROUP_RIGHTARM] = 1,
    [HITGROUP_LEFTLEG] = 0.9,
    [HITGROUP_RIGHTLEG] = 0.9,
    [HITGROUP_GEAR] = 0.9
}

// misc. shooting

SWEP.Firemode = 1

SWEP.RPM = 76

SWEP.Spread = 0.027
SWEP.ShotgunPelletSpread = 0.02

SWEP.ShootTimeMult = 0.85

SWEP.HipFireSpreadPenalty = 0.015
SWEP.MidAirSpreadPenalty = 0

SWEP.ScopedSpreadPenalty = 0

SWEP.RecoilPerShot = 1
SWEP.RecoilMaximum = 2
SWEP.RecoilResetTime = 0.15
SWEP.RecoilDissipationRate = 1.15
SWEP.RecoilFirstShotMult = 1.2

SWEP.RecoilVisualKick = 1.5
SWEP.RecoilKick = 12
SWEP.RecoilStability = 0.7

SWEP.RecoilSpreadPenalty = 0.015

SWEP.CanBlindFire = true

// handling

SWEP.MoveSpeedMult = 0.8
SWEP.ShootingSpeedMult = 0.7
SWEP.SightedSpeedMult = 0.5

SWEP.ReloadSpeedMult = 0.5

SWEP.AimDownSightsTime = 0.4
SWEP.SprintToFireTime = 0.5

SWEP.Sway = 0.75
SWEP.ScopedSway = 0.2

SWEP.FreeAimMaxAngle = 4

// hold types

SWEP.HoldType = "ar2"
SWEP.HoldTypeSprint = "passive"
SWEP.HoldTypeBlindFire = false
SWEP.HoldTypeNPC = "shotgun"

SWEP.GestureShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN
SWEP.GestureReload = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN

SWEP.PassiveAng = Angle(0, 0, 0)
SWEP.PassivePos = Vector(-0.85, -2.5, -5)

SWEP.BlindFireAng = Angle(0, -5, 5)
SWEP.BlindFirePos = Vector(4, -2, -4)

SWEP.SprintAng = Angle(30, -15, 0)
SWEP.SprintPos = Vector(5, 0, -4)

SWEP.SightAng = Angle(0, -0.25, 0)
SWEP.SightPos = Vector(-4.89, -7.5, -3.15)

SWEP.CorrectivePos = Vector(0.02, 0, 0.075)
SWEP.CorrectiveAng = Angle(0, 0, 0)

SWEP.HolsterVisible = true
SWEP.HolsterSlot = TacRP.HOLSTER_SLOT_BACK2
SWEP.HolsterPos = Vector(5, 0, -6)
SWEP.HolsterAng = Angle(0, 0, 0)

// reload

SWEP.ClipSize = 8
SWEP.Ammo = "buckshot"
SWEP.ShotgunReload = true
SWEP.ShotgunReloadCompleteStart = true

SWEP.ReloadTimeMult = 1.1

// sounds

local path = "TacRP/weapons/fp6/fp6_"
local path1 = "tacint_shark/spas/"

SWEP.Sound_Shoot = "^" .. path1 .. "fire_pump.wav"
SWEP.Sound_Shoot_Silenced = "TacRP/weapons/sg551/sg551_fire_silenced-1.wav"

SWEP.Vol_Shoot = 130
SWEP.ShootPitchVariance = 0 // amount to vary pitch by each shot

// effects

// the .qc attachment for the muzzle
SWEP.QCA_Muzzle = 1
SWEP.QCA_Eject = 2

SWEP.MuzzleEffect = "muzzleflash_shotgun"
SWEP.EjectEffect = 3
SWEP.EjectDelay = 0.5

// anims

SWEP.AnimationTranslationTable = {
    ["fire"] = {"shoot1", "shoot2"},
    ["blind_fire"] = {"blind_shoot1"},
    ["melee"] = {"melee1", "melee2"},
    ["reload"] = {"reload", "reload2"},
    ["jam"] = "reload_finish",
    ["deploy"] = "unholster"
}

SWEP.DeployTimeMult = 2

// attachments

SWEP.AttachmentElements = {
    ["foldstock"] = {
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
        PrintName = "Tactical",
        Category = {"tactical"},
        Bone = "ValveBiped.forearm",
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
        InstalledElements = {"tactical"},
        VMScale = 1.1,
        WMScale = 1.1,
        Pos_VM = Vector(1.2, -10, -0.5),
        Pos_WM = Vector(24, 1.75, -4.5),
        Ang_VM = Angle(-90, 90, -0),
        Ang_WM = Angle(0, 0, 90),
    },
    [2] = {
        PrintName = "Accessory",
        Category = {"acc_extmag_shotgun", "acc", "acc_sling", "acc_duffle", "acc_foldstock"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [3] = {
        PrintName = "Bolt",
        Category = {"bolt_manual", "bolt_spas"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [4] = {
        PrintName = "Trigger",
        Category = {"trigger_manual"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [5] = {
        PrintName = "Ammo",
        Category = {"ammo_shotgun"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [6] = {
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

addsound("tacint_spas12.Insertshell",
    {
        path .. "insertshell-1.wav",
        path .. "insertshell-2.wav",
        path .. "insertshell-3.wav",
    }
)
addsound("tacint_spas12.Movement", path1 .. "foley.wav")
addsound("tacint_spas12.PumpBack", path1 .. "pump.wav")
addsound("tacint_spas12.ReloadStart", path1 .. "foley.wav")
addsound("tacint_spas12.ReloadFinish", path1 .. "handle.wav")
addsound("tacint_spas12.deploy", path1 .. "draw.wav")