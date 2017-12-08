local assets=
{	Asset("ANIM", "anim/hat_mwildcat.zip"),
	Asset("ANIM", "anim/hat_mwildcat2.zip"),
  Asset("ATLAS", "images/inventoryimages/hat_mwildcat.xml"),
  Asset("IMAGE", "images/inventoryimages/hat_mwildcat.tex"),
}
---------------------------
--------------growable

local function levelexp(inst,data)

	local max_exp = 4100
	local exp = math.min(inst.level, max_exp)

if inst.level >= 4005 then
--inst.components.talker:Say("-[Iron Cat]-\n[Grow Points]".. (inst.level))
end
if inst.level >=0 and inst.level <10 then
inst.components.talker:Say("-[Iron Cat] \n[Grow Points]\n".. (inst.level).."/10")
elseif inst.level >=10 and inst.level <30 then
inst.components.talker:Say("-[Iron Cat] \n[Grow Points]\n".. (inst.level).."/30")
elseif inst.level >=30 and inst.level <50 then
inst.components.talker:Say("-[Iron Cat] \n[Grow Points]\n".. (inst.level).."/50")
elseif inst.level >=50 and inst.level <70 then
inst.components.talker:Say("-[Iron Cat] \n[Grow Points]\n".. (inst.level).."/70")
elseif inst.level >=70 and inst.level <90 then
inst.components.talker:Say("-[Iron Cat] \n[Grow Points]\n".. (inst.level).."/90")
elseif inst.level >=90 and inst.level <120 then
inst.components.talker:Say("-[Iron Cat] \n[Grow Points]\n".. (inst.level).."/120")
elseif inst.level >=120 and inst.level <150 then
inst.components.talker:Say("-[Iron Cat] \n[Grow Points]\n".. (inst.level).."/150")
elseif inst.level >=150 and inst.level <180 then
inst.components.talker:Say("-[Iron Cat] \n[Grow Points]\n".. (inst.level).."/180")
elseif inst.level >=180 and inst.level <210 then
inst.components.talker:Say("-[Iron Cat] \n[Grow Points]\n".. (inst.level).."/210")
elseif inst.level >=210 and inst.level <250 then
inst.components.talker:Say("-[Iron Cat] \n[Grow Points]\n".. (inst.level).."/250")
elseif inst.level >=250 and inst.level <350 then
inst.components.talker:Say("-[Iron Cat] \n[Grow Points]\n".. (inst.level).."/350")
elseif inst.level >=350 and inst.level <450 then
inst.components.talker:Say("-[Iron Cat] \n[Grow Points]\n".. (inst.level).."/450")
elseif inst.level >=450 and inst.level <550 then
inst.components.talker:Say("-[Iron Cat] \n[Grow Points]\n".. (inst.level).."/550")
elseif inst.level >=550 and inst.level <650 then
inst.components.talker:Say("-[Iron Cat] \n[Grow Points]\n".. (inst.level).."/650")
elseif inst.level >=650 and inst.level <750 then
inst.components.talker:Say("-[Iron Cat] \n[Grow Points]\n".. (inst.level).."/750")
elseif inst.level >=750 and inst.level <850 then
inst.components.talker:Say("-[Iron Cat] \n[Grow Points]\n".. (inst.level).."/850")
elseif inst.level >=850 and inst.level <950 then
inst.components.talker:Say("-[Iron Cat] \n[Grow Points]\n".. (inst.level).."/950")
elseif inst.level >=950 and inst.level <1050 then
inst.components.talker:Say("-[Iron Cat] \n[Grow Points]\n".. (inst.level).."/1050")
elseif inst.level >=1050 and inst.level <1200 then
inst.components.talker:Say("-[Iron Cat] \n[Grow Points]\n".. (inst.level).."/1200")
elseif inst.level >=1200 and inst.level <1400 then
inst.components.talker:Say("-[Iron Cat] \n[Grow Points]\n".. (inst.level).."/1400")
elseif inst.level >=1400 and inst.level <1600 then
inst.components.talker:Say("-[Iron Cat] \n[Grow Points]\n".. (inst.level).."/1600")
elseif inst.level >=1600 and inst.level <1800 then
inst.components.talker:Say("-[Iron Cat] \n[Grow Points]\n".. (inst.level).."/1800")
elseif inst.level >=1800 and inst.level <2000 then
inst.components.talker:Say("-[Iron Cat] \n[Grow Points]\n".. (inst.level).."/2000")
elseif inst.level >=2000 and inst.level <2200 then
inst.components.talker:Say("-[Iron Cat] \n[Grow Points]\n".. (inst.level).."/2200")
elseif inst.level >=2200 and inst.level <2400 then
inst.components.talker:Say("-[Iron Cat] \n[Grow Points]\n".. (inst.level).."/2400")
elseif inst.level >=2400 and inst.level <2600 then
inst.components.talker:Say("-[Iron Cat] \n[Grow Points]\n".. (inst.level).."/2600")
elseif inst.level >=2600 and inst.level <2800 then
inst.components.talker:Say("-[Iron Cat] \n[Grow Points]\n".. (inst.level).."/2800")
elseif inst.level >=2800 and inst.level <3000 then
inst.components.talker:Say("-[Iron Cat] \n[Grow Points]\n".. (inst.level).."/3000")
elseif inst.level >=3000 and inst.level <4000 then
inst.components.talker:Say("-[Iron Cat] \n[Grow Points]\n".. (inst.level).."/4000")
elseif inst.level >=4000 and inst.level <4005 then
inst.components.talker:Say("-[Iron Cat] \n[MAX]")
end
end

local function onpreload(inst, data)
	if data then
		if data.level then
		inst.level = data.level
			levelexp(inst)
end
	end
		end
		
local function onsave(inst, data)
	data.level = inst.level
end
---------------------------------------
local function UpgradeArmor(inst, data)
if inst.components.fueled:IsEmpty() then
inst.broken = true
inst.boost = false
inst.Light:Enable(false)
elseif not inst.components.fueled:IsEmpty() then
inst.broken = false
end
if inst.broken then
inst.boost = false
inst.Light:Enable(false)
   inst.components.armor:InitCondition(9999999999999999999999999999999999999999999999999999999999999, 0)
	inst.components.talker:Say("-[Broken Iron Cat]\nDurability (0)")
            inst.components.fueled:StopConsuming()   
			    if inst.task then inst.task:Cancel() inst.task = nil end
   end

if not inst.broken then

  if inst.level >=0 and inst.level <10 then
inst.components.armor:InitCondition(9999999999999999999999999999999999999999999999999999999999999, 0.40)
    inst.components.insulator.insulation = TUNING.INSULATION_SMALL
    
inst.components.talker:Say("-[Iron Cat(LV1)]\nArmor(40)\nCooler(Small)")
  elseif inst.level >=10 and inst.level <30 then
inst.components.armor:InitCondition(9999999999999999999999999999999999999999999999999999999999999, 0.41)
    inst.components.insulator.insulation = TUNING.INSULATION_SMALL
    
inst.components.talker:Say("-[Iron Cat(LV2)]\nArmor(41)Cooler(Small)")
 elseif inst.level >=30 and inst.level <50 then
 inst.components.armor:InitCondition(9999999999999999999999999999999999999999999999999999999999999, 0.42)
     inst.components.insulator.insulation = TUNING.INSULATION_SMALL
    
inst.components.talker:Say("-[Iron Cat(LV3)]\nArmor(42)\nCooler(Small)")
 elseif inst.level >=50 and inst.level <70 then
 inst.components.armor:InitCondition(9999999999999999999999999999999999999999999999999999999999999, 0.43)
     inst.components.insulator.insulation = TUNING.INSULATION_SMALL
    
inst.components.talker:Say("-[Iron Cat(LV4)]\nArmor(43)\nCooler(Small)")
  elseif inst.level >=70 and inst.level <90 then
 inst.components.armor:InitCondition( 9999999999999999999999999999999999999999999999999999999999999, 0.44)
     inst.components.insulator.insulation = TUNING.INSULATION_SMALL
    
inst.components.talker:Say("-[Iron Cat(LV5)]\nArmor(44)\nCooler(Small)")
 elseif inst.level >=90 and inst.level <120 then
 inst.components.armor:InitCondition(9999999999999999999999999999999999999999999999999999999999999, 0.45)
     inst.components.insulator.insulation = TUNING.INSULATION_SMALL
    
inst.components.talker:Say("-[Iron Cat(LV6)]\nArmor(45)\nCooler(Small)")
 elseif inst.level >=120 and inst.level <150 then
  inst.components.armor:InitCondition(9999999999999999999999999999999999999999999999999999999999999, 0.46)
     inst.components.insulator.insulation = TUNING.INSULATION_SMALL
     
inst.components.talker:Say("-[Iron Cat(LV7)]\nArmor(46)\nCooler(Small)")
elseif inst.level >=150 and inst.level <180 then
inst.components.armor:InitCondition(9999999999999999999999999999999999999999999999999999999999999, 0.47)
    inst.components.insulator.insulation = TUNING.INSULATION_SMALL
    
inst.components.talker:Say("-[Iron Cat(LV8)]\nArmor(47)\nCooler(Small)")
elseif inst.level >=180 and inst.level <210 then
inst.components.armor:InitCondition(9999999999999999999999999999999999999999999999999999999999999, 0.48)
    inst.components.insulator.insulation = TUNING.INSULATION_SMALL
    
inst.components.talker:Say("-[Iron Cat(LV9)]\nArmor(48)\nCooler(Small)")
elseif inst.level >=210 and inst.level <250 then
 inst.components.armor:InitCondition( 9999999999999999999999999999999999999999999999999999999999999, 0.49)
     inst.components.insulator.insulation = TUNING.INSULATION_SMALL
 
inst.components.talker:Say("-[Iron Cat(LV10)]\nArmor(49)\nCooler(MED)")
elseif inst.level >=250 and inst.level <350 then
 inst.components.armor:InitCondition(9999999999999999999999999999999999999999999999999999999999999, 0.50)
     inst.components.insulator.insulation = TUNING.INSULATION_MED

inst.components.talker:Say("-[Iron Cat(LV11)]\nArmor(50)\nCooler(MED)")
elseif inst.level >=350 and inst.level <450 then
 inst.components.armor:InitCondition(9999999999999999999999999999999999999999999999999999999999999, 0.51)
      inst.components.insulator.insulation = TUNING.INSULATION_MED

inst.components.talker:Say("-[Iron Cat(LV12)]\nArmor(51)\nCooler(MED)")
elseif inst.level >=450 and inst.level <550 then
 inst.components.armor:InitCondition(9999999999999999999999999999999999999999999999999999999999999, 0.52)
      inst.components.insulator.insulation = TUNING.INSULATION_MED

inst.components.talker:Say("-[Iron Cat(LV13)]\nArmor(52)\nCooler(MED)")
elseif inst.level >=550 and inst.level <650 then
 inst.components.armor:InitCondition(9999999999999999999999999999999999999999999999999999999999999, 0.53)
      inst.components.insulator.insulation = TUNING.INSULATION_MED

inst.components.talker:Say("-[Iron Cat(LV14)]\nArmor(53)\nCooler(MED)")
elseif inst.level >=650 and inst.level <750 then
 inst.components.armor:InitCondition(9999999999999999999999999999999999999999999999999999999999999, 0.54)
      inst.components.insulator.insulation = TUNING.INSULATION_MED

inst.components.talker:Say("-[Iron Cat(LV15)]\nArmor(54)\nCooler(MED)")
elseif inst.level >=750 and inst.level <850 then
 inst.components.armor:InitCondition( 9999999999999999999999999999999999999999999999999999999999999, 0.55)
      inst.components.insulator.insulation = TUNING.INSULATION_MED
 
inst.components.talker:Say("-[Iron Cat(LV16)]\nArmor(55)\nCooler(MED)")
elseif inst.level >=850 and inst.level <950 then
 inst.components.armor:InitCondition(9999999999999999999999999999999999999999999999999999999999999, 0.56)
      inst.components.insulator.insulation = TUNING.INSULATION_MED

inst.components.talker:Say("-[Iron Cat(LV17)]\nArmor(56)\nCooler(MED)")
elseif inst.level >=950 and inst.level <1050 then
inst.components.armor:InitCondition(9999999999999999999999999999999999999999999999999999999999999, 0.57)
     inst.components.insulator.insulation = TUNING.INSULATION_MED

inst.components.talker:Say("-[Iron Cat(LV18)]\nArmor(57)\nCooler(MED)")
elseif inst.level >=1050 and inst.level <1200 then
 inst.components.armor:InitCondition(9999999999999999999999999999999999999999999999999999999999999, 0.58)
      inst.components.insulator.insulation = TUNING.INSULATION_MED

inst.components.talker:Say("-[Iron Cat(LV19)]\nArmor(58)\nCooler(MED)")
elseif inst.level >=1200 and inst.level <1400 then
 inst.components.armor:InitCondition(9999999999999999999999999999999999999999999999999999999999999, 0.60)
      inst.components.insulator.insulation = TUNING.INSULATION_MED

inst.components.talker:Say("-[Iron Cat(LV20)]\nArmor(60)\nCooler(MED)")
elseif inst.level >=1400 and inst.level <1600 then
 inst.components.armor:InitCondition(9999999999999999999999999999999999999999999999999999999999999, 0.62)
	inst.components.insulator.insulation = (TUNING.INSULATION_MED)
	
inst.components.talker:Say("-[Iron Cat(LV21)]\nArmor(62)\nCooler(MED)")
elseif inst.level >=1600 and inst.level <1800 then
 inst.components.armor:InitCondition(9999999999999999999999999999999999999999999999999999999999999, 0.64)
      inst.components.insulator.insulation = (TUNING.INSULATION_MED)
    
inst.components.talker:Say("-[Iron Cat(LV22)]\nArmor(64)\nCooler(MED)")
elseif inst.level >=1800 and inst.level <2000 then
 inst.components.armor:InitCondition(9999999999999999999999999999999999999999999999999999999999999, 0.66)
      inst.components.insulator.insulation = (TUNING.INSULATION_MED)
    
inst.components.talker:Say("-[Iron Cat(LV23)]\nArmor(66)\nCooler(MED)")
elseif inst.level >=2000 and inst.level <2200 then
 inst.components.armor:InitCondition(9999999999999999999999999999999999999999999999999999999999999, 0.68)
      inst.components.insulator.insulation = (TUNING.INSULATION_MED)
    
inst.components.talker:Say("-[Iron Cat(LV24)]\nArmor(68)\nCooler(MED)")
elseif inst.level >=2200 and inst.level <2400 then
 inst.components.armor:InitCondition(9999999999999999999999999999999999999999999999999999999999999, 0.70)
      inst.components.insulator.insulation = (TUNING.INSULATION_MED)
    
inst.components.talker:Say("-[Iron Cat(LV25)]\nArmor(70)\nCooler(MED)")
elseif inst.level >=2400 and inst.level <2600 then
inst.components.armor:InitCondition(9999999999999999999999999999999999999999999999999999999999999, 0.72)
     inst.components.insulator.insulation = (TUNING.INSULATION_MED)
    
inst.components.talker:Say("-[Iron Cat(LV26)]\nArmor(72)\nCooler(MED)")
elseif inst.level >=2600 and inst.level <2800 then
inst.components.armor:InitCondition(9999999999999999999999999999999999999999999999999999999999999, 0.74)
     inst.components.insulator.insulation = (TUNING.INSULATION_MED)
    
inst.components.talker:Say("-[Iron Cat(LV27)]\nArmor(74)\nCooler(MED)")
elseif inst.level >=2800 and inst.level <3000 then
inst.components.armor:InitCondition(9999999999999999999999999999999999999999999999999999999999999, 0.76)
     inst.components.insulator.insulation = (TUNING.INSULATION_MED)
    
inst.components.talker:Say("-[Iron Cat(LV28)]\nArmor(76)\nCooler(MED)")
elseif inst.level >=3000 and inst.level <4000 then
inst.components.armor:InitCondition(9999999999999999999999999999999999999999999999999999999999999, 0.78)
     inst.components.insulator.insulation = (TUNING.INSULATION_MED)
    
inst.components.talker:Say("-[Iron Cat(LV29)]\nArmor(78)\nCooler(MED)")
elseif inst.level >=4000 then
inst.components.armor:InitCondition(9999999999999999999999999999999999999999999999999999999999999, 0.8)
     inst.components.insulator.insulation = (TUNING.INSULATION_MED * 2)
inst.components.talker:Say("-[Iron Cat(LV30)]\nArmor(80)\nCooler(MED)")

end
end
end


local function OnDurability(inst, data)
inst.broken = true
 	UpgradeArmor(inst)
	inst.components.fueled:StopConsuming()        
 end
-------- --------
-------- --------
local function forgelab(inst, data)
 if inst.active_forge then
local x,y,z = inst.Transform:GetWorldPosition()
local ents = TheSim:FindEntities(x,y,z, 6, {"forge_musha"})
for k,v in pairs(ents) do
if inst.active_forge then
v.active_forge =  true
inst.active_forge = false
end end 
 end end
-------- --------
local function TakeItem(inst, item, data)
local expchance0 = 1
local expchance1 = 0.3
local expchance2 = 0.2
local expchance3 = 0.12
	inst.components.fueled:DoDelta(5000000)
	SpawnPrefab("splash").Transform:SetPosition(inst:GetPosition():Get())
inst.broken = false      
UpgradeArmor(inst)
if not inst.forgelab_on then
   if math.random() < expchance1 and inst.level <= 4005 then
	inst.level = inst.level + 2
	levelexp(inst)
	inst.components.talker:Say("-[Iron Cat] \nLucky Points ! +(2)\n[Grow Points]".. (inst.level))
    elseif  math.random() < expchance2 and inst.level <= 4005 then
	inst.level = inst.level + 5
	levelexp(inst)
	inst.components.talker:Say("-[Iron Cat] \nLucky Points ! +(5)\n[Grow Points]".. (inst.level))
	elseif  math.random() < expchance3 and inst.level <= 4005 then
	inst.level = inst.level + 8
	levelexp(inst)
	inst.components.talker:Say("-[Iron Cat] \nLucky Points ! +(8)\n[Grow Points]".. (inst.level))
	elseif  math.random() < expchance0 and inst.level <= 4005 then
	inst.level = inst.level + 1
	levelexp(inst)
    end
elseif inst.forgelab_on then
inst.active_forge = true
forgelab(inst)
	  if math.random() < expchance1 and inst.level <= 4005 then
	inst.level = inst.level + 10
	levelexp(inst)
	inst.components.talker:Say("[ Forge -Lucky Points x5]\n+(10)\n[Grow Points]".. (inst.level))
    elseif  math.random() < expchance2 and inst.level <= 4005 then
	inst.level = inst.level + 25
	levelexp(inst)
	inst.components.talker:Say("[ Forge -Lucky Points x5]\n+(25)\n[Grow Points]".. (inst.level))
	elseif  math.random() < expchance3 and inst.level <= 4005 then
	inst.level = inst.level + 40
	levelexp(inst)
	inst.components.talker:Say("[ Forge -Lucky Points x5]\n+(40)\n[Grow Points]".. (inst.level))
	elseif  math.random() < expchance0 and inst.level <= 4005 then
	inst.level = inst.level + 5
	levelexp(inst)
	inst.components.talker:Say("[ Forge -Lucky Points x5]\n+(5)\n[Grow Points]".. (inst.level))
    end
	inst.SoundEmitter:PlaySound("dontstarve/common/fireAddFuel")
end
	if inst:HasTag("broken") then
	inst:RemoveTag("broken")
	end
end
-------- --------
-------- --------

-------- --------

local function OnLoad(inst, data)
    UpgradeArmor(inst)
end

local function drop_Cat(inst, ranout)
		inst.components.fueled:StopConsuming()
		inst.SoundEmitter:PlaySound("dontstarve/common/minerhatOut")
		inst.Light:Enable(false)
	end

    local function onequip(inst, owner, fname_override)
	if not inst.share_item and owner and not owner:HasTag("musha") and owner.components.inventory then
                owner.components.inventory:Unequip(EQUIPSLOTS.HEAD, true)
		owner:DoTaskInTime(0.5, function()  owner.components.inventory:DropItem(inst) end)
	end
inst.components.fueled:StartConsuming()        
inst.SoundEmitter:PlaySound("dontstarve/common/gem_shatter")
if not inst.boost then
inst.Light:Enable(false)
        owner.AnimState:OverrideSymbol("swap_hat", "hat_mwildcat", "swap_hat")
        owner.AnimState:Show("HAT")
       owner.AnimState:Show("HAT_HAIR")
        owner.AnimState:Hide("HAIR_NOHAT")
        owner.AnimState:Hide("HAIR")
elseif inst.boost then
inst.Light:Enable(true)
        owner.AnimState:OverrideSymbol("swap_hat", "hat_mwildcat2", "swap_hat")
        owner.AnimState:Show("HAT")
       owner.AnimState:Show("HAT_HAIR")
        owner.AnimState:Hide("HAIR_NOHAT")
        owner.AnimState:Hide("HAIR")
        end
    UpgradeArmor(inst)
    inst.expfn = function(attacked, data)
local expchance = 0.5
local damagedur1 = 0.2
local damagedur2 = 0.5
local damagedur3 = 0.7
local damagedur4 = 1

if data and data.attacker and data.attacker.components.combat and data.attacker.components.combat.defaultdamage <= 10 then
inst.components.fueled:DoDelta(-50000)
elseif data and data.attacker and data.attacker.components.combat and data.attacker.components.combat.defaultdamage > 10 and data.attacker.components.combat and data.attacker.components.combat.defaultdamage <= 20 then
inst.components.fueled:DoDelta(-80000)
elseif data and data.attacker and data.attacker.components.combat and data.attacker.components.combat.defaultdamage > 20 and data.attacker.components.combat and data.attacker.components.combat.defaultdamage <= 30 then
inst.components.fueled:DoDelta(-110000)
elseif data and data.attacker and data.attacker.components.combat and data.attacker.components.combat.defaultdamage > 30 and data.attacker.components.combat and data.attacker.components.combat.defaultdamage <= 40 then
inst.components.fueled:DoDelta(-140000)
elseif data and data.attacker and data.attacker.components.combat and data.attacker.components.combat.defaultdamage > 40 and data.attacker.components.combat and data.attacker.components.combat.defaultdamage <= 50 then
inst.components.fueled:DoDelta(-170000)
elseif data and data.attacker and data.attacker.components.combat and data.attacker.components.combat.defaultdamage > 50 and data.attacker.components.combat and data.attacker.components.combat.defaultdamage <= 60 then
inst.components.fueled:DoDelta(-300000)
elseif data and data.attacker and data.attacker.components.combat and data.attacker.components.combat.defaultdamage > 60 and data.attacker.components.combat and data.attacker.components.combat.defaultdamage <= 70 then
inst.components.fueled:DoDelta(-330000)
elseif data and data.attacker and data.attacker.components.combat and data.attacker.components.combat.defaultdamage > 70 and data.attacker.components.combat and data.attacker.components.combat.defaultdamage <= 60 then
inst.components.fueled:DoDelta(-360000)
elseif data and data.attacker and data.attacker.components.combat and data.attacker.components.combat.defaultdamage > 70 and data.attacker.components.combat and data.attacker.components.combat.defaultdamage <= 80 then
inst.components.fueled:DoDelta(-390000)
elseif data and data.attacker and data.attacker.components.combat and data.attacker.components.combat.defaultdamage > 80 and data.attacker.components.combat and data.attacker.components.combat.defaultdamage <= 90 then
inst.components.fueled:DoDelta(-450000)
elseif data and data.attacker and data.attacker.components.combat and data.attacker.components.combat.defaultdamage > 90 and data.attacker.components.combat and data.attacker.components.combat.defaultdamage <= 100 then
inst.components.fueled:DoDelta(-600000)
elseif data and data.attacker and data.attacker.components.combat and data.attacker.components.combat.defaultdamage > 100 and data.attacker.components.combat and data.attacker.components.combat.defaultdamage <= 100 then
inst.components.fueled:DoDelta(-850000)
elseif data and data.attacker and data.attacker.components.combat and data.attacker.components.combat.defaultdamage > 100 and data.attacker.components.combat and data.attacker.components.combat.defaultdamage <= 150 then
inst.components.fueled:DoDelta(-1000000)
elseif data and data.attacker and data.attacker.components.combat and data.attacker.components.combat.defaultdamage > 150 and data.attacker.components.combat and data.attacker.components.combat.defaultdamage <= 200 then
inst.components.fueled:DoDelta(-1400000)
elseif data and data.attacker and data.attacker.components.combat and data.attacker.components.combat.defaultdamage > 200 and data.attacker.components.combat and data.attacker.components.combat.defaultdamage <= 250 then
inst.components.fueled:DoDelta(-1800000)
elseif data and data.attacker and data.attacker.components.combat and data.attacker.components.combat.defaultdamage > 250 and data.attacker.components.combat and data.attacker.components.combat.defaultdamage <= 300 then
inst.components.fueled:DoDelta(-2600000)
elseif data and data.attacker and data.attacker.components.combat and data.attacker.components.combat.defaultdamage > 300 then
inst.components.fueled:DoDelta(-3000000)
end

if data and data.attacker and math.random() < damagedur1 then
inst.components.fueled:DoDelta(-50000)
elseif data and data.attacker and math.random() < damagedur2 then
inst.components.fueled:DoDelta(-30000)
elseif data and data.attacker and math.random() < damagedur3 then
inst.components.fueled:DoDelta(-10000)
end

if data and data.attacker and math.random() < expchance and inst.level < 4010 then
	inst.level = inst.level + 1
			levelexp(inst)

		end 
	end    


    inst:ListenForEvent("attacked", inst.expfn, owner)

end

    local function onunequip(inst, owner)

    UpgradeArmor(inst)
	inst.boost = false 
	inst.Light:Enable(false)
inst.components.fueled:StopConsuming()        
    inst:RemoveEventCallback("attacked", inst.expfn, owner)
    if inst.task then inst.task:Cancel() inst.task = nil end

         owner.AnimState:Hide("HAT")
        owner.AnimState:Hide("HAT_HAIR")
        owner.AnimState:Show("HAIR_NOHAT")
        owner.AnimState:Show("HAIR")

    end

local function consume(inst, owner)
if not inst.broken and inst.boost then
inst.components.fueled:DoDelta(-30000)
end
if inst.broken and inst.boost then
inst.components.fueled:DoDelta(0)
end
end

  local function gogleon(inst, data, owner, fname_override)
  local owner = inst.components.inventoryitem.owner
if owner and inst.broken then
	inst.boost = false 
	inst.SoundEmitter:PlaySound("dontstarve/common/fireOut")
	inst.Light:Enable(false)
	owner.components.talker:Say("Iron Cat is Broken !")
	inst.components.talker:Say("-[Broken Iron Cat]\nDurability(0)")
  
        owner.AnimState:OverrideSymbol("swap_hat", "hat_mwildcat", "swap_hat")
        owner.AnimState:Show("HAT")
       owner.AnimState:Show("HAT_HAIR")
        owner.AnimState:Hide("HAIR_NOHAT")
        owner.AnimState:Hide("HAIR")
        inst.components.useableitem:StopUsingItem()
end
if owner and not inst.boost and not inst.broken then
	inst.boost = true 
	SpawnPrefab("collapse_small").Transform:SetPosition(inst:GetPosition():Get())
	inst.SoundEmitter:PlaySound("dontstarve/common/minerhatAddFuel")
	inst.Light:Enable(true)
	
	--owner.components.talker:Say("Goggle on !")
    inst.task = inst:DoPeriodicTask(1, function() consume(inst, owner) end)
        owner.AnimState:OverrideSymbol("swap_hat", "hat_mwildcat2", "swap_hat")
        owner.AnimState:Show("HAT")
       owner.AnimState:Show("HAT_HAIR")
        owner.AnimState:Hide("HAIR_NOHAT")
        owner.AnimState:Hide("HAIR")
		UpgradeArmor(inst)

        inst.components.useableitem:StopUsingItem()

-----------
elseif owner and inst.boost and not inst.broken then
	inst.boost = false 
	inst.SoundEmitter:PlaySound("dontstarve/common/fireOut")
	inst.Light:Enable(false)
    if inst.task then inst.task:Cancel() inst.task = nil end
        owner.AnimState:OverrideSymbol("swap_hat", "hat_mwildcat", "swap_hat")
        owner.AnimState:Show("HAT")
       owner.AnimState:Show("HAT_HAIR")
        owner.AnimState:Hide("HAIR_NOHAT")
        owner.AnimState:Hide("HAIR")
		UpgradeArmor(inst)
        inst.components.useableitem:StopUsingItem()
end
end

---------------hat fn sim
	
local function fn(sim)
	local inst = CreateEntity()
    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddSoundEmitter()
	inst.entity:AddNetwork()
	inst.entity:AddLight()
		inst.Light:SetFalloff(0.4)
		inst.Light:SetIntensity(.7)
		inst.Light:SetRadius(2.5)
		inst.Light:SetColour(155/255, 175/255, 195/255)
		inst.Light:Enable(false)
	
	inst.AnimState:SetBank("hat_mwildcat")
    inst.AnimState:SetBuild("hat_mwildcat")

    inst.AnimState:PlayAnimation("idle")
	
    MakeInventoryPhysics(inst)

   	inst:AddTag("waterproofer")
	inst:AddTag("hat")
	inst:AddTag("musha_items")
	
	inst:AddComponent("talker")
    inst.components.talker.fontsize = 20
    inst.components.talker.font = TALKINGFONT
    inst.components.talker.colour = Vector3(0.6, 0.8, 1, 1)
    inst.components.talker.offset = Vector3(0,-500,0)
    inst.components.talker.symbol = "swap_object"
	
	inst.entity:SetPristine()	
    if not TheWorld.ismastersim then
		return inst
	end

	inst:AddComponent("waterproofer")
    inst.components.waterproofer:SetEffectiveness(0)
	
    inst:AddComponent("inspectable")
    	
    inst:AddComponent("inventoryitem")
    inst.components.inventoryitem.atlasname = "images/inventoryimages/hat_mwildcat.xml"


   inst:AddComponent("armor")
    inst.components.armor:InitCondition(9999999999999999999999999999999999999999999999999999999999999, 0.15)
 
            inst:AddComponent("useableitem")
		inst.components.useableitem:SetOnUseFn(gogleon)
        inst:AddComponent("equippable")
        inst.components.equippable.equipslot = EQUIPSLOTS.HEAD
        inst.components.equippable:SetOnEquip( onequip )
        inst.components.equippable:SetOnUnequip( onunequip )
		inst.components.inventoryitem:SetOnDroppedFn( drop_Cat )
		
        inst:AddComponent("insulator")
		inst.components.insulator:SetSummer()
 
	inst.level = 0
	inst:ListenForEvent("levelup", levelexp)
	inst.OnSave = onsave
	inst.OnPreLoad = onpreload

        inst:AddComponent("fueled")
		inst.components.fueled.fueltype = "CHEMICAL"
		inst.components.fueled:InitializeFuelLevel(32000000)
		inst.components.fueled:SetDepletedFn(OnDurability)
        inst.components.fueled.ontakefuelfn = TakeItem
        inst.components.fueled.accepting = true
		inst.components.fueled:StartConsuming()      
		
		--UpgradeArmor(inst)

    return inst
end
---------------------------------
return Prefab( "common/inventory/hat_mwildcat", fn, assets ) 