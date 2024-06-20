AddCSLuaFile()

ENT.Base                     = "tacrp_proj_smaw"
ENT.PrintName                = "SMAW Triple Rocket"
ENT.Spawnable                = false

ENT.Model                    = "models/weapons/tacint/rocket_deployed.mdl"

ENT.IsRocket = true // projectile has a booster and will not drop.

ENT.InstantFuse = false // projectile is armed immediately after firing.
ENT.RemoteFuse = false // allow this projectile to be triggered by remote detonator.
ENT.ImpactFuse = true // projectile explodes on impact.

ENT.ExplodeOnDamage = false
ENT.ExplodeUnderwater = true

ENT.Delay = 0
ENT.SafetyFuse = 0.15

ENT.AudioLoop = "TacRP/weapons/rpg7/rocket_flight-1.wav"

ENT.SmokeTrail = true

ENT.FlareColor = Color(200, 255, 255)
ENT.FlareSizeMin = 48
ENT.FlareSizeMax = 64

ENT.SteerSpeed = 120
ENT.SteerDelay = 0.15

ENT.MaxSpeed = 4000
ENT.Acceleration = 4000
ENT.SteerBrake = 15000
ENT.MinSpeed = 1000

ENT.AlwaysSteer = true

ENT.ExplodeSounds = {
    "^TacRP/weapons/grenade/40mm_explode-1.wav",
    "^TacRP/weapons/grenade/40mm_explode-2.wav",
    "^TacRP/weapons/grenade/40mm_explode-3.wav",
}

function ENT:OnInitialize()
    if CLIENT then return end
    local wep = self.Inflictor
    if IsValid(wep) and !wep:GetTactical() then
        local pos_tr = wep:GetMuzzleOrigin()
        local ang = wep:GetShootDir()

        local tr = util.TraceLine({
            start = pos_tr,
            endpos = pos_tr + (ang:Forward() * 30000),
            mask = MASK_VISIBLE,
            filter = wep:GetOwner()
        })
        if tr.Hit then
            self.TargetPos = tr.HitPos
        end
    end
end

function ENT:Detonate()
    local attacker = self.Attacker or self:GetOwner()

    if self.NPCDamage then
        util.BlastDamage(self, attacker, self:GetPos(), 200, 60)
    else
        util.BlastDamage(self, attacker, self:GetPos(), 200, 90)
        self:FireBullets({
            Attacker = attacker,
            Damage = 300,
            Tracer = 0,
            Src = self:GetPos(),
            Dir = self:GetForward(),
            HullSize = 0,
            Distance = 96,
            IgnoreEntity = self,
            Callback = function(atk, btr, dmginfo)
                dmginfo:SetDamageType(DMG_AIRBOAT + DMG_SNIPER + DMG_BLAST) // airboat damage for helicopters and LVS vehicles
                dmginfo:SetDamageForce(self:GetForward() * 10000) // LVS uses this to calculate penetration!
            end,
        })
    end

    local fx = EffectData()
    fx:SetOrigin(self:GetPos())

    if self:WaterLevel() > 0 then
        util.Effect("WaterSurfaceExplosion", fx)
    else
        util.Effect("HelicopterMegaBomb", fx)
    end

    self:EmitSound(self.ExplodeSounds[math.random(1, #self.ExplodeSounds)], 100, 90)

    self:Remove()
end