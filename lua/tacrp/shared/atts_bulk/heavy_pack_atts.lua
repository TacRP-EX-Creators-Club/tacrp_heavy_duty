local ATT

--SPAS Semi Mode
ATT = {}

ATT.PrintName = "Semi"
ATT.FullName = "Semi-Auto"
ATT.Icon = Material("entities/tacrp_att_bolt_light.png", "mips smooth")
ATT.Description = "Switch to semi-auto operation, sacrficing stopping power for fire rate."
ATT.Pros = {"stat.rpm"}
ATT.Cons = {"stat.damage_max", "stat.spread", "stat.muzzlevelocity"}
ATT.Ignore = false

ATT.Category = "bolt_spas"

ATT.SortOrder = 0

ATT.Mult_RPM = 2
ATT.Mult_ShootTimeMult = 1

ATT.Mult_MuzzleVelocity = 0.75
ATT.Add_Damage_Max = -2
ATT.Mult_Spread = 1.4

ATT.Override_EjectDelay = 0
ATT.Override_Sound_Shoot = "^tacint_shark/spas/fire_semi.wav"

ATT.Hook_TranslateSequence = function(self, seq)
    if seq == "fire" then
        return {"shoot_semi1", "shoot_semi2"}
    elseif seq == "blind_fire" then
        return {"blind_shoot_semi"}
    end
end

ATT.Free = true

TacRP.LoadAtt(ATT, "trigger_spas_semi")


--SPAS HL2 Altfire
ATT = {}

ATT.PrintName = "2 Shot"
ATT.FullName = "Double Shot"
ATT.Icon = Material("entities/tacrp_att_trigger_burst.png", "mips smooth")
ATT.Description = "Alternate mehcanism that can fire two shots at once, somehow..."
ATT.Pros = {"Twice the fun"}
ATT.Cons = {"stat.recoil", "rating.control"}
ATT.Ignore = true

ATT.Category = {"trigger_spas"}

ATT.SortOrder = 1

ATT.Mult_ShootTimeMult = 1.25

ATT.Add_PostBurstDelay = 1.2
ATT.Add_RPMMultBurst = 25
ATT.Override_Firemodes = {-2, 1}
ATT.Override_RunawayBurst = true

ATT.Mult_RecoilSpreadPenalty = 1.1
ATT.Mult_RecoilVisualKick = 1.2
ATT.Mult_RecoilKick = 1.25

ATT.Mult_RecoilStability = 0.8

TacRP.LoadAtt(ATT, "trigger_spas_freeman")


--intervention mlg sound
ATT = {}

ATT.PrintName = "mlg"
ATT.FullName = "mlg quickscoper sound"

ATT.Icon = Material("entities/mlg_logo.png", "mips smooth")
ATT.Description = "this one's going in the montage."
ATT.Pros = {"fucking awesome"}

ATT.Category = "m200_mlg"

ATT.Override_Sound_Shoot = "^tacint_shark/intervention/fire_mlg.wav"

TacRP.LoadAtt(ATT, "sound_m200_mlg")


--Hardballer Laser
ATT = {}

ATT.PrintName = "Laser"
ATT.FullName = "Hardballer Surefire Laser Scope"
ATT.Icon = Material("entities/att_hardballer_laser.png", "mips smooth")
ATT.Description = "Primitive bulky laser module that makes aiming almost unnecessary."
ATT.Pros = {"att.procon.laser", "rating.maneuvering"}
ATT.Cons = {"att.procon.visible", "rating.handling", "stat.scopedsway"}

-- ATT.Model = "models/weapons/tacint/addons/laser_mounted.mdl"
-- ATT.Scale = 1

ATT.Category = "hardballer_laser"

ATT.SortOrder = 1

ATT.Laser = true
ATT.CanToggle = true
ATT.LaserQCAttachmentVM = 5
ATT.LaserQCAttachmentWM = 1

ATT.Mult_HipFireSpreadPenalty = 0.75
ATT.Mult_AimDownSightsTime = 1.25
ATT.Mult_SprintToFireTime = 1.25
ATT.Mult_ScopedSway = 1.5
ATT.Add_FreeAimMaxAngle = -2

ATT.TacticalName = "Laser"

ATT.InstalledElements = {"lazur"}

TacRP.LoadAtt(ATT, "hardballer_laser")


-- SMAW Tri
ATT = {}

ATT.PrintName = "Tri-Attack"
ATT.FullName = "SMAW Tri-Attack Rocket Pod"
ATT.Icon = Material("entities/tacrp_att_smaw_tri.png", "mips smooth")
ATT.Description = "A trio of fast and maneuverable anti-infantry missiles."
ATT.Pros = {"att.procon.3proj", "att.procon.rocket.speed", "att.procon.rocket.steer"}
ATT.Cons = {"stat.spread", "att.procon.armdelay", "att.procon.rocket.payload"}

ATT.Category = "ammo_smaw"

ATT.SortOrder = 1

ATT.Override_Damage_Max = 90
ATT.Override_Damage_Min = 90

ATT.Override_Num = 3
ATT.Override_ShootEnt = "tacrp_proj_smaw_tri"

ATT.Mult_ShootEntForce = 2

ATT.Override_Spread = 0.25

ATT.Override_MidAirSpreadPenalty = 0
ATT.Override_HipFireSpreadPenalty = 0

TacRP.LoadAtt(ATT, "ammo_smaw_tri")

-- SMAW Nikita
ATT = {}

ATT.PrintName = "Nikita"
ATT.FullName = "SMAW Nikita Rocket Pod"
ATT.Icon = Material("entities/tacrp_att_smaw_nikita.png", "mips smooth")
ATT.Description = "A very slow manually controllable rocket."
ATT.Pros = {"att.procon.rocket.nikita", "att.procon.rocket.steer"}
ATT.Cons = {"att.procon.rocket.speed", "att.procon.armdelay"}

ATT.Category = "ammo_smaw"

ATT.SortOrder = 1

ATT.Override_ShootEnt = "tacrp_proj_smaw_nikita"

ATT.Mult_ShootEntForce = 0.15

TacRP.LoadAtt(ATT, "ammo_smaw_nikita")

-- SMAW Tandem
ATT = {}

ATT.PrintName = "Tandem"
ATT.FullName = "SMAW Tandem Rocket Pod"
ATT.Icon = Material("entities/tacrp_att_smaw_tandem.png", "mips smooth")
ATT.Description = "A powerful anti-tank rocket that takes time to accelerate."
ATT.Pros = {"att.procon.rocket.impact", "att.procon.rocket.speed"}
ATT.Cons = {"att.procon.rocket.payload", "att.procon.rocket.steer", "stat.muzzlevelocity"}

ATT.Category = "ammo_smaw"

ATT.SortOrder = 1

ATT.Override_ShootEnt = "tacrp_proj_smaw_tandem"

TacRP.LoadAtt(ATT, "ammo_smaw_tandem")

-- 25mm Stunstorm
ATT = {}

ATT.PrintName = "Stunstorm"
ATT.FullName = "40mm Stunstorm Grenades"
ATT.Icon = Material("entities/tacrp_att_ammo_40mm_concussion.png", "mips smooth")
ATT.Description = "Grenades that briefly incapacitate the target."
ATT.Pros = {"att.procon.flash"}
ATT.Cons = {"stat.rpm", "stat.damage", "stat.muzzlevelocity"}

ATT.Category = "ammo_25mm"

ATT.SortOrder = 1

ATT.Mult_RPM = 60 / 75
ATT.Override_ShootEnt = "tacrp_proj_25mm_stun"
ATT.Mult_ShootEntForce = 0.75

ATT.Override_Damage_Max = 75
ATT.Override_Damage_Min = 75

TacRP.LoadAtt(ATT, "ammo_25mm_stun")