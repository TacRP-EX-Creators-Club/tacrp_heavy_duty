SWEP.Base = "tacrp_base"
SWEP.Spawnable = true

AddCSLuaFile()

// names and stuff
SWEP.PrintName = "H&H Double Rifle"
SWEP.Category = "Tactical RP"

SWEP.SubCatTier = "2Operator"
SWEP.SubCatType = "5Sporter"

SWEP.Description = "Boutique double-barreled big-game hunting rifle, firing a round designed to fell elephants. Despite its looks, it is not a shotgun."
SWEP.Description_Quote = "\"Life is a great adventure, accept it in such a spirit.\""

SWEP.Trivia_Caliber = ".600 Nitro Express"
SWEP.Trivia_Manufacturer = "Holland & Holland"
SWEP.Trivia_Year = "1988"

SWEP.Faction = TacRP.FACTION_NEUTRAL
SWEP.Credits = [[
Assets: Far Cry 4 (Originally ported by Robotnik)
Additional Sounds: speedonerd
Animations: 8Z, speedonerd
]]
SWEP.ViewModel = "models/weapons/tacint_shark/v_nitrorifle.mdl"
SWEP.WorldModel = "models/weapons/tacint_shark/w_nitrorifle.mdl"

SWEP.Slot = 2

SWEP.BalanceStats = {
    [TacRP.BALANCE_SBOX] = {
    },
    [TacRP.BALANCE_TTT] = {
        Damage_Max = 65,
        Damage_Min = 50,
        Range_Min = 800,
        Range_Max = 2000,

        BodyDamageMultipliers = {
            [HITGROUP_HEAD] = 3,
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
        Damage_Max = 55,
        Damage_Min = 35,

        BodyDamageMultipliers = {
            [HITGROUP_HEAD] = 3,
            [HITGROUP_CHEST] = 1,
            [HITGROUP_STOMACH] = 1,
            [HITGROUP_LEFTARM] = 1,
            [HITGROUP_RIGHTARM] = 1,
            [HITGROUP_LEFTLEG] = 0.75,
            [HITGROUP_RIGHTLEG] = 0.75,
            [HITGROUP_GEAR] = 0.9
        },
    },
}

SWEP.TTTReplace = TacRP.TTTReplacePreset.SniperRifle

// "ballistics"

SWEP.Damage_Max = 80
SWEP.Damage_Min = 42
SWEP.Range_Min = 800
SWEP.Range_Max = 5000
SWEP.Penetration = 18
SWEP.ArmorPenetration = 0.625
SWEP.ArmorBonus = 5

SWEP.MuzzleVelocity = 10000

SWEP.BodyDamageMultipliers = {
    [HITGROUP_HEAD] = 5,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1.25,
    [HITGROUP_LEFTARM] = 0.9,
    [HITGROUP_RIGHTARM] = 0.9,
    [HITGROUP_LEFTLEG] = 0.75,
    [HITGROUP_RIGHTLEG] = 0.75,
    [HITGROUP_GEAR] = 0.9
}


// misc. shooting

SWEP.Firemode = 1

SWEP.RPM = 120

SWEP.Spread = 0.004

SWEP.HipFireSpreadPenalty = 0.05

SWEP.ShootTimeMult = 0.75

SWEP.RecoilPerShot = 1
SWEP.RecoilMaximum = 2
SWEP.RecoilResetTime = 0.25
SWEP.RecoilDissipationRate = 2
SWEP.RecoilFirstShotMult = 1

SWEP.RecoilVisualKick = 6
SWEP.RecoilKick = 15
SWEP.RecoilAltMultiplier = 200

SWEP.RecoilSpreadPenalty = 0.075

SWEP.CanBlindFire = true

// handling

SWEP.MoveSpeedMult = 0.775
SWEP.ShootingSpeedMult = 0.6
SWEP.SightedSpeedMult = 0.5

SWEP.ReloadSpeedMult = 0.5

SWEP.AimDownSightsTime = 0.45
SWEP.SprintToFireTime = 0.5

SWEP.Sway = 1.25
SWEP.ScopedSway = 0.3

SWEP.FreeAimMaxAngle = 3

// hold types

SWEP.HoldType = "shotgun"
SWEP.HoldTypeSprint = "passive"
SWEP.HoldTypeBlindFire = "pistol"

SWEP.GestureShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN
SWEP.GestureReload = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN

SWEP.PassiveAng = Angle(0, 0, 0)
SWEP.PassivePos = Vector(1.5, -1, -0.5)

SWEP.BlindFireAng = Angle(0, 0, 0)
SWEP.BlindFirePos = Vector(2, 2, -1)

SWEP.BlindFireSuicideAng = Angle(0, 120, 20)
SWEP.BlindFireSuicidePos = Vector(-7, 32, -37)

SWEP.SprintAng = Angle(45, -10, 0)
SWEP.SprintPos = Vector(6, 0, 0)

SWEP.SightAng = Angle(0, 0.3, 0)
SWEP.SightPos = Vector(-3.15, 0, 1.6)

SWEP.CorrectiveAng = Angle(-0.2, 0, 0.5)
SWEP.CorrectivePos = Vector(-0.025, 0, 0.15)

SWEP.CustomizeAng = Angle(30, 15, 0)
SWEP.CustomizePos = Vector(5, 0, -2)

SWEP.HolsterVisible = true
SWEP.HolsterSlot = TacRP.HOLSTER_SLOT_BACK2
SWEP.HolsterPos = Vector(5, 0, -6)
SWEP.HolsterAng = Angle(0, 0, 0)


// reload

SWEP.ClipSize = 2
SWEP.Ammo = "357"

SWEP.ReloadUpInTime = 1.8

SWEP.ReloadTimeMult = 1.4

// sounds

local path = "tacint_shark/nitrorifle/"

SWEP.Sound_Shoot = "^" .. path .. "fire_new.wav"

SWEP.Vol_Shoot = 125
SWEP.ShootPitchVariance = 2.5 // amount to vary pitch by each shot

// effects

// the .qc attachment for the muzzle
SWEP.QCA_Muzzle = 1

SWEP.MuzzleEffect = "muzzleflash_shotgun"

// anims
// VM:
// idle
// fire
// fire1, fire2
// dryfire
// melee
// reload
// midreload
// prime_grenade
// throw_grenade
// throw_grenade_underhand
// deploy
// blind_idle
// blind_fire
// blind_fire1, blind_fire2...
// blind_dryfire

// WM:
// attack1
SWEP.AnimationTranslationTable = {
    ["deploy"] = "draw",
    ["fire_iron"] = "fire_iron",
    ["fire"] = "fire",
    ["blind_fire"] = {"blind_fire1", "blind_fire2"},
    ["melee"] = "melee1",
}

SWEP.DeployTimeMult = 1

SWEP.LastShot = false

// attachments

SWEP.AttachmentElements = {
    ["optic"] = {
        BGs_VM = {
            {1, 1}
        },
        BGs_WM = {
            {1, 1}
        },
    },
}

SWEP.Attachments = {
    [1] = {
        PrintName = "Optic",
        Category = {"optic_cqb", "optic_medium", "optic_sniper"},
        Bone = "db_barrels",
        WMBone = "Box01",
        AttachSound = "TacRP/weapons/optic_on.wav",
        DetachSound = "TacRP/weapons/optic_off.wav",
        InstalledElements = {"optic"},
        VMScale = 1,
        WMScale = 1,
        Pos_VM = Vector(0, -3.1, 2),
        Pos_WM = Vector(10, 1.3, 1.55),
        Ang_VM = Angle(90, 0, -90),
        Ang_WM = Angle(0, 0, -90),
    },
    [2] = {
        PrintName = "Tactical",
        Category = "tactical",
        Bone = "db_barrels",
        WMBone = "Box01",
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
        VMScale = 1.1,
        WMScale = 1.25,
        Pos_VM = Vector(0, -1.15, 18.5),
        Pos_WM = Vector(25, 3, 1.6),
        Ang_VM = Angle(90, 0, 90),
        Ang_WM = Angle(0, 0, 90),
    },
    [3] = {
        PrintName = "Accessory",
        Category = {"acc", "acc_sling"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [4] = {
        PrintName = "Ammo",
        Category = {"ammo_amr"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [5] = {
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

local function addshellsound(name, spath)
    sound.Add({
        name = name,
        channel = 15,
        volume = 0.9,
        sound = spath
    })
end

addsound("tacint_nitrorifle.open", path .. "open.wav")
addsound("tacint_nitrorifle.close", path .. "close.wav")
addsound("tacint_nitrorifle.magout", path .. "eject.ogg")
addsound("tacint_nitrorifle.magin", path .. "insert.wav")
addsound("tacint_nitrorifle.deploy", path .. "deploy.wav")
addsound("tacint_nitrorifle.holster", path .. "holster.wav")
addshellsound("tacint_nitrorifle.shells", path .. "shells.wav")