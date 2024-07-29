AddCSLuaFile()

ENT.Base                     = "tacrp_proj_base"
ENT.PrintName                = "SMAW Rocket"
ENT.Spawnable                = false

ENT.Model                    = "models/weapons/tacint/rocket_deployed.mdl"

ENT.IsRocket = true // projectile has a booster and will not drop.

ENT.InstantFuse = false // projectile is armed immediately after firing.
ENT.RemoteFuse = false // allow this projectile to be triggered by remote detonator.
ENT.ImpactFuse = true // projectile explodes on impact.

ENT.ExplodeOnDamage = true
ENT.ExplodeUnderwater = true

ENT.Delay = 0
ENT.SafetyFuse = 0.1

ENT.AudioLoop = "TacRP/weapons/rpg7/rocket_flight-1.wav"

ENT.SmokeTrail = true

ENT.FlareColor = Color(200, 255, 255)

ENT.SteerSpeed = 75
ENT.SteerDelay = 0

ENT.MaxSpeed = 4000
ENT.Acceleration = 2000
ENT.SteerBrake = 0
ENT.AlwaysSteer = false

function ENT:OnThink()
    if CLIENT or (self.SteerDelay + self.SpawnTime) > CurTime() then return end
    local wep = self.Inflictor
    if IsValid(wep) and wep:GetTactical() and !wep:GetIsSprinting() and !wep:GetReloading() and IsValid(wep:GetOwner()) and wep:GetOwner():IsPlayer() and wep:GetOwner():Alive() then
        local pos_tr = wep:GetMuzzleOrigin()
        local ang = wep:GetShootDir()

        local tr = util.TraceLine({
            start = pos_tr,
            endpos = pos_tr + (ang:Forward() * 30000),
            mask = MASK_VISIBLE,
            filter = self:GetOwner()
        })
        if tr.Hit then
            self.TargetPos = tr.HitPos
        end
    elseif !self.AlwaysSteer then
        self.TargetPos = nil
    end
end

function ENT:Detonate()
    local attacker = self.Attacker or self:GetOwner()
    local mult = TacRP.ConVars["mult_damage_explosive"]:GetFloat()

    if self.NPCDamage then
        util.BlastDamage(self, attacker, self:GetPos(), 350, 90 * mult)
    else
        util.BlastDamage(self, attacker, self:GetPos(), 350, 150 * mult)
        self:FireBullets({
            Attacker = attacker,
            Damage = 3000 * mult,
            Tracer = 0,
            Src = self:GetPos(),
            Dir = self:GetForward(),
            HullSize = 16,
            Distance = 128,
            IgnoreEntity = self,
            Callback = function(atk, btr, dmginfo)
                dmginfo:SetDamageType(DMG_AIRBOAT + DMG_SNIPER + DMG_BLAST) // airboat damage for helicopters and LVS vehicles
                dmginfo:SetDamageForce(self:GetForward() * 27000) // LVS uses this to calculate penetration!
            end,
        })
    end

    local fx = EffectData()
    fx:SetOrigin(self:GetPos())

    if self:WaterLevel() > 0 then
        util.Effect("WaterSurfaceExplosion", fx)
    else
        util.Effect("Explosion", fx)
    end

    self:EmitSound("TacRP/weapons/rpg7/explode.wav", 125, 90)

    self:Remove()
end