mod_WJ = 0
mod_AMFC = 0
mod_WJC = 0
targettt = 0
mod_NGT = 0
mod_CJ = 1
mod_DJC = 0
mod_ADC = 0
mod_WFC = 0
mod_AJT = 0

djchargejumppower = 1.6
movemodload = 0

no_jump = 0
no_jump_f = 0
warping_f = 0

JUMP_KEY = ACTION_ARM_CHANGE_STYLE
DODGE_KEY = ACTION_ARM_SP_MOVE
------------------------------------
--ACTION_ARM_R1 = 0
--ACTION_ARM_R2 = 1
--ACTION_ARM_L1 = 2
--ACTION_ARM_L2 = 3
--ACTION_ARM_ACTION = 4
--ACTION_ARM_SP_MOVE = 5
--ACTION_ARM_CHANGE_STYLE = 6
--ACTION_ARM_USE_ITEM = 7
--ACTION_ARM_SWITCH_FORM = 8
--ACTION_ARM_CHANGE_WEAPON_R = 9
--ACTION_ARM_CHANGE_WEAPON_L = 10
--ACTION_ARM_CHANGE_ITEM =  11
--ACTION_ARM_R3 = 12
--ACTION_ARM_L3 = 13
--14
--15
--ACTION_ARM_BACKSTEP = 16
--ACTION_ARM_ROLLING = 17
--
--
--
--ACTION_ARM_GESTURE = 21
--
--
--
--
--ACTION_ARM_LIGHT_KICK = 26
--ACTION_ARM_HEAVY_KICK = 27
------------------------------------
local function Include(funct, addition)
    local prefunct = funct
    return function(...)
	addition(...)
	return prefunct(...)
    end
end

--w  rite
--a  ppend
--r  ead
--b  inary
local function Write(file, content)
    local f = io.open(file, "w")
    f:write(content)
    io.close(f)
end

local function Exists(file)
        local f = io.open(file, "r")
        if f then
            io.close(f)
            return true
        else
            return false
        end
end

------------
local g_DeltaRunTime = 0
------------
local Dt_ACTION_ARM_R1 = 0
local Dt_ACTION_ARM_R2 = 0
local Dt_ACTION_ARM_L1 = 0
local Dt_ACTION_ARM_L2 = 0
local Dt_ACTION_ARM_ACTION = 0
local Dt_ACTION_ARM_SP_MOVE = 0
local Dt_ACTION_ARM_CHANGE_STYLE = 0
local Dt_ACTION_ARM_USE_ITEM = 0
local Dt_ACTION_ARM_SWITCH_FORM = 0
local Dt_ACTION_ARM_CHANGE_WEAPON_R = 0
local Dt_ACTION_ARM_CHANGE_WEAPON_L = 0
local Dt_ACTION_ARM_CHANGE_ITEM = 0
local Dt_ACTION_ARM_R3 = 0
local Dt_ACTION_ARM_L3 = 0
------------
local bu_ACTION_ARM_R1 = 0
local bu_ACTION_ARM_R2 = 0
local bu_ACTION_ARM_L1 = 0
local bu_ACTION_ARM_L2 = 0
local bu_ACTION_ARM_ACTION = 0
local bu_ACTION_ARM_SP_MOVE = 0
local bu_ACTION_ARM_CHANGE_STYLE = 0
local bu_ACTION_ARM_USE_ITEM = 0
local bu_ACTION_ARM_SWITCH_FORM = 0
local bu_ACTION_ARM_CHANGE_WEAPON_R = 0
local bu_ACTION_ARM_CHANGE_WEAPON_L = 0
local bu_ACTION_ARM_CHANGE_ITEM = 0
local bu_ACTION_ARM_R3 = 0
local bu_ACTION_ARM_L3 = 0
------------
local pr_ACTION_ARM_R1 = 0
local pr_ACTION_ARM_R2 = 0
local pr_ACTION_ARM_L1 = 0
local pr_ACTION_ARM_L2 = 0
local pr_ACTION_ARM_ACTION = 0
local pr_ACTION_ARM_SP_MOVE = 0
local pr_ACTION_ARM_CHANGE_STYLE = 0
local pr_ACTION_ARM_USE_ITEM = 0
local pr_ACTION_ARM_SWITCH_FORM = 0
local pr_ACTION_ARM_CHANGE_WEAPON_R = 0
local pr_ACTION_ARM_CHANGE_WEAPON_L = 0
local pr_ACTION_ARM_CHANGE_ITEM = 0
local pr_ACTION_ARM_R3 = 0
local pr_ACTION_ARM_L3 = 0
------------
local re_ACTION_ARM_R1 = 0
local re_ACTION_ARM_R2 = 0
local re_ACTION_ARM_L1 = 0
local re_ACTION_ARM_L2 = 0
local re_ACTION_ARM_ACTION = 0
local re_ACTION_ARM_SP_MOVE = 0
local re_ACTION_ARM_CHANGE_STYLE = 0
local re_ACTION_ARM_USE_ITEM = 0
local re_ACTION_ARM_SWITCH_FORM = 0
local re_ACTION_ARM_CHANGE_WEAPON_R = 0
local re_ACTION_ARM_CHANGE_WEAPON_L = 0
local re_ACTION_ARM_CHANGE_ITEM = 0
local re_ACTION_ARM_R3 = 0
local re_ACTION_ARM_L3 = 0
------------
local P = 0
local T = 1
local R = 2
local p = 0
local t = 1
local r = 2
local Press = 0
local Pressed = 0
local Time = 1
local Timed = 1
local Release = 2
local Released = 2
local press = 0
local pressed = 0
local time = 1
local timed = 1
local release = 2
local released = 2
------------
local function key(pressed_timed_released, action_arm_key)
    local iskeypressed = 0
    local iskeyreleased = 0
    local dT = GetDeltaTime()
	local dT_total = 0
    if env(1108, action_arm_key) > 0 then
	if action_arm_key == ACTION_ARM_R1 then
	    if pressed_timed_released == 0 then
	        if pr_ACTION_ARM_R1 == 0 then
		    iskeypressed = 1
		    pr_ACTION_ARM_R1 = 1
	        end
	    elseif pressed_timed_released == 1 then
		if bu_ACTION_ARM_R1 == 0 then
			Dt_ACTION_ARM_R1 = g_DeltaRunTime
			bu_ACTION_ARM_R1 = 1
		end
		dT_total = (g_DeltaRunTime - Dt_ACTION_ARM_R1)
	    elseif pressed_timed_released == 2 then
	        if re_ACTION_ARM_R1 == 0 then
		    re_ACTION_ARM_R1 = 1
	        end
	    end
	elseif action_arm_key == ACTION_ARM_R2 then
	    if pressed_timed_released == 0 then
	        if pr_ACTION_ARM_R2 == 0 then
		    iskeypressed = 1
		    pr_ACTION_ARM_R2 = 1
	        end
	    elseif pressed_timed_released == 1 then
		if bu_ACTION_ARM_R2 == 0 then
			Dt_ACTION_ARM_R2 = g_DeltaRunTime
			bu_ACTION_ARM_R2 = 1
		end
		dT_total = (g_DeltaRunTime - Dt_ACTION_ARM_R2)
	    elseif pressed_timed_released == 2 then
	        if re_ACTION_ARM_R2 == 0 then
		    re_ACTION_ARM_R2 = 1
	        end
	    end
	elseif action_arm_key == ACTION_ARM_L1 then
	    if pressed_timed_released == 0 then
	        if pr_ACTION_ARM_L1 == 0 then
		    iskeypressed = 1
		    pr_ACTION_ARM_L1 = 1
	        end
	    elseif pressed_timed_released == 1 then
		if bu_ACTION_ARM_L1 == 0 then
			Dt_ACTION_ARM_L1 = g_DeltaRunTime
			bu_ACTION_ARM_L1 = 1
		end
		dT_total = (g_DeltaRunTime - Dt_ACTION_ARM_L1)
	    elseif pressed_timed_released == 2 then
	        if re_ACTION_ARM_L1 == 0 then
		    re_ACTION_ARM_L1 = 1
	        end
	    end
	elseif action_arm_key == ACTION_ARM_L2 then
	    if pressed_timed_released == 0 then
	        if pr_ACTION_ARM_L2 == 0 then
		    iskeypressed = 1
		    pr_ACTION_ARM_L2 = 1
	        end
	    elseif pressed_timed_released == 1 then
		if bu_ACTION_ARM_L2 == 0 then
			Dt_ACTION_ARM_L2 = g_DeltaRunTime
			bu_ACTION_ARM_L2 = 1
		end
		dT_total = (g_DeltaRunTime - Dt_ACTION_ARM_L2)
	    elseif pressed_timed_released == 2 then
	        if re_ACTION_ARM_L2 == 0 then
		    re_ACTION_ARM_L2 = 1
	        end
	    end
	elseif action_arm_key == ACTION_ARM_ACTION then
	    if pressed_timed_released == 0 then
	        if pr_ACTION_ARM_ACTION == 0 then
		    iskeypressed = 1
		    pr_ACTION_ARM_ACTION = 1
	        end
	    elseif pressed_timed_released == 1 then
		if bu_ACTION_ARM_ACTION == 0 then
			Dt_ACTION_ARM_ACTION = g_DeltaRunTime
			bu_ACTION_ARM_ACTION = 1
		end
		dT_total = (g_DeltaRunTime - Dt_ACTION_ARM_ACTION)
	    elseif pressed_timed_released == 2 then
	        if re_ACTION_ARM_ACTION == 0 then
		    re_ACTION_ARM_ACTION = 1
	        end
	    end
	elseif action_arm_key == ACTION_ARM_SP_MOVE then
	    if pressed_timed_released == 0 then
	        if pr_ACTION_ARM_SP_MOVE == 0 then
		    iskeypressed = 1
		    pr_ACTION_ARM_SP_MOVE = 1
	        end
	    elseif pressed_timed_released == 1 then
		if bu_ACTION_ARM_SP_MOVE == 0 then
			Dt_ACTION_ARM_SP_MOVE = g_DeltaRunTime
			bu_ACTION_ARM_SP_MOVE = 1
		end
		dT_total = (g_DeltaRunTime - Dt_ACTION_ARM_SP_MOVE)
	    elseif pressed_timed_released == 2 then
	        if re_ACTION_ARM_SP_MOVE == 0 then
		    re_ACTION_ARM_SP_MOVE = 1
	        end
	    end
	elseif action_arm_key == ACTION_ARM_CHANGE_STYLE then
	    if pressed_timed_released == 0 then
	        if pr_ACTION_ARM_CHANGE_STYLE == 0 then
		    iskeypressed = 1
		    pr_ACTION_ARM_CHANGE_STYLE = 1
	        end
	    elseif pressed_timed_released == 1 then
		if bu_ACTION_ARM_CHANGE_STYLE == 0 then
			Dt_ACTION_ARM_CHANGE_STYLE = g_DeltaRunTime
			bu_ACTION_ARM_CHANGE_STYLE = 1
		end
		dT_total = (g_DeltaRunTime - Dt_ACTION_ARM_CHANGE_STYLE)
	    elseif pressed_timed_released == 2 then
	        if re_ACTION_ARM_CHANGE_STYLE == 0 then
		    re_ACTION_ARM_CHANGE_STYLE = 1
	        end
	    end
	elseif action_arm_key == ACTION_ARM_USE_ITEM then
	    if pressed_timed_released == 0 then
	        if pr_ACTION_ARM_USE_ITEM == 0 then
		    iskeypressed = 1
		    pr_ACTION_ARM_USE_ITEM = 1
	        end
	    elseif pressed_timed_released == 1 then
		if bu_ACTION_ARM_USE_ITEM == 0 then
			Dt_ACTION_ARM_USE_ITEM = g_DeltaRunTime
			bu_ACTION_ARM_USE_ITEM = 1
		end
		dT_total = (g_DeltaRunTime - Dt_ACTION_ARM_USE_ITEM)
	    elseif pressed_timed_released == 2 then
	        if re_ACTION_ARM_USE_ITEM == 0 then
		    re_ACTION_ARM_USE_ITEM = 1
	        end
	    end
	elseif action_arm_key == ACTION_ARM_SWITCH_FORM then
	    if pressed_timed_released == 0 then
	        if pr_ACTION_ARM_SWITCH_FORM == 0 then
		    iskeypressed = 1
		    pr_ACTION_ARM_SWITCH_FORM = 1
	        end
	    elseif pressed_timed_released == 1 then
		if bu_ACTION_ARM_SWITCH_FORM == 0 then
			Dt_ACTION_ARM_SWITCH_FORM = g_DeltaRunTime
			bu_ACTION_ARM_SWITCH_FORM = 1
		end
		dT_total = (g_DeltaRunTime - Dt_ACTION_ARM_SWITCH_FORM)
	    elseif pressed_timed_released == 2 then
	        if re_ACTION_ARM_SWITCH_FORM == 0 then
		    re_ACTION_ARM_SWITCH_FORM = 1
	        end
	    end
	elseif action_arm_key == ACTION_ARM_CHANGE_WEAPON_R then
	    if pressed_timed_released == 0 then
	        if pr_ACTION_ARM_CHANGE_WEAPON_R == 0 then
		    iskeypressed = 1
		    pr_ACTION_ARM_CHANGE_WEAPON_R = 1
	        end
	    elseif pressed_timed_released == 1 then
		if bu_ACTION_ARM_CHANGE_WEAPON_R == 0 then
			Dt_ACTION_ARM_CHANGE_WEAPON_R = g_DeltaRunTime
			bu_ACTION_ARM_CHANGE_WEAPON_R = 1
		end
		dT_total = (g_DeltaRunTime - Dt_ACTION_ARM_CHANGE_WEAPON_R)
	    elseif pressed_timed_released == 2 then
	        if re_ACTION_ARM_CHANGE_WEAPON_R == 0 then
		    re_ACTION_ARM_CHANGE_WEAPON_R = 1
	        end
	    end
	elseif action_arm_key == ACTION_ARM_CHANGE_WEAPON_L then
	    if pressed_timed_released == 0 then
	        if pr_ACTION_ARM_CHANGE_WEAPON_L == 0 then
		    iskeypressed = 1
		    pr_ACTION_ARM_CHANGE_WEAPON_L = 1
	        end
	    elseif pressed_timed_released == 1 then
		if bu_ACTION_ARM_CHANGE_WEAPON_L == 0 then
			Dt_ACTION_ARM_CHANGE_WEAPON_L = g_DeltaRunTime
			bu_ACTION_ARM_CHANGE_WEAPON_L = 1
		end
		dT_total = (g_DeltaRunTime - Dt_ACTION_ARM_CHANGE_WEAPON_L)
	    elseif pressed_timed_released == 2 then
	        if re_ACTION_ARM_CHANGE_WEAPON_L == 0 then
		    re_ACTION_ARM_CHANGE_WEAPON_L = 1
	        end
	    end
	elseif action_arm_key == ACTION_ARM_CHANGE_ITEM then
	    if pressed_timed_released == 0 then
	        if pr_ACTION_ARM_CHANGE_ITEM == 0 then
		    iskeypressed = 1
		    pr_ACTION_ARM_CHANGE_ITEM = 1
	        end
	    elseif pressed_timed_released == 1 then
		if bu_ACTION_ARM_CHANGE_ITEM == 0 then
			Dt_ACTION_ARM_CHANGE_ITEM = g_DeltaRunTime
			bu_ACTION_ARM_CHANGE_ITEM = 1
		end
		dT_total = (g_DeltaRunTime - Dt_ACTION_ARM_CHANGE_ITEM)
	    elseif pressed_timed_released == 2 then
	        if re_ACTION_ARM_CHANGE_ITEM == 0 then
		    re_ACTION_ARM_CHANGE_ITEM = 1
	        end
	    end
	elseif action_arm_key == ACTION_ARM_R3 then
	    if pressed_timed_released == 0 then
	        if pr_ACTION_ARM_ARM_R3 == 0 then
		    iskeypressed = 1
		    pr_ACTION_ARM_ARM_R3 = 1
	        end
	    elseif pressed_timed_released == 1 then
		if bu_ACTION_ARM_ARM_R3 == 0 then
			Dt_ACTION_ARM_ARM_R3 = g_DeltaRunTime
			bu_ACTION_ARM_ARM_R3 = 1
		end
		dT_total = (g_DeltaRunTime - Dt_ACTION_ARM_ARM_R3)
	    elseif pressed_timed_released == 2 then
	        if re_ACTION_ARM_ARM_R3 == 0 then
		    re_ACTION_ARM_ARM_R3 = 1
	        end
	    end
	elseif action_arm_key == ACTION_ARM_L3 then
	    if pressed_timed_released == 0 then
	        if pr_ACTION_ARM_ARM_L3 == 0 then
		    iskeypressed = 1
		    pr_ACTION_ARM_ARM_L3 = 1
	        end
	    elseif pressed_timed_released == 1 then
		if bu_ACTION_ARM_ARM_L3 == 0 then
			Dt_ACTION_ARM_ARM_L3 = g_DeltaRunTime
			bu_ACTION_ARM_ARM_L3 = 1
		end
		dT_total = (g_DeltaRunTime - Dt_ACTION_ARM_ARM_L3)
	    elseif pressed_timed_released == 2 then
	        if re_ACTION_ARM_ARM_L3 == 0 then
		    re_ACTION_ARM_ARM_L3 = 1
	        end
	    end
	end

    else
	if action_arm_key == ACTION_ARM_R1 then
	    if pressed_timed_released == 0 then
        	pr_ACTION_ARM_R1 = 0
	    elseif pressed_timed_released == 1 then
        	bu_ACTION_ARM_R1 = 0
	    elseif pressed_timed_released == 2 then
		if re_ACTION_ARM_R1 == 1 then
			iskeyreleased = 1
		end
        	re_ACTION_ARM_R1 = 0
	    end

	elseif action_arm_key == ACTION_ARM_R2 then
	    if pressed_timed_released == 0 then
        	pr_ACTION_ARM_R2 = 0
	    elseif pressed_timed_released == 1 then
        	bu_ACTION_ARM_R2 = 0
	    elseif pressed_timed_released == 2 then
		if re_ACTION_ARM_R2 == 1 then
			iskeyreleased = 1
		end
        	re_ACTION_ARM_R2 = 0
	    end

	elseif action_arm_key == ACTION_ARM_L1 then
	    if pressed_timed_released == 0 then
        	pr_ACTION_ARM_L1 = 0
	    elseif pressed_timed_released == 1 then
        	bu_ACTION_ARM_L1 = 0
	    elseif pressed_timed_released == 2 then
		if re_ACTION_ARM_L1 == 1 then
			iskeyreleased = 1
		end
        	re_ACTION_ARM_L1 = 0
	    end

	elseif action_arm_key == ACTION_ARM_L2 then
	    if pressed_timed_released == 0 then
        	pr_ACTION_ARM_L2 = 0
	    elseif pressed_timed_released == 1 then
        	bu_ACTION_ARM_L2 = 0
	    elseif pressed_timed_released == 2 then
		if re_ACTION_ARM_L2 == 1 then
			iskeyreleased = 1
		end
        	re_ACTION_ARM_L2 = 0
	    end

	elseif action_arm_key == ACTION_ARM_ACTION then
	    if pressed_timed_released == 0 then
        	pr_ACTION_ARM_ACTION = 0
	    elseif pressed_timed_released == 1 then
        	bu_ACTION_ARM_ACTION = 0
	    elseif pressed_timed_released == 2 then
		if re_ACTION_ARM_ACTION == 1 then
			iskeyreleased = 1
		end
        	re_ACTION_ARM_ACTION = 0
	    end

	elseif action_arm_key == ACTION_ARM_SP_MOVE then
	    if pressed_timed_released == 0 then
        	pr_ACTION_ARM_SP_MOVE = 0
	    elseif pressed_timed_released == 1 then
        	bu_ACTION_ARM_SP_MOVE = 0
	    elseif pressed_timed_released == 2 then
		if re_ACTION_ARM_SP_MOVE == 1 then
			iskeyreleased = 1
		end
        	re_ACTION_ARM_SP_MOVE = 0
	    end

	elseif action_arm_key == ACTION_ARM_CHANGE_STYLE then
	    if pressed_timed_released == 0 then
        	pr_ACTION_ARM_CHANGE_STYLE = 0
	    elseif pressed_timed_released == 1 then
        	bu_ACTION_ARM_CHANGE_STYLE = 0
	    elseif pressed_timed_released == 2 then
		if re_ACTION_ARM_CHANGE_STYLE == 1 then
			iskeyreleased = 1
		end
        	re_ACTION_ARM_CHANGE_STYLE = 0
	    end

	elseif action_arm_key == ACTION_ARM_USE_ITEM then
	    if pressed_timed_released == 0 then
        	pr_ACTION_ARM_USE_ITEM = 0
	    elseif pressed_timed_released == 1 then
        	bu_ACTION_ARM_USE_ITEM = 0
	    elseif pressed_timed_released == 2 then
		if re_ACTION_ARM_USE_ITEM == 1 then
			iskeyreleased = 1
		end
        	re_ACTION_ARM_USE_ITEM = 0
	    end

	elseif action_arm_key == ACTION_ARM_SWITCH_FORM then
	    if pressed_timed_released == 0 then
        	pr_ACTION_ARM_SWITCH_FORM = 0
	    elseif pressed_timed_released == 1 then
        	bu_ACTION_ARM_SWITCH_FORM = 0
	    elseif pressed_timed_released == 2 then
		if re_ACTION_ARM_SWITCH_FORM == 1 then
			iskeyreleased = 1
		end
        	re_ACTION_ARM_SWITCH_FORM = 0
	    end

	elseif action_arm_key == ACTION_ARM_CHANGE_WEAPON_R then
	    if pressed_timed_released == 0 then
        	pr_ACTION_ARM_CHANGE_WEAPON_R = 0
	    elseif pressed_timed_released == 1 then
        	bu_ACTION_ARM_CHANGE_WEAPON_R = 0
	    elseif pressed_timed_released == 2 then
		if re_ACTION_ARM_CHANGE_WEAPON_R == 1 then
			iskeyreleased = 1
		end
        	re_ACTION_ARM_CHANGE_WEAPON_R = 0
	    end

	elseif action_arm_key == ACTION_ARM_CHANGE_WEAPON_L then
	    if pressed_timed_released == 0 then
        	pr_ACTION_ARM_CHANGE_WEAPON_L = 0
	    elseif pressed_timed_released == 1 then
        	bu_ACTION_ARM_CHANGE_WEAPON_L = 0
	    elseif pressed_timed_released == 2 then
		if re_ACTION_ARM_CHANGE_WEAPON_L == 1 then
			iskeyreleased = 1
		end
        	re_ACTION_ARM_CHANGE_WEAPON_L = 0
	    end

	elseif action_arm_key == ACTION_ARM_CHANGE_ITEM then
	    if pressed_timed_released == 0 then
        	pr_ACTION_ARM_CHANGE_ITEM = 0
	    elseif pressed_timed_released == 1 then
        	bu_ACTION_ARM_CHANGE_ITEM = 0
	    elseif pressed_timed_released == 2 then
		if re_ACTION_ARM_CHANGE_ITEM == 1 then
			iskeyreleased = 1
		end
        	re_ACTION_ARM_CHANGE_ITEM = 0
	    end

	elseif action_arm_key == ACTION_ARM_R3 then
	    if pressed_timed_released == 0 then
        	pr_ACTION_ARM_ARM_R3 = 0
	    elseif pressed_timed_released == 1 then
        	bu_ACTION_ARM_ARM_R3 = 0
	    elseif pressed_timed_released == 2 then
		if re_ACTION_ARM_ARM_R3 == 1 then
			iskeyreleased = 1
		end
        	re_ACTION_ARM_ARM_R3 = 0
	    end

	elseif action_arm_key == ACTION_ARM_L3 then
	    if pressed_timed_released == 0 then
        	pr_ACTION_ARM_ARM_L3 = 0
	    elseif pressed_timed_released == 1 then
        	bu_ACTION_ARM_ARM_L3 = 0
	    elseif pressed_timed_released == 2 then
		if re_ACTION_ARM_ARM_L3 == 1 then
			iskeyreleased = 1
		end
        	re_ACTION_ARM_ARM_L3 = 0
	    end

	end


	dT_total = 0

    end
	if pressed_timed_released == 0 then
    	    if iskeypressed == 1 then
		return TRUE
    	    else
		return FALSE
    	    end
	elseif pressed_timed_released == 1 then
        	return dT_total
	elseif pressed_timed_released == 2 then
    	    if iskeyreleased == 1 then
		return TRUE
    	    else
		return FALSE
    	    end
	end
end

------------------------------------
wjload = 0
------------------------------------

function wj_Update()
if env(IsCOMPlayer) == FALSE then
	CanAJ()
	g_DeltaRunTime = g_DeltaRunTime + (1 * (env(ObtainedDT) / 1000))

	if wjload == 0 then

EvasionCommonFunction = Include(EvasionCommonFunction, dj_EvasionCommonFunction)
MagicCommonFunction = Include(MagicCommonFunction, dj_MagicCommonFunction)
AttackCommonFunction = Include(AttackCommonFunction, dj_AttackCommonFunction)
ItemCommonFunction = Include(ItemCommonFunction, dj_ItemCommonFunction)
JumpCommonFunction = Include(JumpCommonFunction, dj_JumpCommonFunction)
Jump_N_onUpdate = dj_Jump_N_onUpdate
Jump_Loop_onUpdate = dj_Jump_Loop_onUpdate
FallLoop_onUpdate = dj_FallLoop_onUpdate
		wjload = 1
	end

        if env(GetSpiritspringJumpHeight) > 0 or env(GetSpEffectID, 183) == TRUE then
            act(AddSpEffect, 185)
        end
	if env(201) == FALSE then
		targettt = 0
	end 
	if no_jump == 1 then
		no_jump_f = turned_f + 1
		if no_jump_f >= 15 then
			no_jump = 0
		end
	else
		no_jump_f = 0
	end
end
end

function CanAJ()
local l_airborne = 0
        if IsNodeActive("Rolling_CMSG") == FALSE and IsNodeActive("Idle_CMSG") == TRUE then
		act(10000, 0, 1, 0, 0x3D65F88, 0x10EF8, 0x0, 0x190, 0x68, 0x1D3)
        end

	if env(201) == FALSE and env(504) == FALSE and env(555) == FALSE and env(279) == FALSE and env(206) == FALSE and env(283) == FALSE then
		if IS_ATTACKED_JUMPMAGIC == FALSE and GetVariable("JumpAttackForm") == 0 and no_jump == 0 and env(1000) > 0 and env(1001) > 0 then
			l_airborne = 1

			if mod_AJT > 0 then
				mod_AJT = mod_AJT + (1 * (env(ObtainedDT) / 1000))
					if mod_AJT > 0.42 then
						mod_AJT = 0
					end
			end
			if mod_NGT > 0 then
				mod_NGT = mod_NGT + (1 * (env(ObtainedDT) / 1000))
					if mod_NGT > 0.42 and math.mod(env(GetMoveAnimParamID), 20) == WEIGHT_LIGHT then
						act(10000, 0, 1, 0, 0x3D65F88, 0x10EF8, 0x0, 0x190, 0x68, 0x1D3)
						mod_NGT = 0
					elseif mod_NGT > 0.3 and math.mod(env(GetMoveAnimParamID), 20) == WEIGHT_NORMAL then
						act(10000, 0, 1, 0, 0x3D65F88, 0x10EF8, 0x0, 0x190, 0x68, 0x1D3)
						mod_NGT = 0
					end
			end
			    if warping_f == 0 then
					mod_AMFC = mod_AMFC + 1
				if mod_WFC < 1.59 and env(2012) == TRUE then
					if mod_WJC > 0 then
						mod_WFC = mod_WFC + (1 * (env(ObtainedDT) / 1000))
					end
					if mod_WFC < 1.29 then
						act(2002, 9000007)
					end
				end
				if key(0, JUMP_KEY) == TRUE and mod_AMFC > 12 and mod_AJT == 0 then
						if env(2012) == TRUE and mod_WFC < 1.59 then
                					act(LockonFixedAngleCancel)
							WallJump()
						elseif mod_DJC == 0 and env(1116, 9000007) == FALSE then
                					act(LockonFixedAngleCancel)
							DoubleJump() 
						end
				end
				if key(0, DODGE_KEY) == TRUE and mod_AMFC > 12 and mod_AJT == 0 then
						if mod_ADC == 0 then
                					act(LockonFixedAngleCancel)
							AirDodge()
						end
				end
				if key(1, JUMP_KEY) > 0 then
					if mod_AMFC < 24 and env(200) == FALSE then
						mod_CJ = djchargejumppower
						if movemodload == 0 then
						    act(SetMovementScaleMult, mod_CJ)
						end
					else
						mod_CJ = 1
						if movemodload == 0 then
						    act(SetMovementScaleMult, 1)
						end
					end
				    else
					mod_JHFC = 0
						mod_CJ = 1
					if movemodload == 0 then
					    act(SetMovementScaleMult, 1)
					end
				end
			    end
		end
    elseif env(201) == TRUE then
			if l_airborne == 1 then
				act(SetMovementScaleMult, 1)
				l_airborne = 0
			end
		mod_AMFC = 0
		mod_WJC = 0
		mod_DJC = 0
		mod_WFC = 0
		mod_AJT = 0
		mod_ADC = 0
		IS_ATTACKED_JUMPMAGIC = FALSE
	end
end

function DoubleJump()
	mod_DJC = 1
	mod_ADC = 0
	ModJump()
end

function WallJump()
	mod_WJC = mod_WJC + 1
	ModJump()
end

function AirDodge()
local GRAVITY = env(10000, 0, 1, 0x3D65F88, 0x10EF8, 0x0, 0x190, 0x68, 0x1D3)
        act(LockonFixedAngleCancel)
	local RollingAngle = env(GetJumpAngle) * 0.009999999776482582

        if is_usechainrecover == TRUE then
            local damagecount = GetVariable("DamageCount")
            if damagecount >= 4 then
                if env(GetEventEzStateFlag, 5) == FALSE then
                    return FALSE
                end
            elseif damagecount == 3 then
                if env(GetEventEzStateFlag, 4) == FALSE then
                    return FALSE
                end
            elseif damagecount == 2 then
                if env(GetEventEzStateFlag, 3) == FALSE then
                    return FALSE
                end
            elseif damagecount <= 1 and env(GetEventEzStateFlag, 2) == FALSE then
                if env(GetSpEffectID, 100720) == TRUE then
                    ResetRequest()
                end
                return FALSE
            end
        end

        if env(GetStamina) <= 0 then
            ResetRequest()
            return FALSE
        end
        if env(GetFallHeight) > 150 then
            return FALSE
        end

        local rollingEvent = "W_Rolling"
        local is_selfTrans = FALSE

        if IsNodeActive("Rolling_CMSG") == TRUE then
            is_selfTrans = TRUE
        end

        if estep == ESTEP_DOWN then
            rollingEvent = "W_EStepDown"
        elseif c_IsStealth == TRUE and GetVariable("EvasionWeightIndex") ~= EVASION_WEIGHT_INDEX_OVERWEIGHT then
            rollingEvent = "W_Stealth_Rolling"
        elseif is_selfTrans == TRUE then
            rollingEvent = rollingEvent .. "_Selftrans"
        end

        if env(GetSpEffectID, 102360) == FALSE then
            AddStamina(STAMINA_REDUCE_ROLLING)
        end

        if GetVariable("IsEnableToggleDashTest") == 2 then
            SetVariable("ToggleDash", 0)
        end

        local turn_angle_real = 200


            SetVariable("RollingOverweightIndex", 0)
            if is_selfTrans == TRUE then
                SetVariable("RollingDirectionIndex_SelfTrans", 0)
            else
                SetVariable("RollingDirectionIndex", 0)
            end

        SetVariable("TurnAngleReal", turn_angle_real)

        if is_selfTrans == TRUE then
            SetVariable("RollingAngleRealSelftrans", RollingAngle)
        else
            SetVariable("RollingAngleReal", RollingAngle)
        end

        --act(2002, 9000001)
        --act(2002, 9000003)
	mod_ADC = 1
	mod_AJT = mod_AJT + (1 * (env(ObtainedDT) / 1000))
	mod_NGT = mod_NGT + (1 * (env(ObtainedDT) / 1000))
	if math.mod(env(GetMoveAnimParamID), 20) ~= WEIGHT_OVERWEIGHT and math.mod(env(GetMoveAnimParamID), 20) ~= WEIGHT_HEAVY then
		act(10000, 0, 1, 1, 0x3D65F88, 0x10EF8, 0x0, 0x190, 0x68, 0x1D3)
	end
        ExecEventAllBody(rollingEvent)
end

function ModJump()
	mod_AJT = mod_AJT + (1 * (env(ObtainedDT) / 1000))
        act(LockonFixedAngleCancel)
    if env(GetStamina) <= 0 then
        ResetRequest()
        return FALSE
    end

    SetWeightIndex()

    -- Jump: Overweight
    if GetVariable("EvasionWeightIndex") == EVASION_WEIGHT_INDEX_OVERWEIGHT and env(IsAIJumpRequested) == FALSE then
        local jumpangle = env(GetJumpAngle) * 0.009999999776482582
            SetVariable("JumpOverweightIndex", 0)

        act(SetNpcAIAttackRequestIDAfterBlend, env(GetNpcAIAttackRequestID))
        SetAIActionState()
        ExecEventAllBody("W_Jump_Overweight")

        return TRUE
    end

    local style = c_Style

    if style == HAND_RIGHT then
        SetVariable("JumpAttack_HandCondition", 0)
    elseif style == HAND_RIGHT_BOTH then
        SetVariable("JumpAttack_HandCondition", 1)
    elseif style == HAND_LEFT_BOTH then
        if GetEquipType(HAND_LEFT, WEAPON_CATEGORY_CROSSBOW) == TRUE then
            SetVariable("JumpAttack_HandCondition", 4)
        else
            SetVariable("JumpAttack_HandCondition", 1)
        end
    end

    SetVariable("JumpAttackForm", 0)
    SetVariable("JumpUseMotion_Bool", false)
    SetVariable("JumpMotion_Override", 0.009999999776482582)
    SetVariable("JumpAttack_Land", 0)
    SetVariable("SwingPose", 0)
    IS_ATTACKED_JUMPMAGIC = FALSE

    if GetVariable("IsEnableToggleDashTest") == 2 then
        SetVariable("ToggleDash", 0)
    end

    local JumpMoveLevel = 0

    if GetVariable("LocomotionState") == 1 and GetVariable("MoveSpeedIndex") == 2 then
        JumpMoveLevel = 2
    elseif GetVariable("MoveSpeedLevel") >= 0.6000000238418579 then
        JumpMoveLevel = 1
    end

    -- Ironjar Aromatic
    if env(GetSpEffectID, 503520) == TRUE then
        JumpMoveLevel = 0
        -- Unknown
    elseif env(GetSpEffectID, 5520) == TRUE then
        JumpMoveLevel = 0
        -- Slug: Slow
    elseif env(GetSpEffectID, 425) == TRUE then
        JumpMoveLevel = 0
        -- Sanguine Noble: Slow
    elseif env(GetSpEffectID, 4101) == TRUE then
        JumpMoveLevel = 0
        -- Sanguine Noble: Slow
    elseif env(GetSpEffectID, 4100) == TRUE then
        JumpMoveLevel = 0
        -- Unknown (DLC)
    elseif env(GetSpEffectID, 19670) == TRUE then
        JumpMoveLevel = 0
    end

    if JumpMoveLevel == 2 then
        if env(IsAIJumpRequested) == TRUE then
            act(NotifyAIOfJumpState)
        end

        act(SetNpcAIAttackRequestIDAfterBlend, env(GetNpcAIAttackRequestID))
        SetAIActionState()
        act(2002, 9000002)
        ExecEvent("W_Jump_D")

        return TRUE
    elseif JumpMoveLevel == 1 then
            SetVariable("JumpDirection", 0)
            SetVariable("JumpAngle", 0)

        SetVariable("IsEnableDirectionJumpTAE", true)

        if env(IsAIJumpRequested) == TRUE then
            act(NotifyAIOfJumpState)
        end

        act(SetNpcAIAttackRequestIDAfterBlend, env(GetNpcAIAttackRequestID))
        SetAIActionState()
        act(2002, 9000002)
        ExecEvent("W_Jump_F")

        return TRUE
    else
        SetVariable("JumpReachSelector", 0)

        if env(IsAIJumpRequested) == TRUE then
            act(NotifyAIOfJumpState)
        end

        act(SetNpcAIAttackRequestIDAfterBlend, env(GetNpcAIAttackRequestID))
        SetAIActionState()
        act(2002, 9000002)
        ExecEvent("W_Jump_N")

        return TRUE
    end
end


function dj_Jump_N_onUpdate()
    SetAIActionState()
    JUMP_STATE_1 = 1
    JUMP_STATE_2 = 0
    JUMP_STATE_3 = 0

    if GetVariable("JumpReachSelector") == 0 and 0 < GetVariable("MoveSpeedLevel") then
        SetVariable("JumpReachSelector", 1)
            SetVariable("JumpDirection", 0)
    end

    if JumpCommonFunction(0) == TRUE then
        return
    end
end



function dj_Jump_Loop_onUpdate()
    SetAIActionState()
    act(DisallowAdditiveTurning, TRUE)


    if env(GetSpiritspringJumpHeight) > 0 or env(GetSpEffectID, 183) == TRUE then
        act(AddSpEffect, 186)
    end

    if env(GetSpEffectID, 19935) == TRUE then
        if env(IsHamariFallDeath, 20) == TRUE and env(GetSpEffectID, 185) == FALSE then
            ExecEvent("W_FallDeath")
            return
        end
    elseif env(IsHamariFallDeath, 12) == TRUE and env(GetSpEffectID, 185) == FALSE then
        ExecEvent("W_FallDeath")
        return
    end
    if env(GetSpEffectID, 185) == TRUE then
    local sheight = env(GetFallHeight)
        if sheight < 9000 then
            if GetVariable("MoveSpeedLevel") > 1.5 then
                hkbFireEvent("W_Jump_Land_To_Dash")
                return
            elseif GetVariable("MoveSpeedLevel") > 0.6000000238418579 then
                hkbFireEvent("W_Jump_Land_To_Run")
                return
	    else
                ExecEventAllBody("W_Land")
        	return
            end
        end
    end





    local height = env(GetFallHeight) / 100

    if not (height >= 600) or env(GetStateChangeType, 266) == TRUE then
    else
        ExecEventAllBody("W_FallDeath")
        return TRUE
    end
    if Act_Jump() == TRUE then
        return
    end

    local equip_arm_no = 1

    if c_Style == HAND_LEFT_BOTH then
        equip_arm_no = 0
    end

    local arrowHand = 1

    if c_Style == HAND_LEFT_BOTH then
        arrowHand = 0
    end

    local is_arrow = GetEquipType(arrowHand, WEAPON_CATEGORY_SMALL_ARROW, WEAPON_CATEGORY_ARROW,
        WEAPON_CATEGORY_LARGE_ARROW, WEAPON_CATEGORY_CROSSBOW, WEAPON_CATEGORY_BALLISTA)

    if is_arrow == TRUE then
        if env(ActionRequest, 0) == TRUE then
            act(ChooseBowAndArrowSlot, 0)
            g_ArrowSlot = 0
        elseif env(ActionRequest, 1) == TRUE then
            act(ChooseBowAndArrowSlot, 1)
            g_ArrowSlot = 1
        end
    end

    if ExecJumpMagic(0) == TRUE then
    elseif env(GetEquipWeaponCategory, equip_arm_no) == WEAPON_CATEGORY_STAFF and env(ActionRequest, 0) == TRUE then
    elseif is_arrow == TRUE
        and (c_Style == HAND_RIGHT_BOTH or c_Style == HAND_LEFT_BOTH or GetEquipType(arrowHand, WEAPON_CATEGORY_CROSSBOW)
            == TRUE) and env(IsOutOfAmmo, arrowHand) == TRUE then
    elseif GetEquipType(arrowHand, WEAPON_CATEGORY_CROSSBOW) == TRUE and env(GetBoltLoadingState, arrowHand) == FALSE then
    elseif env(ActionRequest, ACTION_ARM_R1) == TRUE and GetVariable("JumpAttackForm") == 0 then
        SetVariable("JumpAttackForm", 1)
        SetVariable("JumpAttackFormRequest", 0)
        hkbFireEvent("W_JumpAttack_Start_Falling")
        return
    elseif env(ActionRequest, ACTION_ARM_R2) == TRUE and GetVariable("JumpAttackForm") == 0 then
        if is_arrow == TRUE then
            SetVariable("JumpAttackForm", 1)
            SetVariable("JumpAttackFormRequest", 0)
            hkbFireEvent("W_JumpAttack_Start_Falling")
            return
        end
        SetVariable("JumpAttackForm", 2)
        SetVariable("JumpAttackFormRequest", 1)
        hkbFireEvent("W_JumpAttack_Start_Falling")
        return
    elseif env(ActionRequest, ACTION_ARM_L1) == TRUE and IsEnableDualWielding() == HAND_RIGHT then
        SetVariable("JumpAttackForm", 3)
        SetVariable("JumpAttackFormRequest", 2)
        hkbFireEvent("W_JumpAttack_Start_Falling")
        return
    end

    if 1 <= GetVariable("JumpAttackForm") then
        act(ResetInputQueue)
    end

    local landIndex = GetLandIndex(height, FALSE)

    if env(GetSpEffectID, 141) == TRUE then
        SetVariable("SwingPose", 0)
    elseif env(GetSpEffectID, 142) == TRUE then
        SetVariable("SwingPose", 0)
    elseif env(GetSpEffectID, 143) == TRUE then
        SetVariable("SwingPose", 0)
    elseif env(GetSpEffectID, 144) == TRUE then
        if landIndex == LAND_HEAVY then
            SetVariable("SwingPose", 3)
        else
            SetVariable("SwingPose", 2)
        end
    elseif env(GetSpEffectID, 145) == TRUE then
        SetVariable("SwingPose", 4)
    elseif landIndex == LAND_HEAVY then
        SetVariable("SwingPose", 3)
    else
        SetVariable("SwingPose", 2)
    end

    if env(GetSpEffectID, 98) == TRUE and env(IsTruelyLanding) == TRUE then
        SetVariable("LandIndex", landIndex)
        local JumpMoveLevel = 0

        if landIndex == 0 and GetVariable("JumpAttackForm") == 0 then
            if GetVariable("MoveSpeedLevel") > 1.100000023841858 then
                JumpMoveLevel = 2
            elseif GetVariable("MoveSpeedLevel") > 0.6000000238418579 then
                JumpMoveLevel = 1
            end
        end

        if env(GetSpEffectID, 503520) == TRUE then
            JumpMoveLevel = 0
        elseif env(GetSpEffectID, 5520) == TRUE then
            JumpMoveLevel = 0
        elseif env(GetSpEffectID, 425) == TRUE then
            JumpMoveLevel = 0
        elseif env(GetSpEffectID, 4101) == TRUE then
            JumpMoveLevel = 0
        elseif env(GetSpEffectID, 4100) == TRUE then
            JumpMoveLevel = 0
        elseif env(GetSpEffectID, 19670) == TRUE then
            JumpMoveLevel = 0
        end

        if JumpMoveLevel == 2 then
            ExecEventNoReset("W_Jump_Land_To_Dash")
            return
        elseif JumpMoveLevel == 1 then
            SetVariable("JumpLandMoveDirection", GetVariable("MoveDirection"))
            ExecEventNoReset("W_Jump_Land_To_Run")
            return
        end

        if landIndex > 0 then
            ResetRequest()
        end

        if JUMP_STATE_1 == 1 then
            ExecEventNoReset("W_Jump_Land_N")
        elseif JUMP_STATE_2 == 1 then
            ExecEventNoReset("W_Jump_Land_F")
        elseif JUMP_STATE_3 == 1 then
            ExecEventNoReset("W_Jump_Land_D")
        else
            ExecEventNoReset("W_Jump_Land_N")
        end
        return
    end
end

function dj_FallLoop_onUpdate()
    if env(GetSpiritspringJumpHeight) > 0 or env(GetSpEffectID, 183) == TRUE then
        act(AddSpEffect, 186)
    end

    if env(GetSpEffectID, 19935) == TRUE then
        if env(IsHamariFallDeath, 20) == TRUE and env(GetSpEffectID, 185) == FALSE then
            ExecEvent("W_FallDeath")
            return
        end
    elseif env(IsHamariFallDeath, 12) == TRUE and env(GetSpEffectID, 185) == FALSE then
        ExecEvent("W_FallDeath")
        return
    end
    if env(GetSpEffectID, 185) == TRUE then
    local sheight = env(GetFallHeight)
        if sheight < 9000 then
            if GetVariable("MoveSpeedLevel") > 1.5 then
                hkbFireEvent("W_Jump_Land_To_Dash")
                return
            elseif GetVariable("MoveSpeedLevel") > 0.6000000238418579 then
                hkbFireEvent("W_Jump_Land_To_Run")
                return
	    else
                ExecEventAllBody("W_Land")
        	return
            end
        end
    end

    if FallCommonFunction(TRUE, FALSE, FALL_DEFAULT) == TRUE then
        return
    end
end

function dj_EvasionCommonFunction(fall_type, r1, r2, l1, l2, b1, b2, quick_type)
no_jump = 0
no_jump_f = 0
end

function dj_MagicCommonFunction(blend_type, quick_type, is_throw)
no_jump = 0
no_jump_f = 0
end

function dj_AttackCommonFunction(r1, r2, l1, l2, b1, b2, guardcondition, use_atk_queue, comboCount, gen_hand)
no_jump = 0
no_jump_f = 0
end

function dj_ItemCommonFunction(blend_type)
no_jump = 0
no_jump_f = 0
end

function dj_JumpCommonFunction(jump_type)
    if targettt == 0 and (mod_DJC >= 1 or mod_WJC >= 1) then
	if IS_ATTACKED_JUMPMAGIC == FALSE and GetVariable("JumpAttackForm") == 0 then
	    act(LockonFixedAngleCancel)
	else
	    if GetVariable("IsLockon") == true then
		act(TurnToLockonTargetImmediately)
			targettt = 1
	    else
		act(LockonFixedAngleCancel)
	    end
	end
    end
end


Update = Include(Update, wj_Update)
