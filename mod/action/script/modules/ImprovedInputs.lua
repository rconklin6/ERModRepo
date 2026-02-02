
------------
targettt = 0
cs_f = 0
cs2_f = 0
ss_f = 0
sptog = 0
sptog_f = 0
warping_f = 0
warp_f = 0
lit = 0
lit_f = 0
cit = 0
winded = 0
turned = 0
turned_f = 0
grnded = 0
grnded_f = 0
dmged = 0
dmged_f = 0
busy = 0
busy_f = 0
local crti_t = 0
sf_f = 0
qst_f = 0
ci_f = 0
tog = 0
clwinding = 0
JUMP_KEY = ACTION_ARM_L3

DODGE_KEY = ACTION_ARM_CHANGE_STYLE
lopressed = 0
lanternframes = 0
mountframes = 0
globaljumpangle = 0
------------
local iiload = 0

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
------------------------------------


    if Exists("IISV.lua") == true then
        require("IISV")
    else
		ii_con = 0
            Write("IISV.lua", "ii_con = 0")
    end


if ii_con == 0 then
	istoggle = 0
	isswap = 0
	isquick = 0
	CLASS_AB1 = ACTION_ARM_L1
	CLASS_AB2 = ACTION_ARM_R1

elseif ii_con == 1 then
	istoggle = 0
	isswap = 1
	isquick = 0
	CLASS_AB1 = ACTION_ARM_L2
	CLASS_AB2 = ACTION_ARM_R2

elseif ii_con == 2 then
	istoggle = 1
	isswap = 0
	isquick = 0
	CLASS_AB1 = ACTION_ARM_L1
	CLASS_AB2 = ACTION_ARM_R1

elseif ii_con == 3 then
	istoggle = 1
	isswap = 1
	isquick = 0
	CLASS_AB1 = ACTION_ARM_L2
	CLASS_AB2 = ACTION_ARM_R2

elseif ii_con == 4 then
	istoggle = 0
	isswap = 0
	isquick = 1
	CLASS_AB1 = ACTION_ARM_L1
	CLASS_AB2 = ACTION_ARM_R1

elseif ii_con == 5 then
	istoggle = 0
	isswap = 1
	isquick = 1
	CLASS_AB1 = ACTION_ARM_L2
	CLASS_AB2 = ACTION_ARM_R2

elseif ii_con == 6 then
	istoggle = 1
	isswap = 0
	isquick = 1
	CLASS_AB1 = ACTION_ARM_L1
	CLASS_AB2 = ACTION_ARM_R1

elseif ii_con == 7 then
	istoggle = 1
	isswap = 1
	isquick = 1
	CLASS_AB1 = ACTION_ARM_L2
	CLASS_AB2 = ACTION_ARM_R2

end
------------------------------------
------------------------------------
Qswbar = {
    3140,
    3142,
    3150,
    3152,
    3160,
    3161,
    3165,
    3166,
    3170,
    3171,
    3175,
    3177,
    3185,
    3186,
    3190,
    3192,
    3310,
    3312,
    3375,
    3260,
    501690,
    20501400,
    20501401,
    20501410,
    20501411,
    20501420,
    20501421,
    20501430,
    20501431,
    20501480,
    20501620,
    1446000,
    1449000,
    1459000,
    1466000,
    1498000,
    1507000,
    1525000,
    1608000,
    1625000,
    1625500,
    1632000,
    1677000,
    1696000,
    1723000
}

Qswbal = {
    3144,
    3146,
    3154,
    3156,
    3162,
    3163,
    3167,
    3168,
    3172,
    3173,
    3179,
    3181,
    3187,
    3188,
    3194,
    3196,
    3314,
    3316,
    3376,
    3262,
    501691,
    20501402,
    20501403,
    20501412,
    20501413,
    20501422,
    20501423,
    20501432,
    20501433,
    20501481,
    20501622,
    1446001,
    1449002,
    1466001,
    1626002,
    1632003,
    1677001,
    1696001,
    1697003,
    1723002,
    1447000,
    1674000
}
------------------------------------
------------------------------------
QsSavedBuff_L = 0
QsSavedDuration_L = 0
QsSavedBuff_L1 = 0
QsSavedDuration_L1 = 0
QsSavedBuff_L2 = 0
QsSavedDuration_L2 = 0
QsSavedBuff_L3 = 0
QsSavedDuration_L3 = 0
QsSavedBuff_R = 0
QsSavedDuration_R = 0
QsSavedBuff_R1 = 0
QsSavedDuration_R1 = 0
QsSavedBuff_R2 = 0
QsSavedDuration_R2 = 0
QsSavedBuff_R3 = 0
QsSavedDuration_R3 = 0
QsBuffWeapon_L1 = 0
QsBuffWeapon_L2 = 0
QsBuffWeapon_L3 = 0
QsBuffWeapon_R1 = 0
QsBuffWeapon_R2 = 0
QsBuffWeapon_R3 = 0
buff_L1_T = 0
buff_L2_T = 0
buff_L3_T = 0
buff_R1_T = 0
buff_R2_T = 0
buff_R3_T = 0
Restored_L1 = 0
Restored_L2 = 0
Restored_L3 = 0
Restored_R1 = 0
Restored_R2 = 0
Restored_R3 = 0
cleaned_L1 = 0
cleaned_L2 = 0
cleaned_L3 = 0
cleaned_R1 = 0
cleaned_R2 = 0
cleaned_R3 = 0
cleaned_L = 0
cleaned_R = 0
------------------------------------
------------------------------------
function QsaddStrings(a, b)
    local carry = 0
    local result = {}
    local lenA, lenB = #a, #b
    local maxLen = math.max(lenA, lenB)
 
    a = string.rep("0", maxLen - lenA) .. a
    b = string.rep("0", maxLen - lenB) .. b
 
    for i = maxLen, 1, -1 do
        local sum = tonumber(a:sub(i, i)) + tonumber(b:sub(i, i)) + carry
        carry = math.floor(sum / 10)
        table.insert(result, 1, tostring(sum % 10))
    end
 
    if carry > 0 then
        table.insert(result, 1, tostring(carry))
    end
 
    return table.concat(result)
end
 
function QssubtractStrings(a, b)
    local aStr = tostring(a)
    local bStr = tostring(b)
    
    local maxLen = math.max(#aStr, #bStr)
    aStr = string.rep("0", maxLen - #aStr) .. aStr
    bStr = string.rep("0", maxLen - #bStr) .. bStr
 
    local result = {}
    local borrow = 0
    for i = maxLen, 1, -1 do
        local digitA = tonumber(aStr:sub(i, i))
        local digitB = tonumber(bStr:sub(i, i))
        local diff = digitA - digitB - borrow
        if diff < 0 then
            diff = diff + 10
            borrow = 1
        else
            borrow = 0
        end
        table.insert(result, 1, tostring(diff))
    end
 
    local resultStr = table.concat(result)
    resultStr = resultStr:gsub("^0+", "")
 
    return resultStr == "" and "0" or resultStr
end
 
function QsmultiplyStrings(a, b)
    local lenA, lenB = #a, #b
    local result = "0"
 
    for i = lenB, 1, -1 do
        local digitB = tonumber(b:sub(i, i))
        local carry = 0
        local tempResult = {}
 
        for j = lenA, 1, -1 do
            local digitA = tonumber(a:sub(j, j))
            local prod = (digitA * digitB) + carry
            carry = math.floor(prod / 10)
            table.insert(tempResult, 1, tostring(prod % 10))
        end
 
        if carry > 0 then
            table.insert(tempResult, 1, tostring(carry))
        end
 
        local trailingZeros = string.rep("0", lenB - i)
        local partialResult = table.concat(tempResult) .. trailingZeros
        result = QsaddStrings(result, partialResult)
    end
 
    return result
end
 
function QsbytesToInt32(b1, b2, b3, b4)
    if b1 < 0 then b1 = b1 + 256 end
    if b2 < 0 then b2 = b2 + 256 end
    if b3 < 0 then b3 = b3 + 256 end
    if b4 < 0 then b4 = b4 + 256 end
 
    local part1 = tostring(b1)
    local part2 = QsmultiplyStrings(tostring(b2), "256")
    local part3 = QsmultiplyStrings(tostring(b3), "65536")
    local part4 = QsmultiplyStrings(tostring(b4), "16777216")
 
    local result = QsaddStrings(part1, QsaddStrings(part2, QsaddStrings(part3, part4)))
    return result
end

------------------------------------------

function QsSaveBuff()

    local offsetArray = {}
    
    while true do
        local isValid = env(10000, 0, 4, 0x3D65F88, 0x10EF8, 0x0, 0x178, 0x8, unpack(offsetArray))
        if env(10000, 0, 4, 0x3D65F88, 0x10EF8, 0x0, 0x178, 0x8, unpack(offsetArray)) == 0 then
            return
        end

        table.insert(offsetArray, 0x8)
        local spEffectID = env(10000, 0, 4, 0x3D65F88, 0x10EF8, 0x0, 0x178, 0x8, unpack(offsetArray))
        table.remove(offsetArray, nil)
        
        if Contains(Qswbar, spEffectID) == TRUE and c_Style ~= HAND_LEFT_BOTH then
            table.insert(offsetArray, 0x44)
            local remainingDuration = (env(10000, 0, 6, 0x3D65F88, 0x10EF8, 0x0, 0x178, 0x8, unpack(offsetArray)))

	if env(10000, 0, 5, 0x3D65F88, 0x10EF8, 0x0, 0x580, 0x32C) == 0 then
QsSavedBuff_R1 = spEffectID
QsSavedDuration_R1 = remainingDuration

    local b1 = env(10000, 0, 1, 0x3D65F88, 0x10EF8, 0x0, 0x580, 0x39C + 0)
    local b2 = env(10000, 0, 1, 0x3D65F88, 0x10EF8, 0x0, 0x580, 0x39C + 1)
    local b3 = env(10000, 0, 1, 0x3D65F88, 0x10EF8, 0x0, 0x580, 0x39C + 2)
    local b4 = env(10000, 0, 1, 0x3D65F88, 0x10EF8, 0x0, 0x580, 0x39C + 3)

		QsBuffWeapon_R1 = QsbytesToInt32(b1, b2, b3, b4)



	elseif env(10000, 0, 5, 0x3D65F88, 0x10EF8, 0x0, 0x580, 0x32C) == 1 then
QsSavedBuff_R2 = spEffectID
QsSavedDuration_R2 = remainingDuration

    local b1 = env(10000, 0, 1, 0x3D65F88, 0x10EF8, 0x0, 0x580, 0x3A4 + 0)
    local b2 = env(10000, 0, 1, 0x3D65F88, 0x10EF8, 0x0, 0x580, 0x3A4 + 1)
    local b3 = env(10000, 0, 1, 0x3D65F88, 0x10EF8, 0x0, 0x580, 0x3A4 + 2)
    local b4 = env(10000, 0, 1, 0x3D65F88, 0x10EF8, 0x0, 0x580, 0x3A4 + 3)

		QsBuffWeapon_R2 = QsbytesToInt32(b1, b2, b3, b4)

	elseif env(10000, 0, 5, 0x3D65F88, 0x10EF8, 0x0, 0x580, 0x32C) == 2 then
QsSavedBuff_R3 = spEffectID
QsSavedDuration_R3 = remainingDuration

    local b1 = env(10000, 0, 1, 0x3D65F88, 0x10EF8, 0x0, 0x580, 0x3AC + 0)
    local b2 = env(10000, 0, 1, 0x3D65F88, 0x10EF8, 0x0, 0x580, 0x3AC + 1)
    local b3 = env(10000, 0, 1, 0x3D65F88, 0x10EF8, 0x0, 0x580, 0x3AC + 2)
    local b4 = env(10000, 0, 1, 0x3D65F88, 0x10EF8, 0x0, 0x580, 0x3AC + 3)

		QsBuffWeapon_R3 = QsbytesToInt32(b1, b2, b3, b4)

	end
QsSavedBuff_R = spEffectID
QsSavedDuration_R = remainingDuration

            table.remove(offsetArray, nil)

        end        
        if Contains(Qswbal, spEffectID) == TRUE and c_Style ~= HAND_RIGHT_BOTH then
            table.insert(offsetArray, 0x44)
            local remainingDuration = (env(10000, 0, 6, 0x3D65F88, 0x10EF8, 0x0, 0x178, 0x8, unpack(offsetArray)))

	if env(10000, 0, 5, 0x3D65F88, 0x10EF8, 0x0, 0x580, 0x328) == 0 then
QsSavedBuff_L1 = spEffectID
QsSavedDuration_L1 = remainingDuration

    local b1 = env(10000, 0, 1, 0x3D65F88, 0x10EF8, 0x0, 0x580, 0x398 + 0)
    local b2 = env(10000, 0, 1, 0x3D65F88, 0x10EF8, 0x0, 0x580, 0x398 + 1)
    local b3 = env(10000, 0, 1, 0x3D65F88, 0x10EF8, 0x0, 0x580, 0x398 + 2)
    local b4 = env(10000, 0, 1, 0x3D65F88, 0x10EF8, 0x0, 0x580, 0x398 + 3)

		QsBuffWeapon_L1 = QsbytesToInt32(b1, b2, b3, b4)

	elseif env(10000, 0, 5, 0x3D65F88, 0x10EF8, 0x0, 0x580, 0x328) == 1 then
QsSavedBuff_L2 = spEffectID
QsSavedDuration_L2 = remainingDuration

    local b1 = env(10000, 0, 1, 0x3D65F88, 0x10EF8, 0x0, 0x580, 0x3A0 + 0)
    local b2 = env(10000, 0, 1, 0x3D65F88, 0x10EF8, 0x0, 0x580, 0x3A0 + 1)
    local b3 = env(10000, 0, 1, 0x3D65F88, 0x10EF8, 0x0, 0x580, 0x3A0 + 2)
    local b4 = env(10000, 0, 1, 0x3D65F88, 0x10EF8, 0x0, 0x580, 0x3A0 + 3)

		QsBuffWeapon_L2 = QsbytesToInt32(b1, b2, b3, b4)

	elseif env(10000, 0, 5, 0x3D65F88, 0x10EF8, 0x0, 0x580, 0x328) == 2 then
QsSavedBuff_L3 = spEffectID
QsSavedDuration_L3 = remainingDuration

    local b1 = env(10000, 0, 1, 0x3D65F88, 0x10EF8, 0x0, 0x580, 0x3A8 + 0)
    local b2 = env(10000, 0, 1, 0x3D65F88, 0x10EF8, 0x0, 0x580, 0x3A8 + 1)
    local b3 = env(10000, 0, 1, 0x3D65F88, 0x10EF8, 0x0, 0x580, 0x3A8 + 2)
    local b4 = env(10000, 0, 1, 0x3D65F88, 0x10EF8, 0x0, 0x580, 0x3A8 + 3)

		QsBuffWeapon_L3 = QsbytesToInt32(b1, b2, b3, b4)

	end
QsSavedBuff_L = spEffectID
QsSavedDuration_L = remainingDuration


            table.remove(offsetArray, nil)
        end

        table.insert(offsetArray, 0x30)
    end
end

function QsRestoreBuffDuration()
    local offsetArray = {}
    
    while true do
        local isValid = env(10000, 0, 4, 0x3D65F88, 0x10EF8, 0x0, 0x178, 0x8, unpack(offsetArray))
        if env(10000, 0, 4, 0x3D65F88, 0x10EF8, 0x0, 0x178, 0x8, unpack(offsetArray)) == 0 then
            return
        end

	local QsSavedBuff_RR = 0
	local QsSavedDuration_RR = 0

	if env(10000, 0, 5, 0x3D65F88, 0x10EF8, 0x0, 0x580, 0x32C) == 0 then
		QsSavedBuff_RR = QsSavedBuff_R1
		QsSavedDuration_RR = QsSavedDuration_R1
	elseif env(10000, 0, 5, 0x3D65F88, 0x10EF8, 0x0, 0x580, 0x32C) == 1 then
		QsSavedBuff_RR = QsSavedBuff_R2
		QsSavedDuration_RR = QsSavedDuration_R2
	elseif env(10000, 0, 5, 0x3D65F88, 0x10EF8, 0x0, 0x580, 0x32C) == 2 then
		QsSavedBuff_RR = QsSavedBuff_R3
		QsSavedDuration_RR = QsSavedDuration_R3
	end

	local QsSavedBuff_LL = 0
	local QsSavedDuration_LL = 0

	if env(10000, 0, 5, 0x3D65F88, 0x10EF8, 0x0, 0x580, 0x328) == 0 then
		QsSavedBuff_LL = QsSavedBuff_L1
		QsSavedDuration_LL = QsSavedDuration_L1
	elseif env(10000, 0, 5, 0x3D65F88, 0x10EF8, 0x0, 0x580, 0x328) == 1 then
		QsSavedBuff_LL = QsSavedBuff_L2
		QsSavedDuration_LL = QsSavedDuration_L2
	elseif env(10000, 0, 5, 0x3D65F88, 0x10EF8, 0x0, 0x580, 0x328) == 2 then
		QsSavedBuff_LL = QsSavedBuff_L3
		QsSavedDuration_LL = QsSavedDuration_L3
	end


        table.insert(offsetArray, 0x8)
        local spEffectID = env(10000, 0, 4, 0x3D65F88, 0x10EF8, 0x0, 0x178, 0x8, unpack(offsetArray))
        table.remove(offsetArray, nil)
        
        if QsSavedBuff_RR == spEffectID then
            table.insert(offsetArray, 0x44)
            act(10000, 1, 6, QsSavedDuration_RR, 0x178, 0x8, unpack(offsetArray))
            table.remove(offsetArray, nil)
        end
        if QsSavedBuff_LL == spEffectID then
            table.insert(offsetArray, 0x44)
            act(10000, 1, 6, QsSavedDuration_LL, 0x178, 0x8, unpack(offsetArray))
            table.remove(offsetArray, nil)
        end

        table.insert(offsetArray, 0x30)
    end
end

function ii_torrentcall()

    act(LockonFixedAngleCancel)
    act(SetAllowedThrowDefenseType, 255)
    local blend_type, lower_state = GetHalfBlendInfo()
    if ItemCommonFunction(blend_type) == TRUE then
        return
    end
    if GetLocomotionState() == PLAYER_STATE_MOVE and GetVariable("MoveSpeedIndex") >= 1
        and GetVariable("ItemDashSpeedIndex") == 0 then
        act(DebugLogOutput, "SummonHorse ChangeSpeedIndex")
        IsSummonDash = TRUE
        SetVariable("ItemDashSpeedIndex", 1)
    end
        if env(IsAnimEnd, 1) == TRUE then
            ExecEventAllBody("W_Idle")
        end
        act(Mounting)
        return
end

function ii_lanterntoggle()
local blend_type = ALLBODY
	if MoveStart(LOWER, Event_Move, FALSE) == TRUE then
            blend_type = UPPER
        end
    if env(IsOnMount) == FALSE then
        if env(GetSpEffectID, 3245) == TRUE then
            ExecEventHalfBlend(Event_ItemLanternOff, blend_type)
        else
            ExecEventHalfBlend(Event_ItemLanternOff, blend_type)
		lanternframes = 3
        end
    else
        if env(GetSpEffectID, 3245) == TRUE then
            ExecEventAllBody("W_RideItemLanternOff")
        else
            ExecEventAllBody("W_RideItemLanternOff")
		lanternframes = 3
        end
    end

end

function ii_ItemLanternOff_Upper_onUpdate()
    if lanternframes >= 3 then
		lanternframes = lanternframes + 1
	if lanternframes >= 48 then
			act(2002, 3245)
			lanternframes = 0
	end
    end
end

function ii_RideItemLanternOff_onUpdate()
    if lanternframes >= 3 then
		lanternframes = lanternframes + 1
	if lanternframes >= 48 then
			act(2002, 3245)
			lanternframes = 0
	end
    end
end

function ii_configset()
	if istoggle == 0 and isswap == 0 and isquick == 0 then
		ii_con = 0
		Write("IISV.lua", "ii_con = 0")
	elseif istoggle == 0 and isswap == 1 and isquick == 0 then
		ii_con = 1
		Write("IISV.lua", "ii_con = 1")
	elseif istoggle == 1 and isswap == 0 and isquick == 0 then
		ii_con = 2
		Write("IISV.lua", "ii_con = 2")
	elseif istoggle == 1 and isswap == 1 and isquick == 0 then
		ii_con = 3
		Write("IISV.lua", "ii_con = 3")
	elseif istoggle == 0 and isswap == 0 and isquick == 1 then
		ii_con = 4
		Write("IISV.lua", "ii_con = 4")
	elseif istoggle == 0 and isswap == 1 and isquick == 1 then
		ii_con = 5
		Write("IISV.lua", "ii_con = 5")
	elseif istoggle == 1 and isswap == 0 and isquick == 1 then
		ii_con = 6
		Write("IISV.lua", "ii_con = 6")
	elseif istoggle == 1 and isswap == 1 and isquick == 1 then
		ii_con = 7
		Write("IISV.lua", "ii_con = 7")
	end
end

function ii_configcheck()
	if env(1108, ACTION_ARM_USE_ITEM) > 0 and env(1108, ACTION_ARM_SP_MOVE) > 0 and env(1108, ACTION_ARM_CHANGE_STYLE) > 0 then
		if env(1108, ACTION_ARM_CHANGE_WEAPON_L) > 0 then
			sf_f = sf_f + 1
			if sf_f < 9 and tog == 0 then
				if istoggle == 0 then
					istoggle = 1
					ii_configset()
					tog = 1
			sf_f = sf_f + 9
				elseif istoggle == 1 then
					istoggle = 0
					ii_configset()
					tog = 1
			sf_f = sf_f + 9
				end
			end
		else
			sf_f = 0
			tog = 0
		end
		if env(1108, ACTION_ARM_CHANGE_WEAPON_R) > 0 then
			ci_f = ci_f + 1
			if ci_f < 9 and tog == 0 then
				if isswap == 0 then
					isswap = 1
					CLASS_AB1 = ACTION_ARM_L2
					CLASS_AB2 = ACTION_ARM_R2
					ii_configset()
					tog = 1
			ci_f = ci_f + 9
				elseif isswap == 1 then
					isswap = 0
					CLASS_AB1 = ACTION_ARM_L1
					CLASS_AB2 = ACTION_ARM_R1
					ii_configset()
					tog = 1
			ci_f = ci_f + 9
				end
			end
		else
			ci_f = 0
			tog = 0
		end
		if env(1108, ACTION_ARM_CHANGE_ITEM) > 0 then
			qst_f = qst_f + 1
			if qst_f < 9 and tog == 0 then
				if isquick == 0 then
					isquick = 1
					ii_configset()
					tog = 1
			qst_f = qst_f + 9
				elseif isquick == 1 then
					isquick = 0
					ii_configset()
					tog = 1
			qst_f = qst_f + 9
				end
			end
		else
			qst_f = 0
			tog = 0
		end
	else
		sf_f = 0
		ci_f = 0
		tog = 0
	end
end

local leftweaponchangetime = 1
local rightweaponchangetime = 1
local curleftweapon = 0
local currightweapon = 0
function ii_Update()
if env(IsCOMPlayer) == TRUE then
		iiload = 1
elseif env(IsCOMPlayer) == FALSE then
	g_DeltaRunTime = g_DeltaRunTime + (1 * (env(ObtainedDT) / 1000))
	if iiload == 0 then

Ride_Activate = Include(Ride_Activate, ii_Ride_Activate)
Ride_Update = Include(Ride_Update, ii_Ride_Update)
Ride_Deactivate = Include(Ride_Deactivate, ii_Ride_Deactivate)
RideCommonFunction = ii_RideCommonFunction
RideJumpCommonFunction = ii_RideJumpCommonFunction
RideJumpHigh_onUpdate = ii_RideJumpHigh_onUpdate
RideJumpHighEnd_onUpdate = ii_RideJumpHighEnd_onUpdate
RideFallCommonFunction = ii_RideFallCommonFunction
DamageCommonFunction = ii_DamageCommonFunction
EvasionCommonFunction = Include(EvasionCommonFunction, ii_EvasionCommonFunction)
MagicCommonFunction = Include(MagicCommonFunction, ii_MagicCommonFunction)
AttackCommonFunction = Include(AttackCommonFunction, ii_AttackCommonFunction)
ItemLanternOff_Upper_onUpdate = Include(ItemLanternOff_Upper_onUpdate, ii_ItemLanternOff_Upper_onUpdate)
RideItemLanternOff_onUpdate = Include(RideItemLanternOff_onUpdate, ii_RideItemLanternOff_onUpdate)

ItemCommonFunction = Include(ItemCommonFunction, ii_ItemCommonFunction)
JumpCommonFunction = Include(JumpCommonFunction, ii_JumpCommonFunction)
FallCommonFunction = Include(FallCommonFunction, ii_FallCommonFunction)
LandCommonFunction = Include(LandCommonFunction, ii_LandCommonFunction)
LadderCoastCommonFunction = ii_LadderCoastCommonFunction
ExecLadderMove = ii_ExecLadderMove
Rolling_onUpdate = Include(Rolling_onUpdate, ii_Rolling_onUpdate)
Rolling_Selftrans_onUpdate = Include(Rolling_Selftrans_onUpdate, ii_Rolling_Selftrans_onUpdate)
Jump_N_onUpdate = ii_Jump_N_onUpdate
GetEvasionRequest = ii_GetEvasionRequest
ExecEvasion = ii_ExecEvasion
ExecJump = ii_ExecJump
ExecWeaponChange = ii_ExecWeaponChange
ExecRideOff = ii_ExecRideOff

		iiload = 1
	end
	ii_configcheck()
	RollingAngleReal = GetVariable("MoveAngle")
    if clwinding == 0 then
	if env(1001) <= 0 then
		winded = 1
	elseif env(1001) / env(2010) > 0.81 then
		act(9001, 100020)
		winded = 0
	end
    elseif clwinding == 1 then
	if env(1001) <= 0 then
		winded = 1
	elseif env(1001) / env(2010) > 0.63 then
		act(9001, 100020)
		winded = 0
	end
    elseif clwinding == 2 then
	if env(1001) <= 0 then
		winded = 1
	elseif env(1001) / env(2010) > 0.45 then
		act(9001, 100020)
		winded = 0
	end
    end

	if env(1116, 100290) == TRUE then
		ACTION_ARM_SP_MOVE = 6
	else
		ACTION_ARM_SP_MOVE = 5
	end
local issameleft = 0
local issameright = 0
	if isquick == 1 then
if key(0, ACTION_ARM_CHANGE_WEAPON_L) == TRUE then
		leftweaponchangetime = 0
end
if key(1, ACTION_ARM_CHANGE_WEAPON_L) > 0 then
		leftweaponchangetime = key(1, ACTION_ARM_CHANGE_WEAPON_L)
	if busy == 0 and leftweaponchangetime > 0.21 then
		QsSaveBuff()
		act(10000, 1, 5, 2, 0x580, 0x328)
	end
end
if key(2, ACTION_ARM_CHANGE_WEAPON_L) == TRUE and GetWeaponChangeType(HAND_LEFT) ~= WEAPON_CHANGE_REQUEST_INVALID and leftweaponchangetime <= 0.21 and busy == 0 then
	if curleftweapon == 1 then
		curleftweapon = 0
	elseif curleftweapon == 0 then
		curleftweapon = 1
	end
	        SetVariable("WeaponChangeType", GetWeaponChangeType(HAND_LEFT))
	    if c_IsStealth == TRUE then
		QsSaveBuff()
	        ExecEventHalfBlend(Event_StealthWeaponChangeStart, ALLBODY)
	    elseif c_IsStealth ~= TRUE then
		QsSaveBuff()
	        ExecEventHalfBlend(Event_WeaponChangeStart, ALLBODY)
	    end
	        act(SetNpcAIAttackRequestIDAfterBlend, env(GetNpcAIAttackRequestID))
	        SetAIActionState()
end
if key(1, ACTION_ARM_CHANGE_WEAPON_L) == 0 and busy == 0 then
	act(10000, 1, 5, curleftweapon, 0x580, 0x328)

	if env(10000, 0, 5, 0x3D65F88, 0x10EF8, 0x0, 0x580, 0x328) == 0 then

    local b1 = env(10000, 0, 1, 0x3D65F88, 0x10EF8, 0x0, 0x580, 0x398 + 0)
    local b2 = env(10000, 0, 1, 0x3D65F88, 0x10EF8, 0x0, 0x580, 0x398 + 1)
    local b3 = env(10000, 0, 1, 0x3D65F88, 0x10EF8, 0x0, 0x580, 0x398 + 2)
    local b4 = env(10000, 0, 1, 0x3D65F88, 0x10EF8, 0x0, 0x580, 0x398 + 3)

		if Restored_L1 == 1 and env(1116, QsSavedBuff_L1) ~= TRUE then
					buff_L1_T = 0
				Restored_L1 = 0
		end


			if c_Style ~= HAND_RIGHT_BOTH then
		if QsBuffWeapon_L1 == QsbytesToInt32(b1, b2, b3, b4) and QsSavedBuff_L1 > 0 then
				if QsSavedDuration_L1 >= 0 then
				    if QsSavedDuration_L1 == 0 then
					QsSavedBuff_L1 = 0
				    end
					QsSavedDuration_L1 = QsSavedDuration_L1 - (1 * (env(ObtainedDT) / 1000))
				elseif QsSavedDuration_L1 > -1 and QsSavedDuration_L1 < 0 then
					QsSavedDuration_L1 = 0
				end
			if Restored_L1 == 0 then
				    if buff_L1_T < 0.66 then
					buff_L1_T = buff_L1_T + (1 * (env(ObtainedDT) / 1000))
				if buff_L1_T >= 0.21 then
					act(2002, QsSavedBuff_L1)
					QsRestoreBuffDuration()
				end
				if buff_L1_T >= 0.42 and env(1116, QsSavedBuff_L1) == TRUE then
					Restored_L1 = 1
				end
				    end
				return
			end
		else
			QsSavedBuff_L1 = 0
		end
			else
				act(9001, QsSavedBuff_L1)
			end
	elseif env(10000, 0, 5, 0x3D65F88, 0x10EF8, 0x0, 0x580, 0x328) == 1 then

    local b1 = env(10000, 0, 1, 0x3D65F88, 0x10EF8, 0x0, 0x580, 0x3A0 + 0)
    local b2 = env(10000, 0, 1, 0x3D65F88, 0x10EF8, 0x0, 0x580, 0x3A0 + 1)
    local b3 = env(10000, 0, 1, 0x3D65F88, 0x10EF8, 0x0, 0x580, 0x3A0 + 2)
    local b4 = env(10000, 0, 1, 0x3D65F88, 0x10EF8, 0x0, 0x580, 0x3A0 + 3)

		if Restored_L2 == 1 and env(1116, QsSavedBuff_L2) ~= TRUE then
					buff_L2_T = 0
				Restored_L2 = 0
		end


			if c_Style ~= HAND_RIGHT_BOTH then
		if QsBuffWeapon_L2 == QsbytesToInt32(b1, b2, b3, b4) and QsSavedBuff_L2 > 0 then
				if QsSavedDuration_L2 >= 0 then
				    if QsSavedDuration_L2 == 0 then
					QsSavedBuff_L2 = 0
				    end
					QsSavedDuration_L2 = QsSavedDuration_L2 - (1 * (env(ObtainedDT) / 1000))
				elseif QsSavedDuration_L2 > -1 and QsSavedDuration_L2 < 0 then
					QsSavedDuration_L2 = 0
				end
			if Restored_L2 == 0 then
				    if buff_L2_T < 0.66 then
					buff_L2_T = buff_L2_T + (1 * (env(ObtainedDT) / 1000))
				if buff_L2_T >= 0.21 then
					act(2002, QsSavedBuff_L2)
					QsRestoreBuffDuration()
				end
				if buff_L2_T >= 0.42 and env(1116, QsSavedBuff_L2) == TRUE then
					Restored_L2 = 1
				end
				    end
				return
			end
		else
			QsSavedBuff_L2 = 0
		end
			else
				act(9001, QsSavedBuff_L2)
			end
	elseif env(10000, 0, 5, 0x3D65F88, 0x10EF8, 0x0, 0x580, 0x328) == 2 then

    local b1 = env(10000, 0, 1, 0x3D65F88, 0x10EF8, 0x0, 0x580, 0x3A8 + 0)
    local b2 = env(10000, 0, 1, 0x3D65F88, 0x10EF8, 0x0, 0x580, 0x3A8 + 1)
    local b3 = env(10000, 0, 1, 0x3D65F88, 0x10EF8, 0x0, 0x580, 0x3A8 + 2)
    local b4 = env(10000, 0, 1, 0x3D65F88, 0x10EF8, 0x0, 0x580, 0x3A8 + 3)

		if Restored_L3 == 1 and env(1116, QsSavedBuff_L3) ~= TRUE then
					buff_L3_T = 0
				Restored_L3 = 0
		end


			if c_Style ~= HAND_RIGHT_BOTH then
		if QsBuffWeapon_L3 == QsbytesToInt32(b1, b2, b3, b4) and QsSavedBuff_L3 > 0 then
				if QsSavedDuration_L3 >= 0 then
				    if QsSavedDuration_L3 == 0 then
					QsSavedBuff_L3 = 0
				    end
					QsSavedDuration_L3 = QsSavedDuration_L3 - (1 * (env(ObtainedDT) / 1000))
				elseif QsSavedDuration_L3 > -1 and QsSavedDuration_L3 < 0 then
					QsSavedDuration_L3 = 0
				end
			if Restored_L3 == 0 then
				    if buff_L3_T < 0.66 then
					buff_L3_T = buff_L3_T + (1 * (env(ObtainedDT) / 1000))
				if buff_L3_T >= 0.21 then
					act(2002, QsSavedBuff_L3)
					QsRestoreBuffDuration()
				end
				if buff_L3_T >= 0.42 and env(1116, QsSavedBuff_L3) == TRUE then
					Restored_L3 = 1
				end
				    end
				return
			end
		else
			QsSavedBuff_L3 = 0
		end
			else
				act(9001, QsSavedBuff_L3)
			end
	end
end

if key(0, ACTION_ARM_CHANGE_WEAPON_R) == TRUE then
		rightweaponchangetime = 0
end
if key(1, ACTION_ARM_CHANGE_WEAPON_R) > 0 then
		rightweaponchangetime = key(1, ACTION_ARM_CHANGE_WEAPON_R)
	if busy == 0 and rightweaponchangetime > 0.21 then
		QsSaveBuff()
		act(10000, 1, 5, 2, 0x580, 0x32C)
	end
end
if key(2, ACTION_ARM_CHANGE_WEAPON_R) == TRUE and GetWeaponChangeType(HAND_RIGHT) ~= WEAPON_CHANGE_REQUEST_INVALID and rightweaponchangetime <= 0.21 and busy == 0 then
	if currightweapon == 1 then
		currightweapon = 0
	elseif currightweapon == 0 then
		currightweapon = 1
	end
	        SetVariable("WeaponChangeType", GetWeaponChangeType(HAND_RIGHT))
	    if c_IsStealth == TRUE then
		QsSaveBuff()
	        ExecEventHalfBlend(Event_StealthWeaponChangeStart, ALLBODY)
	    elseif c_IsStealth ~= TRUE then
		QsSaveBuff()
	        ExecEventHalfBlend(Event_WeaponChangeStart, ALLBODY)
	    end
		leftweaponchangetime = 0
	        act(SetNpcAIAttackRequestIDAfterBlend, env(GetNpcAIAttackRequestID))
	        SetAIActionState()
end
if key(1, ACTION_ARM_CHANGE_WEAPON_R) == 0 and busy == 0 then
	act(10000, 1, 5, currightweapon, 0x580, 0x32C)

	if env(10000, 0, 5, 0x3D65F88, 0x10EF8, 0x0, 0x580, 0x32C) == 0 then

    local b1 = env(10000, 0, 1, 0x3D65F88, 0x10EF8, 0x0, 0x580, 0x39C + 0)
    local b2 = env(10000, 0, 1, 0x3D65F88, 0x10EF8, 0x0, 0x580, 0x39C + 1)
    local b3 = env(10000, 0, 1, 0x3D65F88, 0x10EF8, 0x0, 0x580, 0x39C + 2)
    local b4 = env(10000, 0, 1, 0x3D65F88, 0x10EF8, 0x0, 0x580, 0x39C + 3)

		if Restored_R1 == 1 and env(1116, QsSavedBuff_R1) ~= TRUE then
					buff_R1_T = 0
				Restored_R1 = 0
		end

			if c_Style ~= HAND_LEFT_BOTH then
		if QsBuffWeapon_R1 == QsbytesToInt32(b1, b2, b3, b4) and QsSavedBuff_R1 > 0 then
				if QsSavedDuration_R1 >= 0 then
				    if QsSavedDuration_R1 == 0 then
					QsSavedBuff_R1 = 0
				    end
					QsSavedDuration_R1 = QsSavedDuration_R1 - (1 * (env(ObtainedDT) / 1000))
				elseif QsSavedDuration_R1 > -1 and QsSavedDuration_R1 < 0 then
					QsSavedDuration_R1 = 0
				end
			if Restored_R1 == 0 then
				    if buff_R1_T < 0.66 then
					buff_R1_T = buff_R1_T + (1 * (env(ObtainedDT) / 1000))
				if buff_R1_T >= 0.21 then
					act(2002, QsSavedBuff_R1)
					QsRestoreBuffDuration()
				end
				if buff_R1_T >= 0.42 and env(1116, QsSavedBuff_R1) == TRUE then
					Restored_R1 = 1
				end
				    end
				return
			end
		else
			QsSavedBuff_R1 = 0
		end
			else
				act(9001, QsSavedBuff_R1)
			end
	elseif env(10000, 0, 5, 0x3D65F88, 0x10EF8, 0x0, 0x580, 0x32C) == 1 then

    local b1 = env(10000, 0, 1, 0x3D65F88, 0x10EF8, 0x0, 0x580, 0x3A4 + 0)
    local b2 = env(10000, 0, 1, 0x3D65F88, 0x10EF8, 0x0, 0x580, 0x3A4 + 1)
    local b3 = env(10000, 0, 1, 0x3D65F88, 0x10EF8, 0x0, 0x580, 0x3A4 + 2)
    local b4 = env(10000, 0, 1, 0x3D65F88, 0x10EF8, 0x0, 0x580, 0x3A4 + 3)

		if Restored_R2 == 1 and env(1116, QsSavedBuff_R2) ~= TRUE then
					buff_R2_T = 0
				Restored_R2 = 0
		end

			if c_Style ~= HAND_LEFT_BOTH then
		if QsBuffWeapon_R2 == QsbytesToInt32(b1, b2, b3, b4) and QsSavedBuff_R2 > 0 then
				if QsSavedDuration_R2 >= 0 then
				    if QsSavedDuration_R2 == 0 then
					QsSavedBuff_R2 = 0
				    end
					QsSavedDuration_R2 = QsSavedDuration_R2 - (1 * (env(ObtainedDT) / 1000))
				elseif QsSavedDuration_R2 > -1 and QsSavedDuration_R2 < 0 then
					QsSavedDuration_R2 = 0
				end
			if Restored_R2 == 0 then
				    if buff_R2_T < 0.66 then
					buff_R2_T = buff_R2_T + (1 * (env(ObtainedDT) / 1000))
				if buff_R2_T >= 0.21 then
					act(2002, QsSavedBuff_R2)
					QsRestoreBuffDuration()
				end
				if buff_R2_T >= 0.42 and env(1116, QsSavedBuff_R2) == TRUE then
					Restored_R2 = 1
				end
				    end
				return
			end
		else
			QsSavedBuff_R2 = 0
		end
			else
				act(9001, QsSavedBuff_R2)
			end
	elseif env(10000, 0, 5, 0x3D65F88, 0x10EF8, 0x0, 0x580, 0x32C) == 2 then

    local b1 = env(10000, 0, 1, 0x3D65F88, 0x10EF8, 0x0, 0x580, 0x3AC + 0)
    local b2 = env(10000, 0, 1, 0x3D65F88, 0x10EF8, 0x0, 0x580, 0x3AC + 1)
    local b3 = env(10000, 0, 1, 0x3D65F88, 0x10EF8, 0x0, 0x580, 0x3AC + 2)
    local b4 = env(10000, 0, 1, 0x3D65F88, 0x10EF8, 0x0, 0x580, 0x3AC + 3)

		if Restored_R3 == 1 and env(1116, QsSavedBuff_R3) ~= TRUE then
					buff_R3_T = 0
				Restored_R3 = 0
		end


			if c_Style ~= HAND_LEFT_BOTH then
		if QsBuffWeapon_R3 == QsbytesToInt32(b1, b2, b3, b4) and QsSavedBuff_R3 > 0 then
				if QsSavedDuration_R3 >= 0 then
				    if QsSavedDuration_R3 == 0 then
					QsSavedBuff_R3 = 0
				    end
					QsSavedDuration_R3 = QsSavedDuration_R3 - (1 * (env(ObtainedDT) / 1000))
				elseif QsSavedDuration_R3 > -1 and QsSavedDuration_R3 < 0 then
					QsSavedDuration_R3 = 0
				end
			if Restored_R3 == 0 then
				    if buff_R3_T < 0.66 then
					buff_R3_T = buff_R3_T + (1 * (env(ObtainedDT) / 1000))
				if buff_R3_T >= 0.21 then
					act(2002, QsSavedBuff_R3)
					QsRestoreBuffDuration()
				end
				if buff_R3_T >= 0.42 and env(1116, QsSavedBuff_R3) == TRUE then
					Restored_R3 = 1
				end
				    end
				return
			end
		else
			QsSavedBuff_R3 = 0
		end
			else
				act(9001, QsSavedBuff_R3)
			end
	end
end
	elseif isquick == 0 then
if (key(1, ACTION_ARM_CHANGE_WEAPON_L) == 0 or key(1, ACTION_ARM_CHANGE_WEAPON_L) > 0.21) and busy == 0 then

	if env(10000, 0, 5, 0x3D65F88, 0x10EF8, 0x0, 0x580, 0x328) == 0 then

    local b1 = env(10000, 0, 1, 0x3D65F88, 0x10EF8, 0x0, 0x580, 0x398 + 0)
    local b2 = env(10000, 0, 1, 0x3D65F88, 0x10EF8, 0x0, 0x580, 0x398 + 1)
    local b3 = env(10000, 0, 1, 0x3D65F88, 0x10EF8, 0x0, 0x580, 0x398 + 2)
    local b4 = env(10000, 0, 1, 0x3D65F88, 0x10EF8, 0x0, 0x580, 0x398 + 3)

	if cleaned_L == 0 then
			act(9001, QsSavedBuff_L1)
			act(9001, QsSavedBuff_L2)
			act(9001, QsSavedBuff_L3)
		cleaned_L = 1
	end


					buff_L2_T = 0
					buff_L3_T = 0
				Restored_L2 = 0
				Restored_L3 = 0

		if Restored_L1 == 1 and env(1116, QsSavedBuff_L1) ~= TRUE then
					buff_L1_T = 0
				Restored_L1 = 0
		end

		if QsBuffWeapon_L1 ~= QsbytesToInt32(b1, b2, b3, b4) then
			act(9001, QsSavedBuff_L1)
		end

			if c_Style ~= HAND_RIGHT_BOTH then
		if QsBuffWeapon_L1 == QsbytesToInt32(b1, b2, b3, b4) and QsSavedBuff_L1 > 0 then
				if QsSavedDuration_L1 >= 0 then
				    if QsSavedDuration_L1 == 0 then
					QsSavedBuff_L1 = 0
				    end
					QsSavedDuration_L1 = QsSavedDuration_L1 - (1 * (env(ObtainedDT) / 1000))
				elseif QsSavedDuration_L1 > -1 and QsSavedDuration_L1 < 0 then
					QsSavedDuration_L1 = 0
				end
			if Restored_L1 == 0 then
				    if buff_L1_T < 0.9 then
					buff_L1_T = buff_L1_T + (1 * (env(ObtainedDT) / 1000))
				if QsBuffWeapon_L1 == QsbytesToInt32(b1, b2, b3, b4) and buff_L1_T >= 0.3 then
					act(2002, QsSavedBuff_L1)
					QsRestoreBuffDuration()
				end
				if buff_L1_T >= 0.6 and env(1116, QsSavedBuff_L1) == TRUE then
					Restored_L1 = 1
				end
				    end
				return
			end
		else
			QsSavedBuff_L1 = 0
		end
			else
				act(9001, QsSavedBuff_L1)
			end
	elseif env(10000, 0, 5, 0x3D65F88, 0x10EF8, 0x0, 0x580, 0x328) == 1 then

    local b1 = env(10000, 0, 1, 0x3D65F88, 0x10EF8, 0x0, 0x580, 0x3A0 + 0)
    local b2 = env(10000, 0, 1, 0x3D65F88, 0x10EF8, 0x0, 0x580, 0x3A0 + 1)
    local b3 = env(10000, 0, 1, 0x3D65F88, 0x10EF8, 0x0, 0x580, 0x3A0 + 2)
    local b4 = env(10000, 0, 1, 0x3D65F88, 0x10EF8, 0x0, 0x580, 0x3A0 + 3)

	if cleaned_L == 0 then
			act(9001, QsSavedBuff_L1)
			act(9001, QsSavedBuff_L2)
			act(9001, QsSavedBuff_L3)
		cleaned_L = 1
	end
					buff_L1_T = 0
					buff_L3_T = 0
				Restored_L1 = 0
				Restored_L3 = 0

		if Restored_L2 == 1 and env(1116, QsSavedBuff_L2) ~= TRUE then
					buff_L2_T = 0
				Restored_L2 = 0
		end

		if QsBuffWeapon_L2 ~= QsbytesToInt32(b1, b2, b3, b4) then
			act(9001, QsSavedBuff_L2)
		end

			if c_Style ~= HAND_RIGHT_BOTH then
		if QsBuffWeapon_L2 == QsbytesToInt32(b1, b2, b3, b4) and QsSavedBuff_L2 > 0 then
				if QsSavedDuration_L2 >= 0 then
				    if QsSavedDuration_L2 == 0 then
					QsSavedBuff_L2 = 0
				    end
					QsSavedDuration_L2 = QsSavedDuration_L2 - (1 * (env(ObtainedDT) / 1000))
				elseif QsSavedDuration_L2 > -1 and QsSavedDuration_L2 < 0 then
					QsSavedDuration_L2 = 0
				end
			if Restored_L2 == 0 then
				    if buff_L2_T < 0.9 then
					buff_L2_T = buff_L2_T + (1 * (env(ObtainedDT) / 1000))
				if QsBuffWeapon_L2 == QsbytesToInt32(b1, b2, b3, b4) and buff_L2_T >= 0.3 then
					act(2002, QsSavedBuff_L2)
					QsRestoreBuffDuration()
				end
				if buff_L2_T >= 0.6 and env(1116, QsSavedBuff_L2) == TRUE then
					Restored_L2 = 1
				end
				    end
				return
			end
		else
			QsSavedBuff_L2 = 0
		end
			else
				act(9001, QsSavedBuff_L2)
			end
	elseif env(10000, 0, 5, 0x3D65F88, 0x10EF8, 0x0, 0x580, 0x328) == 2 then

    local b1 = env(10000, 0, 1, 0x3D65F88, 0x10EF8, 0x0, 0x580, 0x3A8 + 0)
    local b2 = env(10000, 0, 1, 0x3D65F88, 0x10EF8, 0x0, 0x580, 0x3A8 + 1)
    local b3 = env(10000, 0, 1, 0x3D65F88, 0x10EF8, 0x0, 0x580, 0x3A8 + 2)
    local b4 = env(10000, 0, 1, 0x3D65F88, 0x10EF8, 0x0, 0x580, 0x3A8 + 3)

	if cleaned_L == 0 then
			act(9001, QsSavedBuff_L1)
			act(9001, QsSavedBuff_L2)
			act(9001, QsSavedBuff_L3)
		cleaned_L = 1
	end
					buff_L1_T = 0
					buff_L2_T = 0
				Restored_L1 = 0
				Restored_L2 = 0

		if Restored_L3 == 1 and env(1116, QsSavedBuff_L3) ~= TRUE then
					buff_L3_T = 0
				Restored_L3 = 0
		end

		if QsBuffWeapon_L3 ~= QsbytesToInt32(b1, b2, b3, b4) then
			act(9001, QsSavedBuff_L3)
		end


			if c_Style ~= HAND_RIGHT_BOTH then
		if QsBuffWeapon_L3 == QsbytesToInt32(b1, b2, b3, b4) and QsSavedBuff_L3 > 0 then
				if QsSavedDuration_L3 >= 0 then
				    if QsSavedDuration_L3 == 0 then
					QsSavedBuff_L3 = 0
				    end
					QsSavedDuration_L3 = QsSavedDuration_L3 - (1 * (env(ObtainedDT) / 1000))
				elseif QsSavedDuration_L3 > -1 and QsSavedDuration_L3 < 0 then
					QsSavedDuration_L3 = 0
				end
			if Restored_L3 == 0 then
				    if buff_L3_T < 0.9 then
					buff_L3_T = buff_L3_T + (1 * (env(ObtainedDT) / 1000))
				if QsBuffWeapon_L3 == QsbytesToInt32(b1, b2, b3, b4) and buff_L3_T >= 0.3 then
					act(2002, QsSavedBuff_L3)
					QsRestoreBuffDuration()
				end
				if buff_L3_T >= 0.6 and env(1116, QsSavedBuff_L3) == TRUE then
					Restored_L3 = 1
				end
				    end
				return
			end
		else
			QsSavedBuff_L3 = 0
		end
			else
				act(9001, QsSavedBuff_L3)
			end
	end
end

if (key(1, ACTION_ARM_CHANGE_WEAPON_R) == 0 or key(1, ACTION_ARM_CHANGE_WEAPON_R) > 0.21) and busy == 0 then

	if env(10000, 0, 5, 0x3D65F88, 0x10EF8, 0x0, 0x580, 0x32C) == 0 then

    local b1 = env(10000, 0, 1, 0x3D65F88, 0x10EF8, 0x0, 0x580, 0x39C + 0)
    local b2 = env(10000, 0, 1, 0x3D65F88, 0x10EF8, 0x0, 0x580, 0x39C + 1)
    local b3 = env(10000, 0, 1, 0x3D65F88, 0x10EF8, 0x0, 0x580, 0x39C + 2)
    local b4 = env(10000, 0, 1, 0x3D65F88, 0x10EF8, 0x0, 0x580, 0x39C + 3)

	if cleaned_R == 0 then
			act(9001, QsSavedBuff_R1)
			act(9001, QsSavedBuff_R2)
			act(9001, QsSavedBuff_R3)
		cleaned_R = 1
	end
					buff_R2_T = 0
					buff_R3_T = 0
				Restored_R2 = 0
				Restored_R3 = 0

		if Restored_R1 == 1 and env(1116, QsSavedBuff_R1) ~= TRUE then
					buff_R1_T = 0
				Restored_R1 = 0
		end

		if QsBuffWeapon_R1 ~= QsbytesToInt32(b1, b2, b3, b4) then
			act(9001, QsSavedBuff_R1)
		end

			if c_Style ~= HAND_LEFT_BOTH then
		if QsBuffWeapon_R1 == QsbytesToInt32(b1, b2, b3, b4) and QsSavedBuff_R1 > 0 then
				if QsSavedDuration_R1 >= 0 then
				    if QsSavedDuration_R1 == 0 then
					QsSavedBuff_R1 = 0
				    end
					QsSavedDuration_R1 = QsSavedDuration_R1 - (1 * (env(ObtainedDT) / 1000))
				elseif QsSavedDuration_R1 > -1 and QsSavedDuration_R1 < 0 then
					QsSavedDuration_R1 = 0
				end
			if Restored_R1 == 0 then
				    if buff_R1_T < 0.9 then
					buff_R1_T = buff_R1_T + (1 * (env(ObtainedDT) / 1000))
				if QsBuffWeapon_R1 == QsbytesToInt32(b1, b2, b3, b4) and buff_R1_T >= 0.3 then
					act(2002, QsSavedBuff_R1)
					QsRestoreBuffDuration()
				end
				if buff_R1_T >= 0.6 and env(1116, QsSavedBuff_R1) == TRUE then
					Restored_R1 = 1
				end
				    end
				return
			end
		else
			QsSavedBuff_R1 = 0
		end
			else
				act(9001, QsSavedBuff_R1)
			end
	elseif env(10000, 0, 5, 0x3D65F88, 0x10EF8, 0x0, 0x580, 0x32C) == 1 then

    local b1 = env(10000, 0, 1, 0x3D65F88, 0x10EF8, 0x0, 0x580, 0x3A4 + 0)
    local b2 = env(10000, 0, 1, 0x3D65F88, 0x10EF8, 0x0, 0x580, 0x3A4 + 1)
    local b3 = env(10000, 0, 1, 0x3D65F88, 0x10EF8, 0x0, 0x580, 0x3A4 + 2)
    local b4 = env(10000, 0, 1, 0x3D65F88, 0x10EF8, 0x0, 0x580, 0x3A4 + 3)

	if cleaned_R == 0 then
			act(9001, QsSavedBuff_R1)
			act(9001, QsSavedBuff_R2)
			act(9001, QsSavedBuff_R3)
		cleaned_R = 1
	end
					buff_R1_T = 0
					buff_R3_T = 0
				Restored_R1 = 0
				Restored_R3 = 0

		if Restored_R2 == 1 and env(1116, QsSavedBuff_R2) ~= TRUE then
					buff_R2_T = 0
				Restored_R2 = 0
		end

		if QsBuffWeapon_R2 ~= QsbytesToInt32(b1, b2, b3, b4) then
			act(9001, QsSavedBuff_R2)
		end

			if c_Style ~= HAND_LEFT_BOTH then
		if QsBuffWeapon_R2 == QsbytesToInt32(b1, b2, b3, b4) and QsSavedBuff_R2 > 0 then
				if QsSavedDuration_R2 >= 0 then
				    if QsSavedDuration_R2 == 0 then
					QsSavedBuff_R2 = 0
				    end
					QsSavedDuration_R2 = QsSavedDuration_R2 - (1 * (env(ObtainedDT) / 1000))
				elseif QsSavedDuration_R2 > -1 and QsSavedDuration_R2 < 0 then
					QsSavedDuration_R2 = 0
				end
			if Restored_R2 == 0 then
				    if buff_R2_T < 0.9 then
					buff_R2_T = buff_R2_T + (1 * (env(ObtainedDT) / 1000))
				if QsBuffWeapon_R2 == QsbytesToInt32(b1, b2, b3, b4) and buff_R2_T >= 0.3 then
					act(2002, QsSavedBuff_R2)
					QsRestoreBuffDuration()
				end
				if buff_R2_T >= 0.6 and env(1116, QsSavedBuff_R2) == TRUE then
					Restored_R2 = 1
				end
				    end
				return
			end
		else
			QsSavedBuff_R2 = 0
		end
			else
				act(9001, QsSavedBuff_R2)
			end
	elseif env(10000, 0, 5, 0x3D65F88, 0x10EF8, 0x0, 0x580, 0x32C) == 2 then

    local b1 = env(10000, 0, 1, 0x3D65F88, 0x10EF8, 0x0, 0x580, 0x3AC + 0)
    local b2 = env(10000, 0, 1, 0x3D65F88, 0x10EF8, 0x0, 0x580, 0x3AC + 1)
    local b3 = env(10000, 0, 1, 0x3D65F88, 0x10EF8, 0x0, 0x580, 0x3AC + 2)
    local b4 = env(10000, 0, 1, 0x3D65F88, 0x10EF8, 0x0, 0x580, 0x3AC + 3)

	if cleaned_R == 0 then
			act(9001, QsSavedBuff_R1)
			act(9001, QsSavedBuff_R2)
			act(9001, QsSavedBuff_R3)
		cleaned_R = 1
	end
					buff_R1_T = 0
					buff_R2_T = 0
				Restored_R1 = 0
				Restored_R2 = 0

		if Restored_R3 == 1 and env(1116, QsSavedBuff_R3) ~= TRUE then
					buff_R3_T = 0
				Restored_R3 = 0
		end

		if QsBuffWeapon_R3 ~= QsbytesToInt32(b1, b2, b3, b4) then
			act(9001, QsSavedBuff_R3)
		end


			if c_Style ~= HAND_LEFT_BOTH then
		if QsBuffWeapon_R3 == QsbytesToInt32(b1, b2, b3, b4) and QsSavedBuff_R3 > 0 then
				if QsSavedDuration_R3 >= 0 then
				    if QsSavedDuration_R3 == 0 then
					QsSavedBuff_R3 = 0
				    end
					QsSavedDuration_R3 = QsSavedDuration_R3 - (1 * (env(ObtainedDT) / 1000))
				elseif QsSavedDuration_R3 > -1 and QsSavedDuration_R3 < 0 then
					QsSavedDuration_R3 = 0
				end
			if Restored_R3 == 0 then
				    if buff_R3_T < 0.9 then
					buff_R3_T = buff_R3_T + (1 * (env(ObtainedDT) / 1000))
				if QsBuffWeapon_R3 == QsbytesToInt32(b1, b2, b3, b4) and buff_R3_T >= 0.3 then
					act(2002, QsSavedBuff_R3)
					QsRestoreBuffDuration()
				end
				if buff_R3_T >= 0.6 and env(1116, QsSavedBuff_R3) == TRUE then
					Restored_R3 = 1
				end
				    end
				return
			end
		else
			QsSavedBuff_R3 = 0
		end
			else
				act(9001, QsSavedBuff_R3)
			end
	end
end

	end--

if key(0, ACTION_ARM_CHANGE_STYLE) == TRUE and dmged == 1 and env(1116, 8000000) == FALSE then
	Dodge()
end
--if key(0, ACTION_ARM_CHANGE_STYLE) == TRUE and env(ActionDuration, ACTION_ARM_ACTION) > 0 then
--end
	if busy == 1 then
		lopressed = 1
	elseif key(1, ACTION_ARM_ACTION) > 1.5 and lopressed == 0 and busy == 0 then
		ii_lanterntoggle()
		lopressed = 1
	elseif key(1, ACTION_ARM_ACTION) <= 0 then
		lopressed = 0
	end

if mountframes >= 3 then
	mountframes = mountframes + 1
	if mountframes >= 21 then
			--ii_torrentcall()
			mountframes = 0
	end
end

	if busy == 1 then
		busy_f = busy_f + 1
		if busy_f >= 6 then
			busy = 0
		end
	else
		busy_f = 0
	end

	if dmged == 1 then
		dmged_f = dmged_f + 1
		if dmged_f >= 6 then
			dmged = 0
		end
	else
		dmged_f = 0
	end


	if turned == 1 then
		turned_f = turned_f + 1
		if turned_f >= 15 then
			turned = 0
		end
	else
		turned_f = 0
	end

	if env(201) == FALSE then
		grnded = 1
		targettt = 0
	end
	if grnded == 1 then
		grnded_f = grnded_f + 1
		if grnded_f >= 33 then
			grnded = 0
		end
	else
		grnded_f = 0
	end

		if env(1108, ACTION_ARM_ACTION) > 0 then
			cs_f = cs_f + 1
			if cs_f < 9 then
				if cit == 1 then
					cit = 2
				    cs_f = 999
				elseif cit == 0 then
					cit = 1
				    cs_f = 999
				end
			    cs_f = 999
			end

		else
			if cit == 3 then
				cit = 0
			end

			cs_f = 0
		end
			if cit > 0 then
				cs2_f = cs2_f + 1
					if cs2_f >= 30 then
						cit = 0
					end
			else
				cs2_f = 0
			end


	if env(1108, ACTION_ARM_CHANGE_STYLE) > 0 or env(1108, ACTION_ARM_ACTION) > 0 then
		warp_f = warp_f + 1
	else
		warp_f = 0
	end
	if env(1116, 9017002) == TRUE then
                act(LockonFixedAngleCancel)
		warping_f = warping_f + 1
	else
		warping_f = 0
	end

	if env(1116, 330800) == TRUE then
		if env(1108, ACTION_ARM_CHANGE_STYLE) > 0 and (env(1116, 9017001) == TRUE or env(1116, 9017002) == TRUE) then
			if warping_f < 42 and env(2016) >= 30 and env(1001) > 0 then
				act(2002, 9017002)
			end
		end
	end

	if GetVariable("MoveSpeedLevel") < 0.06 and env(1116, 9017002) == TRUE then
		act(SetMovementScaleMult, 0)
	else
		act(SetMovementScaleMult, 1)
	end

    if env(IsCOMPlayer) == FALSE and istoggle == 0 then
	if key(1, ACTION_ARM_SP_MOVE) > 0.21 and GetVariable("MoveSpeedLevel") > 0.06 and busy == 0 then
                act(LockonFixedAngleCancel)
	end

	if env(ActionDuration, ACTION_ARM_SP_MOVE) > 0 and GetVariable("MoveSpeedLevel") > 0.06 and winded == 0 and turned == 0 and grnded == 0 then
                ChangeMoveSpeedIndex(2)
		act(2002, 100002)
		act(2002, 100220)
		act(2002, 100301)
	    if math.abs(hkbGetVariable("TurnAngle")) > 90 and GetVariable("MoveSpeedIndex") == 2 then
                ChangeMoveSpeedIndex(1)
		turned = 1
	    end
	end
    elseif env(IsCOMPlayer) == FALSE and istoggle == 1 then
	if env(1108, ACTION_ARM_SP_MOVE) > 0 then
		sptog_f = sptog_f + 1
	else
		sptog_f = 0
	end
	if env(ActionDuration, ACTION_ARM_SP_MOVE) > 0 and sptog_f < 9 and GetVariable("MoveSpeedLevel") > 0.06 and sptog == 0 then
		sptog = 1
		sptog_f = 99
	elseif env(ActionDuration, ACTION_ARM_SP_MOVE) > 0 and sptog_f < 9 and GetVariable("MoveSpeedLevel") > 0.06 and sptog == 1 then
		sptog = 0
		sptog_f = 99
	elseif (GetVariable("MoveSpeedLevel") < 0.06) then
		sptog = 0
	end
	if sptog == 1 then
		act(LockonFixedAngleCancel)
	    if winded == 0 and turned == 0 and grnded == 0 then
                ChangeMoveSpeedIndex(2)
		act(2002, 100002)
		act(2002, 100220)
		act(2002, 100301)
		if math.abs(hkbGetVariable("TurnAngle")) > 90 and GetVariable("MoveSpeedIndex") == 2 then
                	ChangeMoveSpeedIndex(1)
			turned = 1
		end
	    end
	end
    end
end
end

function Dodge()
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

        -- if env(IsPrecisionShoot) == FALSE and env(IsCOMPlayer) == FALSE
            -- or env(GetSpEffectID, 100002) == TRUE then
            -- SetVariable("RollingOverweightIndex", 0)
            -- if is_selfTrans == TRUE then
                -- SetVariable("RollingDirectionIndex_SelfTrans", 0)
            -- else
                -- SetVariable("RollingDirectionIndex", 0)
            -- end
        if GetVariable("EvasionWeightIndex") == EVASION_WEIGHT_INDEX_OVERWEIGHT then
            if RollingAngle <= 45 and RollingAngle >= -45 then
                SetVariable("RollingOverweightIndex", 0)
            elseif RollingAngle > 45 and RollingAngle < 135 then
                SetVariable("RollingOverweightIndex", 3)
            elseif RollingAngle >= 135 then
                SetVariable("RollingOverweightIndex", 1)
            elseif RollingAngle < -45 and RollingAngle > -135 then
                SetVariable("RollingOverweightIndex", 2)
            else
                SetVariable("RollingOverweightIndex", 1)
            end

            act(TurnToLockonTargetImmediately)

            turn_angle_real = math.abs(GetVariable("TurnAngle") - RollingAngle)

            if turn_angle_real > 180 then
                turn_angle_real = 360 - turn_angle_real
            end
        else
            local turn_target_angle = 0
            local rollingDirection = 0

            if RollingAngle <= GetVariable("RollingAngleThresholdRightFrontTest") and RollingAngle
                >= GetVariable("RollingAngleThresholdLeftFrontTest") then
                rollingDirection = 0
                turn_target_angle = RollingAngle
            elseif RollingAngle > GetVariable("RollingAngleThresholdRightFrontTest") and RollingAngle
                < GetVariable("RollingAngleThresholdRightBackTest") then
                rollingDirection = 3
                turn_target_angle = RollingAngle - 90
            elseif RollingAngle < GetVariable("RollingAngleThresholdLeftFrontTest") and RollingAngle
                > GetVariable("RollingAngleThresholdLeftBackTest") then
                rollingDirection = 2
                turn_target_angle = RollingAngle + 90
            else
                rollingDirection = 1
                turn_target_angle = RollingAngle - 180
            end

            if is_selfTrans == TRUE then
                SetVariable("RollingDirectionIndex_SelfTrans", rollingDirection)
            else
                SetVariable("RollingDirectionIndex", rollingDirection)
            end

            if GetVariable("IsLockon") == true then
                act(TurnToLockonTargetImmediately, turn_target_angle)
            else
                act(FaceDirection, turn_target_angle)
            end

            turn_angle_real = math.abs(GetVariable("TurnAngle") - RollingAngle)

            if turn_angle_real > 180 then
                turn_angle_real = 360 - turn_angle_real
            end
        end

        SetVariable("TurnAngleReal", turn_angle_real)

        if is_selfTrans == TRUE then
            SetVariable("RollingAngleRealSelftrans", RollingAngle)
        else
            SetVariable("RollingAngleReal", RollingAngle)
        end

        ExecEventAllBody(rollingEvent)
end

function ii_Rolling_onUpdate()
    if dmged == 1 then
        act(LockonFixedAngleCancel)
    end
end

function ii_Rolling_Selftrans_onUpdate()
    if dmged == 1 then
        act(LockonFixedAngleCancel)
    end
end

function ii_Jump_N_onUpdate()
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


function ii_GetEvasionRequest()

    if env(GetStamina) < STAMINA_MINIMUM then
        return ATTACK_REQUEST_INVALID
    end
    if env(IsCOMPlayer) == FALSE and istoggle == 0 then
	if env(ActionRequest, ACTION_ARM_BACKSTEP) == TRUE then
            return ATTACK_REQUEST_BACKSTEP
        elseif env(ActionDuration, ACTION_ARM_L1) > 0 then
            if env(ActionRequest, ACTION_ARM_EMERGENCYSTEP) == TRUE then
                if env(IsEmergencyEvasionPossible, 0) == TRUE or env(IsEmergencyEvasionPossible, 1) == TRUE then
                    return ATTACK_REQUEST_EMERGENCYSTEP
                end
            elseif env(ActionRequest, ACTION_ARM_BACKSTEP) == TRUE then
                return ATTACK_REQUEST_BACKSTEP
            else
                return ATTACK_REQUEST_INVALID
            end
        elseif env(ActionRequest, ACTION_ARM_ROLLING) == TRUE then
            return ATTACK_REQUEST_ROLLING
        end
        return ATTACK_REQUEST_INVALID
    elseif env(IsCOMPlayer) == FALSE and istoggle == 1 then
	if env(ActionRequest, ACTION_ARM_BACKSTEP) == TRUE then
            return ATTACK_REQUEST_BACKSTEP
        elseif env(ActionDuration, ACTION_ARM_L1) > 0 then
            if env(ActionRequest, ACTION_ARM_EMERGENCYSTEP) == TRUE then
                if env(IsEmergencyEvasionPossible, 0) == TRUE or env(IsEmergencyEvasionPossible, 1) == TRUE then
                    return ATTACK_REQUEST_EMERGENCYSTEP
                end
            elseif env(ActionRequest, ACTION_ARM_BACKSTEP) == TRUE then
                return ATTACK_REQUEST_BACKSTEP
            else
                return ATTACK_REQUEST_INVALID
            end
        elseif env(ActionRequest, ACTION_ARM_ROLLING) == TRUE then
            return ATTACK_REQUEST_ROLLING
        end
        return ATTACK_REQUEST_INVALID
    elseif env(IsCOMPlayer) == TRUE then
        if env(ActionRequest, ACTION_ARM_ROLLING) == TRUE then
            return ATTACK_REQUEST_ROLLING
        elseif env(ActionDuration, ACTION_ARM_L1) > 0 then
            if env(ActionRequest, ACTION_ARM_EMERGENCYSTEP) == TRUE then
                if env(IsEmergencyEvasionPossible, 0) == TRUE or env(IsEmergencyEvasionPossible, 1) == TRUE then
                    return ATTACK_REQUEST_EMERGENCYSTEP
                end
            elseif env(ActionRequest, ACTION_ARM_BACKSTEP) == TRUE then
                return ATTACK_REQUEST_BACKSTEP
            else
                return ATTACK_REQUEST_INVALID
            end
        elseif env(ActionRequest, ACTION_ARM_BACKSTEP) == TRUE then
            return ATTACK_REQUEST_BACKSTEP
        end
        return ATTACK_REQUEST_INVALID
   end
end


function ii_ExecEvasion(backstep_limit, estep, is_usechainrecover)
    if c_HasActionRequest == FALSE then
        return FALSE
    end

    local request = GetEvasionRequest()

    if env(IsCOMPlayer) == FALSE then
	    if env(ActionRequest, ACTION_ARM_L3) == TRUE then
			JUMP_KEY = ACTION_ARM_L3
			if env(ActionRequest, ACTION_ARM_L3) == FALSE and env(IsAIJumpRequested) == FALSE then
				return FALSE
			end
			if env(GetStamina) <= 0 and env(IsAIJumpRequested) == FALSE then
				ResetRequest()
				return FALSE
			end

			if env(GetSpEffectID, 102360) == FALSE then
				AddStamina(STAMINA_REDUCE_JUMP)
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
				ExecEvent("W_Jump_D")

				return TRUE 
			elseif JumpMoveLevel == 1 then
				if env(IsPrecisionShoot) == FALSE and env(IsCOMPlayer) == FALSE then
					SetVariable("JumpDirection", 0)
					SetVariable("JumpAngle", 0)
				end

				local turn_target_angle = 0
				--local jumpangle = env(GetRollAngle) * 0.009999999776482582
				local jumpangle = GetVariable("MoveAngle")
				if jumpangle > -45 and jumpangle < 45 then
					turn_target_angle = jumpangle
					SetVariable("JumpDirection", 0)
					SetVariable("JumpAngle", 0)
				elseif jumpangle >= 0 and jumpangle <= 100 then
					turn_target_angle = jumpangle - 90
					SetVariable("JumpDirection", 3)
					SetVariable("JumpAngle", 90)
				elseif jumpangle >= -100 and jumpangle <= 0 then
					turn_target_angle = jumpangle + 90
					SetVariable("JumpDirection", 2)
					SetVariable("JumpAngle", -90)
				else
					turn_target_angle = jumpangle - 180
					SetVariable("JumpDirection", 1)
					SetVariable("JumpAngle", 180)
				end

				globaljumpangle = turn_target_angle

				SetVariable("IsEnableDirectionJumpTAE", true)

				if env(IsAIJumpRequested) == TRUE then
					act(NotifyAIOfJumpState)
				end

				act(TurnToLockonTargetImmediately, globaljumpangle)

				act(SetNpcAIAttackRequestIDAfterBlend, env(GetNpcAIAttackRequestID))
				SetAIActionState()
				ExecEvent("W_Jump_F")

				return TRUE
			else
				SetVariable("JumpReachSelector", 0)

				if env(IsAIJumpRequested) == TRUE then
					act(NotifyAIOfJumpState)
				end

				act(SetNpcAIAttackRequestIDAfterBlend, env(GetNpcAIAttackRequestID))
				SetAIActionState()
				ExecEvent("W_Jump_N")

				return TRUE
			end
	    end
    elseif env(IsCOMPlayer) == TRUE then
	    if env(ActionRequest, ACTION_ARM_L3) == TRUE and c_IsStealth == FALSE then
	        StealthTransitionIndexUpdate()
	        ExecEvent("W_Stealth_to_Stealth_Idle")
	        return TRUE
	    elseif env(ActionRequest, ACTION_ARM_L3) == TRUE and c_IsStealth == TRUE then
	        StealthTransitionIndexUpdate()
	        ExecEvent("W_Stealth_to_Idle")
	        return TRUE
	    end
    end
    if request == ATTACK_REQUEST_INVALID then
        return FALSE
    end
    if backstep_limit == TRUE and request == ATTACK_REQUEST_BACKSTEP and env(GetEventEzStateFlag, 0) == TRUE then
        return FALSE
    end

    SetWeightIndex()

    -----------------------
    -- Roll
    -----------------------
    if request == ATTACK_REQUEST_ROLLING then

	    if c_IsStealth == FALSE then
	        StealthTransitionIndexUpdate()
	        ExecEvent("W_Stealth_to_Stealth_Idle")
	        return TRUE
	    elseif c_IsStealth == TRUE then
	        StealthTransitionIndexUpdate()
	        ExecEvent("W_Stealth_to_Idle")
	        return TRUE
	    end
    elseif request == ATTACK_REQUEST_EMERGENCYSTEP then

	    if c_IsStealth == FALSE then
	        StealthTransitionIndexUpdate()
	        ExecEvent("W_Stealth_to_Stealth_Idle")
	        return TRUE
	    elseif c_IsStealth == TRUE then
	        StealthTransitionIndexUpdate()
	        ExecEvent("W_Stealth_to_Idle")
	        return TRUE
	    end
    elseif request == ATTACK_REQUEST_BACKSTEP then

	    if c_IsStealth == FALSE then
	        StealthTransitionIndexUpdate()
	        ExecEvent("W_Stealth_to_Stealth_Idle")
	        return TRUE
	    elseif c_IsStealth == TRUE then
	        StealthTransitionIndexUpdate()
	        ExecEvent("W_Stealth_to_Idle")
	        return TRUE
	    end
    else
        return FALSE
    end

    if GetVariable("IsEnableToggleDashTest") == 2 then
        SetVariable("ToggleDash", 0)
    end

    act(SetNpcAIAttackRequestIDAfterBlend, env(GetNpcAIAttackRequestID))
    SetAIActionState()

    return TRUE
end

function ii_ExecJump()
	DODGE_KEY = ACTION_ARM_CHANGE_STYLE

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

    if (env(ActionRequest, ACTION_ARM_CHANGE_STYLE) == FALSE) and env(IsAIJumpRequested) == FALSE then
        return FALSE
    end
    if env(GetStamina) <= 0 and env(IsAIJumpRequested) == FALSE then
        ResetRequest()
        return FALSE
    end
	if env(1108, ACTION_ARM_SP_MOVE) > 0 and env(1116, 330800) == TRUE and GetVariable("EvasionWeightIndex") == EVASION_WEIGHT_INDEX_LIGHT and env(2016) >= 30 and winded == 0 then
		if env(ActionRequest, ACTION_ARM_CHANGE_STYLE) == TRUE and warp_f < 9 and env(1116, 9000003) == FALSE and env(201) == TRUE then
		    if env(1116, 3245) == TRUE then
			lit = 0
		        act(2002, 3246)
		    end
			act(2002, 9017001)
			if env(1116, 9017001) == TRUE then
				return FALSE
			end
		end
        end

        if env(GetFallHeight) > 150 then
            return FALSE
        end
	-- disable backstep entirely -- Russell
    if GetVariable("MoveSpeedLevel") < 0.06 and false then
		--if env(ActionDuration, ACTION_ARM_ACTION) > 0 then

			--act(2002, 81)
			--mountframes = 3
		--else
        ResetDamageCount()

        if env(GetStamina) <= 0 then
            ResetRequest()
            return FALSE
        end
        if env(GetSpEffectID, 102360) == FALSE then
            AddStamina(STAMINA_REDUCE_BACKSTEP)
        end

        if IsEnableGuard() == TRUE and IsGuard() == TRUE and GetVariable("EvasionWeightIndex")
            ~= EVASION_WEIGHT_INDEX_OVERWEIGHT then
            SetVariable("BackStepGuardLayer", 1)
            SetVariable("EnableTAE_BackStep", false)
            ExecEvent("W_DefaultBackStep")
            ExecEvent("W_BackStepGuardOn_UpperLayer")
        else
            SetVariable("BackStepGuardLayer", 0)
            SetVariable("EnableTAE_BackStep", true)
            ExecEventAllBody("W_DefaultBackStep")
        end
		--end
    else

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

        if GetVariable("IsLockon") == false and env(IsPrecisionShoot) == FALSE and env(IsCOMPlayer) == FALSE
            or env(GetSpEffectID, 100002) == TRUE then
            SetVariable("RollingOverweightIndex", 0)

            if is_selfTrans == TRUE then
                SetVariable("RollingDirectionIndex_SelfTrans", 0)
            else
                SetVariable("RollingDirectionIndex", 0)
            end
        elseif GetVariable("EvasionWeightIndex") == EVASION_WEIGHT_INDEX_OVERWEIGHT then
            if RollingAngle <= 45 and RollingAngle >= -45 then
                SetVariable("RollingOverweightIndex", 0)
            elseif RollingAngle > 45 and RollingAngle < 135 then
                SetVariable("RollingOverweightIndex", 3)
            elseif RollingAngle >= 135 then
                SetVariable("RollingOverweightIndex", 1)
            elseif RollingAngle < -45 and RollingAngle > -135 then
                SetVariable("RollingOverweightIndex", 2)
            else
                SetVariable("RollingOverweightIndex", 1)
            end

            act(TurnToLockonTargetImmediately)

            turn_angle_real = math.abs(GetVariable("TurnAngle") - RollingAngle)

            if turn_angle_real > 180 then
                turn_angle_real = 360 - turn_angle_real
            end
        else
            local turn_target_angle = 0
            local rollingDirection = 0

            if RollingAngle <= GetVariable("RollingAngleThresholdRightFrontTest") and RollingAngle
                >= GetVariable("RollingAngleThresholdLeftFrontTest") then
                rollingDirection = 0
                turn_target_angle = RollingAngle
            elseif RollingAngle > GetVariable("RollingAngleThresholdRightFrontTest") and RollingAngle
                < GetVariable("RollingAngleThresholdRightBackTest") then
                rollingDirection = 3
                turn_target_angle = RollingAngle - 90
            elseif RollingAngle < GetVariable("RollingAngleThresholdLeftFrontTest") and RollingAngle
                > GetVariable("RollingAngleThresholdLeftBackTest") then
                rollingDirection = 2
                turn_target_angle = RollingAngle + 90
            else
                rollingDirection = 1
                turn_target_angle = RollingAngle - 180
            end

            if is_selfTrans == TRUE then
                SetVariable("RollingDirectionIndex_SelfTrans", rollingDirection)
            else
                SetVariable("RollingDirectionIndex", rollingDirection)
            end

            if GetVariable("IsLockon") == true then
                act(TurnToLockonTargetImmediately, turn_target_angle)
            else
                act(FaceDirection, turn_target_angle)
            end

            turn_angle_real = math.abs(GetVariable("TurnAngle") - RollingAngle)

            if turn_angle_real > 180 then
                turn_angle_real = 360 - turn_angle_real
            end
        end

        SetVariable("TurnAngleReal", turn_angle_real)

        if is_selfTrans == TRUE then
            SetVariable("RollingAngleRealSelftrans", RollingAngle)
        else
            SetVariable("RollingAngleReal", RollingAngle)
        end

        ExecEventAllBody(rollingEvent)
    end
end

function ii_ExecWeaponChange(blend_type)
    local kind = WEAPON_CHANGE_REQUEST_INVALID

    if c_HasActionRequest == FALSE then
        return FALSE
    end
    if env(IsGeneralAnimCancelPossible) == FALSE and env(IsStayState) == FALSE then
        return FALSE
    end
    if env(GetSpEffectID, 100730) == TRUE then
        return FALSE
    end
	if (env(1108, ACTION_ARM_ACTION) <= 0) then
	    if env(ActionRequest, ACTION_ARM_CHANGE_WEAPON_R) == TRUE then
		        kind = GetWeaponChangeType(HAND_RIGHT)
	    elseif env(ActionRequest, ACTION_ARM_CHANGE_WEAPON_L) == TRUE then
		        kind = GetWeaponChangeType(HAND_LEFT)
	    else
	        return FALSE
	    end
	elseif (env(1108, ACTION_ARM_ACTION) > 0) then
        	HandChangeTest_ToR1 = FALSE
        	HandChangeTest_ToR2 = FALSE
        	HandChangeTest_ToL1 = FALSE
        	HandChangeTest_ToL2 = FALSE
		if isswap == 0 then
	    if env(ActionRequest, ACTION_ARM_R2) == TRUE then
		QsSaveBuff()
			--busy = 1
                HandChangeTest_ToR2 = TRUE
            	return ExecHandChange(HAND_RIGHT, TRUE, blend_type)
	    elseif env(ActionRequest, ACTION_ARM_L2) == TRUE then
		QsSaveBuff()
			--busy = 1
                HandChangeTest_ToL2 = TRUE
        	return ExecHandChange(HAND_LEFT, TRUE, blend_type)
	    else
	        return FALSE
	    end
		elseif isswap == 1 then
	    if env(ActionRequest, ACTION_ARM_R1) == TRUE then
		QsSaveBuff()
			--busy = 1
                HandChangeTest_ToR1 = TRUE
            	return ExecHandChange(HAND_RIGHT, TRUE, blend_type)
	    elseif env(ActionRequest, ACTION_ARM_L1) == TRUE then
		QsSaveBuff()
			--busy = 1
                HandChangeTest_ToL1 = TRUE
        	return ExecHandChange(HAND_LEFT, TRUE, blend_type)
	    else
	        return FALSE
	    end
		end
	end
	if isquick == 1 then
    if kind == WEAPON_CHANGE_REQUEST_INVALID then
        return FALSE
    end
	elseif isquick == 0 then
		
    if env(ActionRequest, ACTION_ARM_CHANGE_WEAPON_R) == TRUE then
		QsSaveBuff()
		cleaned_R = 0
			busy = 1
        kind = GetWeaponChangeType(HAND_RIGHT)
    elseif env(ActionRequest, ACTION_ARM_CHANGE_WEAPON_L) == TRUE then
		QsSaveBuff()
		cleaned_L = 0
			busy = 1
        kind = GetWeaponChangeType(HAND_LEFT)
    else
        return FALSE
    end

    if kind == WEAPON_CHANGE_REQUEST_INVALID then
        return FALSE
    end

    SetVariable("WeaponChangeType", kind)

    if blend_type == ALLBODY and MoveStart(LOWER, Event_Move, FALSE) == TRUE then
        blend_type = UPPER
    end

    local event = Event_WeaponChangeStart

    if c_IsStealth == TRUE then
        event = Event_StealthWeaponChangeStart
    end

    ExecEventHalfBlend(event, blend_type)
    act(SetNpcAIAttackRequestIDAfterBlend, env(GetNpcAIAttackRequestID))
    SetAIActionState()

    return TRUE
	end
end
--ladder

function ii_ExecLadderMove(hand)
    if env(IsCOMPlayer) == FALSE and istoggle == 0 then
    local sp_action = env(ActionDuration, ACTION_ARM_SP_MOVE)

        if (env(ActionDuration, ACTION_ARM_CHANGE_STYLE) > 0) then
            LadderSendCommand(LADDER_EVENT_COMMAND_EXIT)
            LadderSetActionState(LADDER_ACTION_INVALID)
            ExecEvent("W_LadderDrop")
            return TRUE
        end

    local event_command = GetLadderEventCommand(FALSE)

    if event_command <= 0 then
        return FALSE
    end
    if event_command == LADDER_EVENT_COMMAND_UP then
        if env(IsCOMPlayer) == TRUE and env(DoesLadderHaveCharacters, LADDER_UP_CHECK_DIST, 1, 1) == TRUE then
            if hand == HAND_STATE_RIGHT then
                ExecEvent("W_LadderAttackUpRight")
            else
                ExecEvent("W_LadderAttackUpLeft")
            end
            return TRUE
        end

        if env(IsSomeoneOnLadder, LADDER_UP_CHECK_DIST, 0) == TRUE then
            return FALSE
        end
        if env(ActionDuration, ACTION_ARM_SP_MOVE) > 0 then
            SetVariable("IsFastUp", TRUE)
        else
            SetVariable("IsFastUp", FALSE)
        end

        if hand == HAND_STATE_LEFT then
            ExecEvent("W_LadderUpLeft")
        else
            ExecEvent("W_LadderUpRight")
        end

        return TRUE
    elseif event_command == LADDER_EVENT_COMMAND_DOWN then
        if env(IsCOMPlayer) == TRUE and env(DoesLadderHaveCharacters, LADDER_DOWN_CHECK_DIST, 0, 1) == TRUE then
            if hand == HAND_STATE_RIGHT then
                ExecEvent("W_LadderAttackDownRight")
            else
                ExecEvent("W_LadderAttackDownLeft")
            end
            return TRUE
        end
        if env(IsSomeoneUnderLadder, LADDER_DOWN_CHECK_DIST, 0) == TRUE then
            return FALSE
        end
        if env(ActionDuration, ACTION_ARM_SP_MOVE) > 0 then
            ExecEvent("W_LadderCoastStart")
            return TRUE
        end
        if hand == HAND_STATE_LEFT then
            ExecEvent("W_LadderDownLeft")
        else
            ExecEvent("W_LadderDownRight")
        end

        return TRUE
    elseif event_command == LADDER_EVENT_COMMAND_END_TOP then
        if hand == HAND_STATE_LEFT then
            ExecEvent("W_LadderEndTopLeft")
        else
            ExecEvent("W_LadderEndTopRight")
        end

        return TRUE
    elseif event_command == LADDER_EVENT_COMMAND_END_BOTTOM then
        if hand == HAND_STATE_LEFT then
            ExecEvent("W_LadderEndBottomLeft")
        else
            ExecEvent("W_LadderEndBottomRight")
        end

        return TRUE
    end
    return FALSE
elseif env(IsCOMPlayer) == FALSE and istoggle == 1 then
    local sp_action = env(ActionDuration, ACTION_ARM_SP_MOVE)

        if (env(ActionDuration, ACTION_ARM_CHANGE_STYLE) > 0) then
            LadderSendCommand(LADDER_EVENT_COMMAND_EXIT)
            LadderSetActionState(LADDER_ACTION_INVALID)
            ExecEvent("W_LadderDrop")
            return TRUE
        end

    local event_command = GetLadderEventCommand(FALSE)

    if event_command <= 0 then
        return FALSE
    end
    if event_command == LADDER_EVENT_COMMAND_UP then
        if env(IsCOMPlayer) == TRUE and env(DoesLadderHaveCharacters, LADDER_UP_CHECK_DIST, 1, 1) == TRUE then
            if hand == HAND_STATE_RIGHT then
                ExecEvent("W_LadderAttackUpRight")
            else
                ExecEvent("W_LadderAttackUpLeft")
            end
            return TRUE
        end

        if env(IsSomeoneOnLadder, LADDER_UP_CHECK_DIST, 0) == TRUE then
            return FALSE
        end
        if env(ActionDuration, ACTION_ARM_SP_MOVE) > 0 then
            SetVariable("IsFastUp", TRUE)
        else
            SetVariable("IsFastUp", FALSE)
        end

        if hand == HAND_STATE_LEFT then
            ExecEvent("W_LadderUpLeft")
        else
            ExecEvent("W_LadderUpRight")
        end

        return TRUE
    elseif event_command == LADDER_EVENT_COMMAND_DOWN then
        if env(IsCOMPlayer) == TRUE and env(DoesLadderHaveCharacters, LADDER_DOWN_CHECK_DIST, 0, 1) == TRUE then
            if hand == HAND_STATE_RIGHT then
                ExecEvent("W_LadderAttackDownRight")
            else
                ExecEvent("W_LadderAttackDownLeft")
            end
            return TRUE
        end
        if env(IsSomeoneUnderLadder, LADDER_DOWN_CHECK_DIST, 0) == TRUE then
            return FALSE
        end
        if env(ActionDuration, ACTION_ARM_SP_MOVE) > 0 then
            ExecEvent("W_LadderCoastStart")
            return TRUE
        end
        if hand == HAND_STATE_LEFT then
            ExecEvent("W_LadderDownLeft")
        else
            ExecEvent("W_LadderDownRight")
        end

        return TRUE
    elseif event_command == LADDER_EVENT_COMMAND_END_TOP then
        if hand == HAND_STATE_LEFT then
            ExecEvent("W_LadderEndTopLeft")
        else
            ExecEvent("W_LadderEndTopRight")
        end

        return TRUE
    elseif event_command == LADDER_EVENT_COMMAND_END_BOTTOM then
        if hand == HAND_STATE_LEFT then
            ExecEvent("W_LadderEndBottomLeft")
        else
            ExecEvent("W_LadderEndBottomRight")
        end

        return TRUE
    end
    return FALSE
end
end

function ii_LadderCoastCommonFunction(hand, is_start)
    if env(IsCOMPlayer) == FALSE and istoggle == 0 then
    act(SetCanChangeEquipmentOn)

    if ExecLadderDeath() == TRUE then
        return TRUE
    end
    if ExecLadderDamageMove() == TRUE then
    end

    if is_start == FALSE then
        if env(IsOnLastRungOfLadder) == TRUE then
            ExecEvent("W_LadderCoastLanding")
            return TRUE
        end

        local event_command = GetLadderEventCommand(FALSE)

        if env(ActionDuration, ACTION_ARM_SP_MOVE) <= 0 or env(MovementRequestDuration) <= 0 or event_command > 0
            and event_command ~= LADDER_EVENT_COMMAND_DOWN or env(IsSomeoneUnderLadder, LADDER_DOWN_CHECK_DIST, 0)
            == TRUE then
            act(LadderSlideDownCancel)
            if env(GetNumberOfRungsBelowOnLadder) % 2 == 0 then
                ExecEvent("W_LadderCoastStopRight")
            else
                ExecEvent("W_LadderCoastStopLeft")
            end
            return TRUE
        end
    elseif env(IsAnimEnd, 1) == TRUE then
        if CheckLadderDamage(hand) == TRUE then
            return TRUE
        end
        ExecEvent("W_LadderCoastLeft")
        return TRUE
    end
    return FALSE
elseif env(IsCOMPlayer) == FALSE and istoggle == 1 then
    act(SetCanChangeEquipmentOn)

    if ExecLadderDeath() == TRUE then
        return TRUE
    end
    if ExecLadderDamageMove() == TRUE then
    end

    if is_start == FALSE then
        if env(IsOnLastRungOfLadder) == TRUE then
            ExecEvent("W_LadderCoastLanding")
            return TRUE
        end

        local event_command = GetLadderEventCommand(FALSE)

        if env(ActionDuration, ACTION_ARM_SP_MOVE) <= 0 or env(MovementRequestDuration) <= 0 or event_command > 0
            and event_command ~= LADDER_EVENT_COMMAND_DOWN or env(IsSomeoneUnderLadder, LADDER_DOWN_CHECK_DIST, 0)
            == TRUE then
            act(LadderSlideDownCancel)
            if env(GetNumberOfRungsBelowOnLadder) % 2 == 0 then
                ExecEvent("W_LadderCoastStopRight")
            else
                ExecEvent("W_LadderCoastStopLeft")
            end
            return TRUE
        end
    elseif env(IsAnimEnd, 1) == TRUE then
        if CheckLadderDamage(hand) == TRUE then
            return TRUE
        end
        ExecEvent("W_LadderCoastLeft")
        return TRUE
    end
    return FALSE
end
end
--horse
function ii_ExecRideOff(is_force, rideOffAnyway)
    if is_force == FALSE and env(ActionRequest, ACTION_ARM_CHANGE_STYLE) == FALSE then
        return FALSE
    end
    if is_force == FALSE and (env(GetGeneralTAEFlag, TAE_FLAG_CHARGING) == 1 or env(GetSpEffectID, 100280) == TRUE) then
        ResetRequest()
        return FALSE
    end

    local unhorseDir = -1

    if env(GetMountReceivedDamageDirection, 2) == TRUE then
        unhorseDir = 2
    elseif env(GetMountReceivedDamageDirection, 3) == TRUE then
        unhorseDir = 3
    elseif env(GetMountReceivedDamageDirection, 1) == TRUE then
        unhorseDir = 1
    end

    if unhorseDir < 0 then
        if rideOffAnyway == FALSE then
            return FALSE
        else
            unhorseDir = 2
        end
    end

    local event = "W_RideOff"
    local event_under = "W_RideOff"

    if env(GetSpEffectID, 19995) == TRUE then
        event = "W_RideDamage_Fall_AbyssalForest"
        event_under = "W_RideDamage_Fall_AbyssalForest"
    elseif GetVariable("MoveSpeedLevel") >= 0.8999999761581421 and rideOffAnyway ~= TRUE then
        event = "W_Jump_RideOff"

        if GetVariable("MoveSpeedLevel") >= 1.5 or 1 <= GetVariable("ToggleDash") then
            event_under = "W_RideOffGallop"
            SetVariable("RideOff_Jump_Speed", 1)
        else
            event_under = "W_RideOffDash"
            SetVariable("RideOff_Jump_Speed", 0)
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
        SetVariable("IsEnableDirectionJumpTAE", true)

        if GetVariable("IsEnableToggleDashTest") == 2 then
            SetVariable("ToggleDash", 0)
        end
    elseif unhorseDir == 2 then
        SetVariable("Int16Variable02", 0)
    elseif unhorseDir == 3 then
        SetVariable("Int16Variable02", 1)
    elseif unhorseDir == 1 then
        SetVariable("Int16Variable02", 2)
    end

    FireRideEvent(event, event_under, FALSE)

    return TRUE
end

function ii_ExecRideDashAccelerate()
    if env(GetStamina) <= 0 or env(GetSpEffectID, 100020) == TRUE then
        ResetRequest()
        return FALSE
    end

    local testControl = 3

    if testControl == 2 or testControl == 12 then
        SetVariable("IsEnableToggleDashTest", 0)

        if env(ActionRequest, ACTION_ARM_SP_MOVE) == TRUE and env(GetStamina) <= 0 then
            ResetRequest()
        end

        local evasionRequest = env(ActionRequest, ACTION_ARM_SP_MOVE)
        if evasionRequest == TRUE then
            if env(GetSpEffectID, 102360) == FALSE then
                act(ChangeStamina, STAMINA_REDUCE_RIDE_DASH)
            end
            if IsNodeActive("RideDashAccelerate CMSG") == TRUE or IsNodeActive("RideDashAccelerateContinue CMSG") == TRUE then
                FireRideEvent("W_RideDashAccelerateContinue", "W_RideDashAccelerateContinue", FALSE)
            else
                FireRideEvent("W_RideDashAccelerate", "W_RideDashAccelerate", FALSE)
            end
            return TRUE
        end
    elseif testControl == 3 or testControl == 13 then
        SetVariable("IsEnableToggleDashTest", 4)
        local evasionRequest = env(ActionRequest, ACTION_ARM_SP_MOVE)

        if evasionRequest == TRUE and env(GetStamina) <= 0 then
            ResetRequest()
        end
        if env(GetSpEffectID, 100903) == TRUE then
            return FALSE
        end
        -- "O" Pressed
        if evasionRequest == TRUE then
            if env(GetSpEffectID, 102360) == FALSE then
                act(ChangeStamina, STAMINA_REDUCE_RIDE_DASH)
            end

            SetVariable("ToggleDash", 1)

            if IsNodeActive("RideDashAccelerate CMSG") == TRUE or IsNodeActive("RideDashAccelerateContinue CMSG") == TRUE then
                FireRideEvent("W_RideDashAccelerateContinue", "W_RideDashAccelerateContinue", FALSE)
            else
                FireRideEvent("W_RideDashAccelerate", "W_RideDashAccelerate", FALSE)
            end
            return TRUE
        end
    else
        SetVariable("IsEnableToggleDashTest", 0)
        if RideDashAccelerateTest == 0 and env(ActionDuration, ACTION_ARM_SP_MOVE) > 0 then
            act(DebugLogOutput, "RideDashAccel")
        end

        local evasionRequest = env(ActionDuration, ACTION_ARM_SP_MOVE)

        if (env(IsStayState) == TRUE or env(IsGeneralAnimCancelPossible) == TRUE) and evasionRequest > 0 and 0
            >= RideDashAccelerateTest and env(GetStamina) > 0 then
            if env(GetSpEffectID, 102360) == FALSE then
                act(ChangeStamina, STAMINA_REDUCE_RIDE_DASH)
            end
            if IsNodeActive("RideDashAccelerate CMSG") == TRUE or IsNodeActive("RideDashAccelerateContinue CMSG") == TRUE then
                FireRideEvent("W_RideDashAccelerateContinue", "W_RideDashAccelerateContinue", FALSE)
            else
                FireRideEvent("W_RideDashAccelerate", "W_RideDashAccelerate", FALSE)
            end
            return TRUE
        end

        RideDashAccelerateTest = env(ActionDuration, ACTION_ARM_SP_MOVE)

        if IsNodeActive("RideDashAccelerate CMSG") == FALSE and IsNodeActive("RideDashAccelerateContinue CMSG") == FALSE then
            if env(ActionRequest, ACTION_ARM_SP_MOVE) == TRUE and env(GetStamina) <= 0 then
                ResetRequest()
            end

            local evasionRequest = env(ActionRequest, ACTION_ARM_SP_MOVE)

            if evasionRequest == ATTACK_REQUEST_ROLLING and env(GetStamina) > 0 then
                if env(GetSpEffectID, 102360) == FALSE then
                    act(ChangeStamina, STAMINA_REDUCE_RIDE_DASH)
                end

                if IsNodeActive("RideDashAccelerate CMSG") == TRUE or IsNodeActive("RideDashAccelerateContinue CMSG")
                    == TRUE then
                    FireRideEvent("W_RideDashAccelerateContinue", "W_RideDashAccelerateContinue", FALSE)
                else
                    FireRideEvent("W_RideDashAccelerate", "W_RideDashAccelerate", FALSE)
                end
                return TRUE
            end
        end
    end
    return FALSE
end

function ii_Ride_Activate()
grnded = 1
grnded_f = 1
end

function ii_Ride_Update()
grnded = 1
grnded_f = 1
end

function ii_Ride_Deactivate()
grnded = 1
grnded_f = 1
end

function ii_RideCommonFunction(r1, r2, l1, l2)
    Ride_HeadDown_Rate = EaseInOutVal(g_TimeActEditor_07, Ride_HeadDown_Rate, 0.800000011920929, 1.5,
        "EaseInOutStartVal1", "EaseInOutTargetVal1", "EaseInOutTimer1")
    act(ApplyRideBlend, "AddBlend02", Ride_HeadDown_Rate)

    if RideReActionFunction() == TRUE then
        return TRUE
    end
    if ExecRideDashAccelerate() == TRUE then
        return TRUE
    end
    if ExecRideWeaponChange() == TRUE then
        return TRUE
    end
    if ExecRideOff(FALSE, FALSE) == TRUE then
        return TRUE
    end

    local attackHand = HAND_RIGHT

    if c_Style == HAND_LEFT_BOTH then
        attackHand = HAND_LEFT
    end

    local isShield = GetEquipType(attackHand, WEAPON_CATEGORY_LARGE_SHIELD, WEAPON_CATEGORY_SMALL_SHIELD,
        WEAPON_CATEGORY_MIDDLE_SHIELD)

    if env(ActionRequest, ACTION_ARM_L3) == TRUE
        and (env(GetGeneralTAEFlag, TAE_FLAG_CHARGING) ~= 1 and env(GetSpEffectID, 100280) == FALSE or isShield == TRUE) then
        if env(GetStamina) <= 0 then
            ResetRequest()
        else
            local highJumpHeight = env(GetSpiritspringJumpHeight)

            -- Normal Spiritspring Jump
            if highJumpHeight > 0 then
                act(DebugLogOutput, "RideJumpHigh Height=" .. highJumpHeight .. "cm")
                Ride_HighJump_Height = highJumpHeight + 700
                FireRideEvent("W_RideJumpHigh", "W_RideJumpHigh", FALSE)
                return TRUE
            end

            -- Normal Jump
            if env(GetSpEffectID, 102360) == FALSE then
                act(ChangeStamina, STAMINA_REDUCE_RIDE_JUMP)
            end

            if 1.5 <= GetVariable("MoveSpeedLevel") then
                FireRideEvent("W_RideJump_D", "W_RideJump_D", FALSE)
            elseif GetVariable("MoveSpeedLevel") >= 0.6000000238418579 then
                FireRideEvent("W_RideJump_F", "W_RideJump_F", FALSE)
            else
                FireRideEvent("W_RideJump_N", "W_RideJump_N", FALSE)
            end
            return TRUE
        end
    end

    if ExecRideHandChange(HAND_RIGHT, FALSE) == TRUE then
        return TRUE
    end
    if ExecRideMagic() == TRUE then
        return TRUE
    end
    if ExecRideAttack(r1, r2, l1, l2) == TRUE then
        return TRUE
    end
    if ExecRideItem() == TRUE then
        return TRUE
    end
    if ExecRideGesture() == TRUE then
        return TRUE
    end
    return FALSE
end

function ii_RideJumpHigh_onUpdate()
    act(AddSpEffect, 185)
    if env(ActionRequest, ACTION_ARM_L3) == TRUE then
        FireRideEvent("W_RideJumpHigh2", "W_RideJumpHigh2", FALSE)
        RIDE_ISENABLE_DOUBLEJUMP = FALSE
        return
    end
    if env(IsAnimEnd, 0) == TRUE or env(GetEventEzStateFlag, 0) == TRUE then
        rideJumpHighLoop_StopTime = 0
        lastFallHeight = 0
        rideJumpHighLoop_IsStop = FALSE
        FireRideEvent("W_RideJumpHighLoop", "W_RideJumpHighLoop", FALSE)
        return
    end
    if RideJumpCommonFunction(0, FALSE, FALSE, TRUE) == TRUE then
        return
    end
end

function ii_RideJumpHighEnd_onUpdate()
    act(AddSpEffect, 185)
    if env(ActionRequest, ACTION_ARM_L3) == TRUE then
        FireRideEvent("W_RideJumpHigh2", "W_RideJumpHigh2", FALSE)
        RIDE_ISENABLE_DOUBLEJUMP = FALSE
        return
    end
    if RideJumpCommonFunction(0, FALSE, FALSE, TRUE) == TRUE then
        return
    end
end

function ii_RideJumpCommonFunction(jump_type, lower_only, isSecond, isHighJump)
    act(DisallowAdditiveTurning, TRUE)
    SetVariable("Int16Variable01", 1)
    local damage_type = env(GetReceivedDamageType)

    if damage_type == DAMAGE_TYPE_DEATH_FALLING and isHighJump == FALSE and env(GetSpEffectID, 185) == FALSE then
        FireRideEvent("W_RideDeath", "W_RideDeath", FALSE)
        return TRUE
    end

    local height = env(GetMountFallHeight) / 100

    if env(IsMountTrulyLanding) == TRUE and IsLandDead(height) == TRUE and isHighJump == FALSE
        and env(GetSpEffectID, 185) == FALSE then
        act(DebugLogOutput, height)
        FireRideEvent("W_RideDeath", "W_RideDeath", FALSE)
        return
    end
    if RideReActionFunction() == TRUE then
        return TRUE
    end
    if env(ActionRequest, ACTION_ARM_L3) == TRUE and env(GetSpEffectID, 100902) == TRUE and RIDE_ISENABLE_DOUBLEJUMP == TRUE then
        if env(GetStamina) <= 0 or height > DISABLEJUMP_FALLDIST then
            ResetRequest()
        else
            if env(GetSpEffectID, 102360) == FALSE then
                act(ChangeStamina, STAMINA_REDUCE_RIDE_JUMP)
            end

            if GetVariable("MoveSpeedLevel") >= 1.5 then
                FireRideEvent("W_RideJump2_D", "W_RideJump2_D", FALSE)
            elseif GetVariable("MoveSpeedLevel") >= 0.6000000238418579 then
                FireRideEvent("W_RideJump2_F", "W_RideJump2_F", FALSE)
            else
                FireRideEvent("W_RideJump2_N", "W_RideJump2_N", FALSE)
            end

            RIDE_ISENABLE_DOUBLEJUMP = FALSE
            return TRUE
        end
    end

    if env(IsMountTrulyLanding) == TRUE and env(GetMountSpEffectID, 98) == TRUE and env(GetMountSpEffectID, 140) == FALSE then
        if GetVariable("MoveSpeedLevel") > 1.5 then
            FireRideEvent("W_RideJump_Land_To_Gallop", "W_RideJump_Land_To_Gallop", lower_only)
            return TRUE
        elseif GetVariable("MoveSpeedLevel") > 0.6000000238418579 then
            FireRideEvent("W_RideJump_Land_To_Dash", "W_RideJump_Land_To_Dash", lower_only)
            return TRUE
        end

        local landEvent = "W_RideJump_Land_N"

        if jump_type == 3 then
            landEvent = "W_RideJump_Land_D"
        elseif jump_type == 2 then
            landEvent = "W_RideJump_Land_F"
        end

        act(DebugLogOutput, landEvent)
        FireRideEvent(landEvent, landEvent, lower_only)
        return TRUE
    end

    local enable_jumpAttack = TRUE
    local attackHand = HAND_RIGHT

    if c_Style == HAND_LEFT_BOTH then
        attackHand = HAND_LEFT
    end

    if GetEquipType(attackHand, WEAPON_CATEGORY_ARROW, WEAPON_CATEGORY_SMALL_ARROW, WEAPON_CATEGORY_CROSSBOW) == TRUE then
        enable_jumpAttack = FALSE
    end

    local is_staff = GetEquipType(attackHand, WEAPON_CATEGORY_STAFF)

    if enable_jumpAttack == TRUE then
        if env(ActionRequest, ACTION_ARM_R1) == TRUE and is_staff == FALSE or env(ActionRequest, ACTION_ARM_R2) == TRUE
            and is_staff == TRUE then
            SetVariable("RideJumpAttack_Land", 0)
            SetVariable("IndexRideJumpType", jump_type)
            ExecEventAllBody("W_RideAttack_Jump_R")
            RideJumpLoop_IsSecond = isSecond
            return TRUE
        elseif env(ActionRequest, ACTION_ARM_L1) == TRUE and is_staff == FALSE or env(ActionRequest, ACTION_ARM_L2)
            == TRUE and is_staff == TRUE then
            SetVariable("RideJumpAttack_Land", 0)
            SetVariable("IndexRideJumpType", jump_type)
            ExecEventAllBody("W_RideAttack_Jump_L")
            RideJumpLoop_IsSecond = isSecond
            return TRUE
        end
    end

    if env(IsAnimEnd, 0) == TRUE and lower_only == FALSE then
        SetVariable("IndexRideJumpType", jump_type)
        if isHighJump == TRUE then
            ExecEventNoReset("W_RideJumpHigh_FallLoop")
        elseif isSecond == TRUE then
            ExecEventNoReset("W_RideJump2_Loop")
        else
            ExecEventNoReset("W_RideJump_Loop")
        end
        return TRUE
    end
    return FALSE
end

function ii_RideFallCommonFunction()
    local damage_type = env(GetReceivedDamageType)

    if damage_type == DAMAGE_TYPE_DEATH_FALLING and env(GetSpEffectID, 185) == FALSE then
        FireRideEvent("W_RideDeath", "W_RideDeath", FALSE)
        return TRUE
    end
    if env(ActionRequest, ACTION_ARM_L3) == TRUE and env(GetSpEffectID, 100902) == TRUE and RIDE_ISENABLE_DOUBLEJUMP == TRUE then
        local height = env(GetMountFallHeight) / 100
        if env(GetStamina) <= 0 or height > DISABLEJUMP_FALLDIST then
            ResetRequest()
        else
            if env(GetSpEffectID, 102360) == FALSE then
                act(ChangeStamina, STAMINA_REDUCE_RIDE_JUMP)
            end

            if GetVariable("MoveSpeedLevel") >= 1.5 then
                FireRideEvent("W_RideJump2_D", "W_RideJump2_D", FALSE)
            elseif GetVariable("MoveSpeedLevel") >= 0.6000000238418579 then
                FireRideEvent("W_RideJump2_F", "W_RideJump2_F", FALSE)
            else
                FireRideEvent("W_RideJump2_N", "W_RideJump2_N", FALSE)
            end
        end

        RIDE_ISENABLE_DOUBLEJUMP = FALSE
        return TRUE
    end
    return FALSE
end

function ii_DamageCommonFunction(guardcondition, estep, fall_type)
    if ExecPassiveAction(FALSE, fall_type, FALSE) == TRUE then
        return TRUE
    end
busy = 1
busy_f = 0

dmged = 1
dmged_f = 0
    SetVariable("ToggleDash", 0)
    SetEnableAimMode()

    if c_SwordArtsID == 352 and (c_SwordArtsHand == HAND_LEFT or c_Style == HAND_RIGHT_BOTH)
        and env(GetSpEffectID, 102340) == TRUE and 0 < env(ActionDuration, ACTION_ARM_L2) then
        if c_Style == HAND_RIGHT_BOTH or c_Style == HAND_LEFT_BOTH then
            SetSwordArtsPointInfo(ACTION_ARM_L2, TRUE)
            ExecEventAllBody("W_SwordArtsBothGuardCounter")
            return TRUE
        else
            SetSwordArtsPointInfo(ACTION_ARM_L2, TRUE)
            ExecEventAllBody("W_SwordArtsLeftGuardCounter")
            return TRUE
        end
    end

    if ExecHandChange(HAND_RIGHT, FALSE, ALLBODY) == TRUE then
        ResetDamageCount()
        return TRUE
    end
    if ExecWeaponChange(ALLBODY) == TRUE then
        ResetDamageCount()
        return TRUE
    end

    local is_usechainrecover = GetVariable("UseChainRecover")


    if ExecItem(QUICKTYPE_NORMAL, ALLBODY) == TRUE then
        ResetDamageCount()
        return TRUE
    end
    if ExecMagic(QUICKTYPE_NORMAL, ALLBODY, FALSE) == TRUE then
        ResetDamageCount()
        return TRUE
    end
    if ExecArtsStanceOnCancelTiming(ALLBODY) == TRUE then
        ResetDamageCount()
        return TRUE
    end
    if ExecAttack("W_AttackRightLight1", "W_AttackRightHeavy1Start", "W_AttackLeftLight1", "W_AttackLeftHeavy1",
        "W_AttackBothLight1", "W_AttackBothHeavy1Start", guardcondition, ALLBODY, FALSE, FALSE, FALSE) == TRUE then
        ResetDamageCount()
        return TRUE
    end
    if env(IsMoveCancelPossible) == TRUE then
        ResetDamageCount()
    end
    if ExecQuickTurnOnCancelTiming() == TRUE then
        return TRUE
    end
    if ExecGuardOnCancelTiming(guardcondition, ALLBODY) == TRUE then
        ResetDamageCount()
        return TRUE
    end
    if MoveStartonCancelTiming(Event_Move, FALSE) == TRUE then
        ResetDamageCount()
        return TRUE
    end
    return FALSE
end

function ii_EvasionCommonFunction(fall_type, r1, r2, l1, l2, b1, b2, quick_type)
	RollingAngleReal = GetVariable("MoveAngle")
busy = 1
busy_f = 0
sptog = 0
turned = 1
turned_f = 0
end

function ii_MagicCommonFunction(blend_type, quick_type, is_throw)
busy = 1
busy_f = 0
sptog = 0
turned = 1
turned_f = 0
end

function ii_AttackCommonFunction(r1, r2, l1, l2, b1, b2, guardcondition, use_atk_queue, comboCount, gen_hand)
busy = 1
busy_f = 0
sptog = 0
turned = 1
turned_f = 0
end

function ii_ItemCommonFunction(blend_type)
busy = 1
busy_f = 0
sptog = 0
turned = 1
turned_f = 0
end

function ii_JumpCommonFunction(jump_type)
    if targettt == 0 then
		if IS_ATTACKED_JUMPMAGIC == FALSE and GetVariable("JumpAttackForm") == 0 then
			--act(TurnToLockonTargetImmediately, globaljumpangle)
			targettt = 0
		else
			if GetVariable("IsLockon") == true then
				act(TurnToLockonTargetImmediately, globaljumpangle)
				targettt = 1
			else
				act(LockonFixedAngleCancel)
			end
		end
    end
busy = 1
busy_f = 0
turned = 1
turned_f = 0
end

function ii_FallCommonFunction(is_enable_falling_death, is_jump, fall_style)
busy = 1
busy_f = 0
turned = 1
turned_f = 0
end

function ii_LandCommonFunction()
busy = 1
busy_f = 0
turned = 1
turned_f = 0
end






Update = Include(Update, ii_Update)