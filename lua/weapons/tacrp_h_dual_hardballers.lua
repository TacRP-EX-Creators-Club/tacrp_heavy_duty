SWEP.Base = "tacrp_base"
SWEP.Spawnable = true

AddCSLuaFile()

// names and stuff
SWEP.PrintName = "Dual Silverballers"
SWEP.Category = "Tactical RP"

SWEP.SubCatTier = "1Elite"
SWEP.SubCatType = "3Akimbo"

SWEP.Description = "A pair of sleek longslide pistols, a high profile choice for low profile assassins.\nGood range for akimbos - if you can hit anything, that is."
SWEP.Description_Quote = "\"I'll seek justice for myself. I'll choose the truth I like.\""

SWEP.Trivia_Caliber = ".45 ACP"
SWEP.Trivia_Manufacturer = "Arcadia Machine & Tool."
SWEP.Trivia_Year = "1980"

SWEP.Faction = TacRP.FACTION_NEUTRAL
SWEP.Credits = [[
Assets: Terminator: Resistance (port by Sirgibsalot)
Sounds: Navaro
Animation: Tactical Intervention, Fesiug
]]


SWEP.ViewModel = "models/weapons/tacint_shark/v_dual_hardballers.mdl"
SWEP.WorldModel = "models/weapons/tacint_shark/w_dual_hardballers.mdl"

SWEP.Slot = 1

SWEP.BalanceStats = {
    [TacRP.BALANCE_SBOX] = {
        Damage_Max = 38,
        RPM = 280,
    },
    [TacRP.BALANCE_TTT] = {
        Damage_Max = 35,
        Damage_Min = 25,
        Range_Min = 200,
        Range_Max = 1700,
        RPM = 280,

        BodyDamageMultipliers = {
            [HITGROUP_HEAD] = 2.5,
            [HITGROUP_CHEST] = 1,
            [HITGROUP_STOMACH] = 1,
            [HITGROUP_LEFTARM] = 0.9,
            [HITGROUP_RIGHTARM] = 0.9,
            [HITGROUP_LEFTLEG] = 0.75,
            [HITGROUP_RIGHTLEG] = 0.75,
            [HITGROUP_GEAR] = 0.9
        },

        ReloadTimeMult = 1.25 * 0.85,
    },
    [TacRP.BALANCE_PVE] = {
        Damage_Max = 22,
        Damage_Min = 11,

        Spread = 0.008,
        RecoilKick = 6,
    },
}

SWEP.TTTReplace = {["weapon_zm_pistol"] = 0.5, ["weapon_ttt_glock"] = 0.5}

// "ballistics"

SWEP.Damage_Max = 40
SWEP.Damage_Min = 20
SWEP.Range_Min = 500
SWEP.Range_Max = 2400
SWEP.Penetration = 6
SWEP.ArmorPenetration = 0.65
SWEP.ArmorBonus = 0.5

SWEP.MuzzleVelocity = 12000

SWEP.BodyDamageMultipliers = {
    [HITGROUP_HEAD] = 4,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1.25,
    [HITGROUP_LEFTARM] = 1,
    [HITGROUP_RIGHTARM] = 1,
    [HITGROUP_LEFTLEG] = 0.75,
    [HITGROUP_RIGHTLEG] = 0.75,
    [HITGROUP_GEAR] = 0.9
}

// misc. shooting

SWEP.Firemodes = {1, 2}

SWEP.RPM = 330
SWEP.RPMMultSemi = 1.1

SWEP.Spread = 0.01

SWEP.MoveSpreadPenalty = 0
SWEP.MidAirSpreadPenalty = 0.075
SWEP.HipFireSpreadPenalty = 0

SWEP.RecoilResetInstant = true
SWEP.RecoilPerShot = 1
SWEP.RecoilMaximum = 5
SWEP.RecoilResetTime = 0.12
SWEP.RecoilDissipationRate = 12
SWEP.RecoilFirstShotMult = 1

SWEP.RecoilVisualKick = 2.5
SWEP.RecoilKick = 9
SWEP.RecoilStability = 0.25

SWEP.RecoilSpreadPenalty = 0.0055

SWEP.Sway = 0.5

SWEP.CanBlindFire = false
SWEP.CanSuicide = true

SWEP.ShootTimeMult = 0.6

// handling

SWEP.MoveSpeedMult = 0.95
SWEP.ShootingSpeedMult = 0.85
SWEP.SightedSpeedMult = 1

SWEP.ReloadSpeedMult = 0.6

SWEP.AimDownSightsTime = 0.25
SWEP.SprintToFireTime = 0.25

// hold types

SWEP.HoldType = "duel"
SWEP.HoldTypeSprint = "normal"
SWEP.HoldTypeBlindFire = false
SWEP.HoldTypeSuicide = "duel"

SWEP.GestureShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_DUEL
SWEP.GestureReload = ACT_HL2MP_GESTURE_RELOAD_DUEL

SWEP.PassiveAng = Angle(5, 0, -2)
SWEP.PassivePos = Vector(3, 0, -6)

SWEP.CustomizeAng = Angle(0, 35, 0)
SWEP.CustomizePos = Vector(1, 0, -12)

SWEP.BlindFireAng = Angle(0, 0, 0)
SWEP.BlindFirePos = Vector(0, 0, 0)

SWEP.BlindFireSuicideAng = Angle(0, 130, 0)
SWEP.BlindFireSuicidePos = Vector(1, 22, -15)

SWEP.SprintAng = Angle(0, 30, 0)
SWEP.SprintPos = Vector(1, 0, -12)

SWEP.HolsterVisible = true
SWEP.HolsterSlot = TacRP.HOLSTER_SLOT_PISTOL
SWEP.HolsterPos = Vector(0, 3, -4)
SWEP.HolsterAng = Angle(60, 5, 0)

// reload

SWEP.ClipSize = 14
SWEP.Ammo = "pistol"

SWEP.ReloadTimeMult = 0.85

SWEP.DropMagazineModel = "models/weapons/tacint_shark/magazines/hardballer.mdl"
SWEP.DropMagazineImpact = "pistol"
SWEP.DropMagazineAmount = 2

SWEP.ReloadUpInTime = 2.8
SWEP.DropMagazineTime = 0.25

// sounds

local path = "TacRP/weapons/gsr1911/gsr1911_"
local path1 = "Tacint_shark/hardballer/"

SWEP.Sound_Shoot = "^" .. path1 .. "hardballer_fire.wav"
SWEP.Sound_Shoot_Silenced = path1 .. "shots.wav"

SWEP.Vol_Shoot = 110
SWEP.ShootPitchVariance = 2.5 // amount to vary pitch by each shot

// effects

// the .qc attachment for the muzzle
SWEP.QCA_Muzzle = 4

SWEP.WM_QCA_MuzzleL = 1
SWEP.WM_QCA_MuzzleR = 2
SWEP.WM_QCA_EjectL = 3
SWEP.WM_QCA_EjectR = 4

SWEP.MuzzleEffect = "muzzleflash_pistol"

// anims

SWEP.AnimationTranslationTable = {
    ["deploy"] = "draw",
    ["blind_idle"] = "idle",
    ["blind_fire"] = "idle",
    ["melee"] = {"melee1", "melee2"},
    ["shoot_left"] = {"shoot_left-1", "shoot_left-2"},
    ["shoot_right"] = {"shoot_right-1", "shoot_right-2"}
}

SWEP.LastShot = true
SWEP.Akimbo = true
SWEP.EffectsAlternate = true

// attachments

SWEP.Attachments = {
    [1] = {
        PrintName = "Tactical",
        Category = {"tactical"},
        Bone = "ValveBiped.mtx_root2",
        WMBone = "Box01",
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
        VMScale = 0.9,
        WMScale = 1,
        Pos_VM = Vector(-2, -0.2, 5.45),
        Ang_VM = Angle(90, 0, 180),
        Pos_WM = Vector(-0.1, 8, -1.7),
        Ang_WM = Angle(0, -90, 180),
    },
    [2] = {
        PrintName = "Accessory",
        Category = {"acc_dual", "acc_extmag_dual2"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [5] = {
        PrintName = "Perk",
        Category = {"perk", "perk_melee", "perk_shooting", "perk_reload"},
        AttachSound = "tacrp/weapons/flashlight_on.wav",
        DetachSound = "tacrp/weapons/flashlight_off.wav",
    },
    [3] = {
        PrintName = "Trigger",
        Category = {"trigger_akimbo"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [4] = {
        PrintName = "Ammo",
        Category = {"ammo_pistol"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    }
}

SWEP.AttachmentCapacity = 30 // amount of "Capacity" this gun can accept

local function addsound(name, spath)
    sound.Add({
        name = name,
        channel = 16,
        volume = 1.0,
        sound = spath
    })
end

addsound("tacint_dualhardballer.clip_in_left", path1 .. "dualclipin.ogg")
addsound("tacint_dualhardballer.clip_in_right", path1 .. "clipin.wav")
addsound("tacint_dualhardballer.clip_out", path1 .. "clipout.wav")
addsound("tacint_dualhardballer.clipsmack", path1 .. "dualsmack.ogg")
addsound("tacint_dualhardballer.slide_shut", path1 .. "dualshut.ogg")
addsound("tacint_dualhardballer.Slide_Back", path1 .. "SlideBack.wav")
addsound("tacint_dualhardballer.slide_release", path1 .. "sliderelease.wav")


SWEP.Scope = false

SWEP.FreeAim = false