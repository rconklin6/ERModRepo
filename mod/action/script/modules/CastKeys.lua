------------------------------
ckc_f = 0
tog = 0
mod_CJ = 1
		cc_spell = 0
		ck_con = 0
------------------------------
ckload = 0

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

    if Exists("CKSV.lua") == true then
        require("CKSV")
    else
		cc_spell = 0
		ck_con = 0
            Write("CKSV.lua", "ck_con = 0\ncc_spell = 0")
    end



local function ck_configset()
	if iscycle == 0 then
		ck_con = 0
		Write("CKSV.lua", "ck_con = 0\ncc_spell = 0")
	elseif iscycle == 1 then
		ck_con = 1
		Write("CKSV.lua", "ck_con = 1\ncc_spell = " .. cc_spell)
	end
end

if ck_con == 0 then
	iscycle = 0
elseif ck_con == 1 then
	iscycle = 1
end

local function ck_configcheck()
	if env(1108, ACTION_ARM_USE_ITEM) > 0 and env(1108, ACTION_ARM_SP_MOVE) > 0 and env(1108, ACTION_ARM_CHANGE_STYLE) > 0 then
		if env(1108, ACTION_ARM_SWITCH_FORM) > 0 then
			ckc_f = ckc_f + 1
			if ckc_f < 9 and tog == 0 then
				if iscycle == 0 then
					iscycle = 1
					ck_configset()
					tog = 1
					ckc_f = ckc_f + 9
				elseif iscycle == 1 then
					iscycle = 0
					ck_configset()
					tog = 1
					ckc_f = ckc_f + 9
				end
			end
		else
			ckc_f = 0
			tog = 0
		end
	else
		ckc_f = 0
		tog = 0
	end
end
------------------------------
cc_key = ACTION_ARM_R1
cc_h = 0
cc_c = 0
cc_c_f = 0
------------------------------
local function checkss()
	local slot = env(10000, 0, 5, 0x3D65F88, 0x10EF8, 0x0, 0x580, 0x530, 0x80)
		if slot == nil then
			return 0
		end
	return slot
end

local function checksid(slot)
	local sid = env(10000, 0, 5, 0x3D65F88, 0x10EF8, 0x0, 0x580, 0x530, 0x10 + (slot * 8))
		if sid == nil or slot == nil then
			return -1
		end
	return sid
end

local function selectss(slot)

		if checksid(slot) == -1 then
			act(10000, 1, 5, 0, 0x580, 0x530, 0x80)
		else
			act(10000, 1, 5, slot, 0x580, 0x530, 0x80)
		end
end

local function setss()
	act(10002)
	act(2026)
end

local function Magickeys()
	if iscycle == 0 then
	    if cc_c ~= 0 or cc_h ~= 0 then
		if (env(1108, ACTION_ARM_SWITCH_FORM) > 0 or checkss() == 4 or checkss() == 5) and checksid(3) ~= -1 then
			cc_spell = 3
			selectss(cc_spell)
		elseif (env(1108, ACTION_ARM_CHANGE_ITEM) > 0 or checkss() == 7 or checkss() == 8) and checksid(6) ~= -1 then
			cc_spell = 6
			selectss(cc_spell)
		elseif (env(1108, ACTION_ARM_SWITCH_FORM) <= 0 and env(1108, ACTION_ARM_CHANGE_ITEM) <= 0) or checksid(checkss()) == -1 then
			cc_spell = 0
			selectss(cc_spell)
		end
	    end
	elseif iscycle == 1 then
	    if cc_c ~= 0 then
		if (checkss() == 1 or checkss() == 2) then
			cc_spell = 3
			selectss(cc_spell)
			Write("CKSV.lua", "cc_spell = 3\nck_con = " .. ck_con)
		elseif (checkss() == 4 or checkss() == 5) then
			cc_spell = 6
			selectss(cc_spell)
			Write("CKSV.lua", "cc_spell = 6\nck_con = " .. ck_con)
		elseif (checkss() == 7 or checkss() == 8) then
			cc_spell = 9
			selectss(cc_spell)
			Write("CKSV.lua", "cc_spell = 9\nck_con = " .. ck_con)
		elseif (checkss() == 10 or checkss() == 11) then
			cc_spell = 12
			selectss(cc_spell)
			Write("CKSV.lua", "cc_spell = 12\nck_con = " .. ck_con)
		elseif checksid(checkss()) == -1 or checkss() == 0 then
			cc_spell = 0
			selectss(cc_spell)
			Write("CKSV.lua", "cc_spell = 0\nck_con = " .. ck_con)
		end
	    end
	end
end

function ck_Update()
if env(IsCOMPlayer) == FALSE then
	    ck_configcheck()
	g_DeltaRunTime = g_DeltaRunTime + (1 * (env(ObtainedDT) / 1000))
	if ckload == 0 then
			selectss(cc_spell)

MagicCommonFunction = Include(MagicCommonFunction, ck_MagicCommonFunction)

IsEnableGuard = Include(ck_IsEnableGuard, IsEnableGuard)
ExecMagic = ck_ExecMagic
ExecJumpMagic = ck_ExecJumpMagic
ExecFallMagic = ck_ExecFallMagic
SetEnableAimMode = Include(ck_SetEnableAimMode, SetEnableAimMode)

MagicLoopRight_Upper_onUpdate = ck_MagicLoopRight_Upper_onUpdate
MagicFireRight_Upper_onUpdate = ck_MagicFireRight_Upper_onUpdate
MagicLoopLeft_Upper_onUpdate = ck_MagicLoopLeft_Upper_onUpdate
MagicFireRight2_Upper_onUpdate = ck_MagicFireRight2_Upper_onUpdate
MagicFireRight3_Upper_onUpdate = ck_MagicFireRight3_Upper_onUpdate
MagicFireLeft_Upper_onUpdate = ck_MagicFireLeft_Upper_onUpdate
MagicFireLeft2_Upper_onUpdate = ck_MagicFireLeft2_Upper_onUpdate
MagicFireLeft3_Upper_onUpdate = ck_MagicFireLeft3_Upper_onUpdate
MagicFireRightJump_Upper_onUpdate = ck_MagicFireRightJump_Upper_onUpdate
MagicFireLeftJump_Upper_onUpdate = ck_MagicFireLeftJump_Upper_onUpdate
RideMagicFire_onUpdate = ck_RideMagicFire_onUpdate
RideMagicLoop_onUpdate = ck_RideMagicLoop_onUpdate
RideMagicFireCombo1_onUpdate = ck_RideMagicFireCombo1_onUpdate
RideMagicFireCombo2_onUpdate = ck_RideMagicFireCombo2_onUpdate
		ckload = 1
	end
			if cc_c ~= 0 and cc_c < 30 then
				cc_c = cc_c + 1
			elseif cc_c >= 30 then
				cc_c = 0
			end
			if cc_h ~= 0 and cc_h < 30 then
				cc_h = cc_h + 1
			elseif cc_h >= 30 then
				cc_h = 0
			end

    local sp_kind_R = env(GetEquipWeaponSpecialCategoryNumber, HAND_RIGHT)
    local sp_kind_L = env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT)
	if env(1108, ACTION_ARM_SWITCH_FORM) > 0 then
		cc_c = 1
	end
	if env(1108, ACTION_ARM_CHANGE_ITEM) > 0 then
		cc_h = 1
	end
    if ((GetEquipType(HAND_LEFT, WEAPON_CATEGORY_STAFF, 18, 240) == TRUE) and ((env(1108, ACTION_ARM_L1) > 0 or env(1108, ACTION_ARM_CHANGE_WEAPON_L) > 0) or c_Style == HAND_LEFT_BOTH)) or (GetEquipType(HAND_RIGHT, WEAPON_CATEGORY_STAFF, 18, 240) == TRUE) then
		GetAttackRequest = ck_GetAttackRequest
		ExecFallAttack = ck_ExecFallAttack
    elseif (IsWeaponCatalyst(sp_kind_L) == TRUE and (env(ActionDuration, ACTION_ARM_L2) > 0 or (c_Style == HAND_LEFT_BOTH))) then
		GetAttackRequest = ck_GetAttackRequest
		ExecFallAttack = ck_ExecFallAttack
    elseif IsWeaponCatalyst(sp_kind_R) == TRUE then
		GetAttackRequest = ck_GetAttackRequest
		ExecFallAttack = ck_ExecFallAttack
	else
		GetAttackRequest = bak_GetAttackRequest
		ExecFallAttack = bak_ExecFallAttack
    end
end
end

function ck_IsEnableGuard()
    local style = c_Style
    local hand = HAND_LEFT

    if style == HAND_RIGHT_BOTH then
        hand = HAND_RIGHT
    end

    local sp_kind = env(GetEquipWeaponSpecialCategoryNumber, hand)
    local sp_kind_R = env(GetEquipWeaponSpecialCategoryNumber, HAND_RIGHT)

    if GetEquipType(hand, WEAPON_CATEGORY_STAFF, 18, 240) == TRUE then
        return FALSE
    end
	if (IsWeaponCatalyst(sp_kind) == TRUE or IsWeaponCatalyst(sp_kind_R) == TRUE) and env(ActionDuration, ACTION_ARM_L2) > 0 then
		return FALSE
	end
    if sp_kind == 249 and (style == HAND_LEFT_BOTH or style == HAND_RIGHT_BOTH) then
        return FALSE
    end
    if IsWeaponCanGuard() == FALSE then
        return FALSE
    end
    if IsEnableDualWielding() ~= -1 then
        return FALSE
    end
    return TRUE
end

function ck_GetAttackRequest(is_guard)
    local style = c_Style
    local is_both = FALSE
    local is_both_right = FALSE

    if style >= HAND_LEFT_BOTH then
        is_both = TRUE
    end

    if style == HAND_RIGHT_BOTH then
        is_both_right = TRUE
    end

    local hand = HAND_RIGHT
    if style == HAND_LEFT_BOTH then
        hand = HAND_LEFT
    end

    local is_arrow = GetEquipType(hand, WEAPON_CATEGORY_SMALL_ARROW, WEAPON_CATEGORY_ARROW, WEAPON_CATEGORY_LARGE_ARROW)
    local is_crossbow = GetEquipType(hand, WEAPON_CATEGORY_CROSSBOW)
    local is_ballista = GetEquipType(hand, WEAPON_CATEGORY_BALLISTA)
    local is_staff = GetEquipType(hand, WEAPON_CATEGORY_STAFF)
    local request_r1 = env(ActionRequest, ACTION_ARM_R1)
    local request_r2 = env(ActionRequest, ACTION_ARM_R2)
    local request_l1 = env(ActionRequest, ACTION_ARM_L1)
    local request_l2 = env(ActionRequest, ACTION_ARM_L2)
    local sp_kind_R = env(GetEquipWeaponSpecialCategoryNumber, HAND_RIGHT)
    local sp_kind_L = env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT)
    local sp_kind = env(GetEquipWeaponSpecialCategoryNumber, hand)
	if GetEquipType(HAND_LEFT, WEAPON_CATEGORY_STAFF) == TRUE and env(ActionDuration, ACTION_ARM_L1) > 0 and c_Style ~= HAND_RIGHT_BOTH and c_Style ~= HAND_LEFT_BOTH then
        request_r1 = FALSE
        request_r2 = FALSE
        request_l2 = FALSE
	elseif GetEquipType(HAND_LEFT, WEAPON_CATEGORY_STAFF) == TRUE and c_Style == HAND_LEFT_BOTH then
        request_r1 = FALSE
        request_r2 = FALSE
        request_l2 = FALSE
	elseif GetEquipType(HAND_RIGHT, WEAPON_CATEGORY_STAFF) == TRUE and c_Style ~= HAND_LEFT_BOTH then
        request_r1 = FALSE
        request_r2 = FALSE
        request_l2 = FALSE
	end
            if env(ActionDuration, ACTION_ARM_L2) > 0 and IsWeaponCatalyst(sp_kind_L) == TRUE and c_Style ~= HAND_RIGHT_BOTH and c_Style ~= HAND_LEFT_BOTH then
        request_r1 = FALSE
        request_r2 = FALSE
        request_l1 = FALSE
            elseif env(ActionDuration, ACTION_ARM_L2) > 0 and IsWeaponCatalyst(sp_kind_L) == TRUE and c_Style == HAND_LEFT_BOTH then
        request_r1 = FALSE
        request_l1 = FALSE
        request_r2 = FALSE
            elseif env(ActionDuration, ACTION_ARM_L2) > 0 and IsWeaponCatalyst(sp_kind_R) == TRUE and c_Style ~= HAND_LEFT_BOTH then
        request_r1 = FALSE
        request_l1 = FALSE
        request_r2 = FALSE
            end

    if env(ActionDuration, ACTION_ARM_ACTION) > 0 then
        request_r1 = FALSE
        request_r2 = FALSE
        request_l1 = FALSE
        request_l2 = FALSE
    end

    -- R2
    if request_r1 == TRUE and is_staff == FALSE or request_r2 == TRUE and is_staff == TRUE then
        if is_both == TRUE then
            if is_arrow == TRUE then
                g_ArrowSlot = 0
                act(ChooseBowAndArrowSlot, 0)

                if style == HAND_LEFT_BOTH then
                    return ATTACK_REQUEST_ARROW_FIRE_LEFT
                else
                    return ATTACK_REQUEST_ARROW_FIRE_RIGHT
                end
            elseif is_crossbow == TRUE or is_ballista == TRUE then
                g_ArrowSlot = 0
                act(ChooseBowAndArrowSlot, 0)

                return ATTACK_REQUEST_BOTHRIGHT_CROSSBOW
            else
                return ATTACK_REQUEST_BOTH_LIGHT
            end
        elseif is_guard == TRUE then
            local is_spear = GetEquipType(HAND_RIGHT, WEAPON_CATEGORY_SPEAR)
            local is_rapier = GetEquipType(HAND_RIGHT, WEAPON_CATEGORY_RAPIER)
            local is_large_spear = GetEquipType(HAND_RIGHT, WEAPON_CATEGORY_LARGE_SPEAR)
            local is_large_rapier = GetEquipType(HAND_RIGHT, WEAPON_CATEGORY_LARGE_RAPIER)

            -- Shield Poke
            if is_spear == TRUE or is_rapier == TRUE or is_large_spear == TRUE or is_large_rapier == TRUE then
                if env(ActionDuration, ACTION_ARM_L1) > 0 then
                    return ATTACK_REQUEST_ATTACK_WHILE_GUARD
                else
                    return ATTACK_REQUEST_RIGHT_LIGHT
                end
            else
                if is_arrow == TRUE or is_ballista == TRUE then
                    return ATTACK_REQUEST_ARROW_BOTH_RIGHT
                end

                if is_crossbow == TRUE then
                    g_ArrowSlot = 0
                    act(ChooseBowAndArrowSlot, 0)
                    return ATTACK_REQUEST_RIGHT_CROSSBOW
                end
                return ATTACK_REQUEST_RIGHT_LIGHT
            end
        else
            if is_arrow == TRUE or is_ballista == TRUE then
                return ATTACK_REQUEST_ARROW_BOTH_RIGHT
            end

            if is_crossbow == TRUE then
                g_ArrowSlot = 0
                act(ChooseBowAndArrowSlot, 0)

                return ATTACK_REQUEST_RIGHT_CROSSBOW
            end
            return ATTACK_REQUEST_RIGHT_LIGHT
        end
    end

    -- R2
    if request_r2 == TRUE and IsWeaponCatalyst(sp_kind) == FALSE then
        -- Bow / Greatbow
        if is_arrow == TRUE then
            if is_both == TRUE then
                g_ArrowSlot = 1
                act(ChooseBowAndArrowSlot, 1)
                if style == HAND_LEFT_BOTH then
                    return ATTACK_REQUEST_ARROW_FIRE_LEFT2
                else
                    return ATTACK_REQUEST_ARROW_FIRE_RIGHT2
                end
            else
                return ATTACK_REQUEST_ARROW_BOTH_RIGHT
            end
            -- Crossbow
        elseif is_crossbow == TRUE then
            if is_both == TRUE then
                g_ArrowSlot = 1
                act(ChooseBowAndArrowSlot, 1)
                return ATTACK_REQUEST_BOTHRIGHT_CROSSBOW2
            else
                g_ArrowSlot = 1
                act(ChooseBowAndArrowSlot, 1)

                return ATTACK_REQUEST_RIGHT_CROSSBOW2
            end
            -- Ballista
        elseif is_ballista == TRUE then
            if is_both == TRUE then
                g_ArrowSlot = 1
                act(ChooseBowAndArrowSlot, 1)

                return ATTACK_REQUEST_BOTHRIGHT_CROSSBOW2
            else
                return ATTACK_REQUEST_ARROW_BOTH_RIGHT
            end
            -- 2H Heavy
        else
            local sp_kind = env(GetEquipWeaponSpecialCategoryNumber, hand)
            if IsWeaponCatalyst(sp_kind) == TRUE then
                return ATTACK_REQUEST_INVALID
            end
            if is_both == TRUE then
                return ATTACK_REQUEST_BOTH_HEAVY
                -- R1 Heavy
            else
                return ATTACK_REQUEST_RIGHT_HEAVY
            end
        end
    end
    -- L1
    if request_l1 == TRUE then
        if env(IsPrecisionShoot) == TRUE then
            return ATTACK_REQUEST_INVALID
        end
        local is_shield_left = GetEquipType(HAND_LEFT, WEAPON_CATEGORY_SMALL_SHIELD, WEAPON_CATEGORY_MIDDLE_SHIELD,
            WEAPON_CATEGORY_LARGE_SHIELD, WEAPON_CATEGORY_TORCH)
        local is_shield_right = GetEquipType(HAND_RIGHT, WEAPON_CATEGORY_SMALL_SHIELD, WEAPON_CATEGORY_MIDDLE_SHIELD,
            WEAPON_CATEGORY_LARGE_SHIELD, WEAPON_CATEGORY_TORCH)
        local sp_kind = env(GetEquipWeaponSpecialCategoryNumber, hand)
        if is_both == TRUE and sp_kind == 249 then
            return ATTACK_REQUEST_BOTH_LEFT
        end
        if is_shield_left == TRUE then
            return ATTACK_REQUEST_INVALID
        end
        if is_shield_right == TRUE and is_both_right == TRUE then
            return ATTACK_REQUEST_INVALID
        end
        is_arrow = GetEquipType(HAND_LEFT, WEAPON_CATEGORY_SMALL_ARROW, WEAPON_CATEGORY_ARROW,
            WEAPON_CATEGORY_LARGE_ARROW, WEAPON_CATEGORY_BALLISTA)
        is_crossbow = GetEquipType(HAND_LEFT, WEAPON_CATEGORY_CROSSBOW)
        if is_arrow == TRUE then
            if is_both == FALSE then
                return ATTACK_REQUEST_ARROW_BOTH_LEFT
            else
                return ATTACK_REQUEST_INVALID
            end
        elseif is_crossbow == TRUE then
            if is_both == FALSE then
                g_ArrowSlot = 0
                act(ChooseBowAndArrowSlot, 0)
                return ATTACK_REQUEST_LEFT_CROSSBOW
            else
                return ATTACK_REQUEST_INVALID
            end
        end
        is_staff = GetEquipType(HAND_LEFT, WEAPON_CATEGORY_STAFF)
        if is_staff == TRUE then
            return ATTACK_REQUEST_INVALID
        end
        is_arrow = GetEquipType(HAND_RIGHT, WEAPON_CATEGORY_SMALL_ARROW, WEAPON_CATEGORY_ARROW,
            WEAPON_CATEGORY_LARGE_ARROW, WEAPON_CATEGORY_CROSSBOW, WEAPON_CATEGORY_BALLISTA)
        if is_arrow == TRUE and is_both == TRUE then
            return ATTACK_REQUEST_INVALID
        end
        is_crossbow = GetEquipType(HAND_RIGHT, WEAPON_CATEGORY_CROSSBOW)
        if is_crossbow == TRUE and is_both == TRUE then
            return ATTACK_REQUEST_INVALID
        end
        local isEnableDualWielding = IsEnableDualWielding()
        if isEnableDualWielding == HAND_RIGHT then
            return ATTACK_REQUEST_DUAL_RIGHT
        elseif isEnableDualWielding == HAND_LEFT then
            return ATTACK_REQUEST_DUAL_LEFT
        end
        if IsWeaponCanGuard() == TRUE then
            return ATTACK_REQUEST_INVALID
        end
        return ATTACK_REQUEST_LEFT_HEAVY
    end
    -- L2
    if (request_l2 == TRUE and IsWeaponCatalyst(sp_kind) == FALSE) or (request_r2 == TRUE and IsWeaponCatalyst(sp_kind) == TRUE) then
        act(DebugLogOutput, "action request ACTION_ARM_L2")
        if is_both == FALSE then
            is_arrow = GetEquipType(HAND_LEFT, WEAPON_CATEGORY_SMALL_ARROW, WEAPON_CATEGORY_ARROW,
                WEAPON_CATEGORY_LARGE_ARROW, WEAPON_CATEGORY_BALLISTA)
            is_crossbow = GetEquipType(HAND_LEFT, WEAPON_CATEGORY_CROSSBOW)
            if is_arrow == TRUE then
                return ATTACK_REQUEST_ARROW_BOTH_LEFT
            elseif is_crossbow == TRUE then
                g_ArrowSlot = 1
                act(ChooseBowAndArrowSlot, 1)
                return ATTACK_REQUEST_LEFT_CROSSBOW2
            end
            local sp_kind = env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT)
            if IsWeaponCatalyst(sp_kind) == TRUE then
                return ATTACK_REQUEST_INVALID
            end
        end
        if c_SwordArtsID == 399 then
            if is_both == FALSE then
                return ATTACK_REQUEST_LEFT_HEAVY
            else
                return ATTACK_REQUEST_BOTH_LIGHT
            end
        end
        if c_IsEnableSwordArts == TRUE then
            local swordartrequest = GetSwordArtsRequestNew()
            local is_arrowright = GetEquipType(HAND_RIGHT, WEAPON_CATEGORY_SMALL_ARROW, WEAPON_CATEGORY_ARROW,
                WEAPON_CATEGORY_LARGE_ARROW, WEAPON_CATEGORY_BALLISTA)
            if swordartrequest == SWORDARTS_REQUEST_RIGHT_STANCE and is_arrowright == TRUE then
                if style ~= HAND_RIGHT_BOTH then
                    return ATTACK_REQUEST_ARROW_BOTH_RIGHT
                else
                    return swordartrequest
                end
            else
                return swordartrequest
            end
        elseif is_both == TRUE then
            if GetEquipType(hand, WEAPON_CATEGORY_STAFF) == TRUE then
                return ATTACK_REQUEST_BOTH_LIGHT
            else
                return ATTACK_REQUEST_BOTH_HEAVY
            end
        else
            return ATTACK_REQUEST_LEFT_HEAVY
        end
    end
    return ATTACK_REQUEST_INVALID
end

function ck_ExecFallAttack()
    if env(ActionRequest, ACTION_ARM_R1) == TRUE or env(ActionRequest, ACTION_ARM_R2) == TRUE
        or env(ActionRequest, ACTION_ARM_L1) == TRUE and IsEnableDualWielding() == HAND_RIGHT then
        local style = c_Style
        local hand = HAND_RIGHT

        if style == HAND_LEFT_BOTH then
            hand = HAND_LEFT
        end

    local sp_kind_R = env(GetEquipWeaponSpecialCategoryNumber, HAND_RIGHT)
    local sp_kind_L = env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT)
    local sp_kind = env(GetEquipWeaponSpecialCategoryNumber, hand)

        local is_arrow = GetEquipType(hand, WEAPON_CATEGORY_SMALL_ARROW, WEAPON_CATEGORY_ARROW,
            WEAPON_CATEGORY_LARGE_ARROW, WEAPON_CATEGORY_CROSSBOW, WEAPON_CATEGORY_BALLISTA)
        local is_staff = GetEquipType(hand, WEAPON_CATEGORY_STAFF)

        if env(ActionRequest, ACTION_ARM_R1) == TRUE or is_arrow == TRUE then
            if is_staff == TRUE or (IsWeaponCatalyst(sp_kind) == TRUE and env(ActionDuration, ACTION_ARM_L2) > 0) then
                return FALSE
            end

            SetVariable("JumpAttackForm", 1)
            SetVariable("JumpAttackFormRequest", 0)
        elseif env(ActionRequest, ACTION_ARM_R2) == TRUE then
            if is_staff == TRUE or (IsWeaponCatalyst(sp_kind) == TRUE and env(ActionDuration, ACTION_ARM_L2) > 0) then
                return FALSE
            end

            SetVariable("JumpAttackForm", 2)
            SetVariable("JumpAttackFormRequest", 1)
        elseif env(ActionRequest, ACTION_ARM_L1) == TRUE then
            if IsEnableDualWielding() ~= HAND_RIGHT then
                return FALSE
            end

            SetVariable("JumpAttackForm", 3)
            SetVariable("JumpAttackFormRequest", 2)
        end

        if is_arrow == TRUE and (style == HAND_LEFT_BOTH or style == HAND_RIGHT_BOTH) and env(IsOutOfAmmo, hand) == TRUE then
            return FALSE
        end
        if GetEquipType(hand, WEAPON_CATEGORY_CROSSBOW) == TRUE and env(GetBoltLoadingState, hand) == FALSE then
            return FALSE
        end
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

        SetVariable("JumpAttack_Land", 0)
        ExecEventAllBody("W_JumpAttack_Start_Falling")
        return TRUE
    end
    return FALSE
end

function ck_ExecMagic(quick_type, blend_type, is_ride)
    if env(IsMagicUseMenuOpened) ~= TRUE and iscycle ~= 2 then
	mky0, mkn0 = Magickeys()
    end

    if c_HasActionRequest == FALSE then
        return FALSE
    end
    if env(GetStamina) <= 0 then
        return FALSE
    end
    if env(ActionDuration, ACTION_ARM_ACTION) > 0 then
        return FALSE
    end
    if env(IsMagicUseMenuOpened) == TRUE then
        return FALSE
    end
    if c_IsStealth == TRUE then
        blend_type = ALLBODY
    end
    local hand = HAND_RIGHT
    if style == HAND_LEFT_BOTH then
        hand = HAND_LEFT
    end
    local style = c_Style
    local magic_hand = HAND_RIGHT
    local wep_hand = HAND_RIGHT
    local delayActRequestNo = -1
    local is_samagic = FALSE
    local sp_kind_R = env(GetEquipWeaponSpecialCategoryNumber, HAND_RIGHT)
    local sp_kind_L = env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT)
    local sp_kind = env(GetEquipWeaponSpecialCategoryNumber, hand)
    local buttonR = ACTION_ARM_MAGIC_R
    local buttonL = ACTION_ARM_MAGIC_L

    if IsWeaponCatalyst(sp_kind_R) == TRUE then
        buttonR = ACTION_ARM_MAGIC_R2
    end
    if IsWeaponCatalyst(sp_kind_L) == TRUE and is_ride == FALSE then
        buttonL = ACTION_ARM_MAGIC_L2
    end

    if env(ActionRequest, buttonL) == TRUE and env(ActionRequest, buttonR) == FALSE and is_ride == TRUE then
        ResetRequest()
        return FALSE
    end

		if GetEquipType(HAND_LEFT, WEAPON_CATEGORY_STAFF, 240) == TRUE and (env(1108, ACTION_ARM_L1) > 0 or env(1108, ACTION_ARM_CHANGE_WEAPON_L) > 0) and style ~= HAND_LEFT_BOTH and style ~= HAND_RIGHT_BOTH then
		ACTION_ARM_MAGIC_R = ACTION_ARM_R1
		ACTION_ARM_MAGIC_R2 = ACTION_ARM_R2
		ACTION_ARM_MAGIC_L2 = ACTION_ARM_L2
	
    -- Normal Catalysts left hand
    -- R1/L1 (while riding)
    if (env(ActionRequest, ACTION_ARM_MAGIC_R) == TRUE) or ((env(GetSpEffectID, 100605) == TRUE or env(GetSpEffectID, 100606) == TRUE) and env(ActionDuration, ACTION_ARM_R1) > 0) or env(ActionRequest, ACTION_ARM_MAGIC_L) == TRUE and is_ride == TRUE then
            if GetEquipType(HAND_LEFT, WEAPON_CATEGORY_STAFF, 240) == FALSE and env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT) ~= 293 and env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT) ~= 243 and env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT) ~= 245 and env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT) ~= 228 and env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT) ~= 765 and env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT) ~= 112 and env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT) ~= 239 and env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT) ~= 607 then
                return FALSE
            end
			cc_key = ACTION_ARM_R1
			selectss(cc_spell)
			setss()
			selectss(cc_spell)
	    magic_hand = HAND_LEFT	
            wep_hand = HAND_LEFT
        delayActRequestNo = ACTION_ARM_MAGIC_R
        -- R2
    elseif env(ActionRequest, ACTION_ARM_MAGIC_R2) == TRUE or ((env(GetSpEffectID, 100605) == TRUE or env(GetSpEffectID, 100606) == TRUE) and env(ActionDuration, ACTION_ARM_R2) > 0) then
            if GetEquipType(HAND_LEFT, WEAPON_CATEGORY_STAFF, 240) == FALSE and env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT) ~= 293 and env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT) ~= 243 and env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT) ~= 245 and env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT) ~= 228 and env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT) ~= 765 and env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT) ~= 112 and env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT) ~= 239 and env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT) ~= 607 then
                return FALSE
            end
			cc_key = ACTION_ARM_R2
		if checksid(cc_spell + 1) == -1 then
			selectss(0)
		else
			selectss(cc_spell + 1)
		end
			setss()
			selectss(cc_spell)
	    magic_hand = HAND_LEFT
            wep_hand = HAND_LEFT
        delayActRequestNo = ACTION_ARM_MAGIC_R2
        -- L2
    elseif env(ActionRequest, ACTION_ARM_MAGIC_L2) == TRUE or ((env(GetSpEffectID, 100605) == TRUE or env(GetSpEffectID, 100606) == TRUE) and env(ActionDuration, ACTION_ARM_L2) > 0) then
            if GetEquipType(HAND_LEFT, WEAPON_CATEGORY_STAFF, 240) == FALSE and env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT) ~= 293 and env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT) ~= 243 and env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT) ~= 245 and env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT) ~= 228 and env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT) ~= 765 and env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT) ~= 112 and env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT) ~= 239 and env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT) ~= 607 then
                return FALSE
            end
			cc_key = ACTION_ARM_L2
		if checksid(cc_spell + 1) == -1 and checksid(1) ~= -1 then
			selectss(1)
		elseif checksid(cc_spell + 1) == -1 and checksid(1) == -1 then
			selectss(0)
		elseif checksid(cc_spell + 1) ~= -1 and checksid(cc_spell + 2) == -1 then
			selectss(0)
		else
			selectss(cc_spell + 2)
		end
			setss()
			selectss(cc_spell)
	    magic_hand = HAND_LEFT
            wep_hand = HAND_LEFT
        delayActRequestNo = ACTION_ARM_MAGIC_L2
    else
        return FALSE
    end
		elseif (GetEquipType(HAND_RIGHT, WEAPON_CATEGORY_STAFF, 240) == TRUE and style ~= HAND_LEFT_BOTH) or (GetEquipType(HAND_LEFT, WEAPON_CATEGORY_STAFF, 240) == TRUE and style == HAND_LEFT_BOTH) then
		ACTION_ARM_MAGIC_R = ACTION_ARM_R1
		ACTION_ARM_MAGIC_R2 = ACTION_ARM_R2
		ACTION_ARM_MAGIC_L2 = ACTION_ARM_L2

    -- Normal Catalysts right hand

    -- R1/L1 (while riding)
    if env(ActionRequest, ACTION_ARM_MAGIC_R) == TRUE or ((env(GetSpEffectID, 100600) == TRUE or env(GetSpEffectID, 100601) == TRUE) and env(ActionDuration, ACTION_ARM_R1) > 0) or env(ActionRequest, ACTION_ARM_MAGIC_L) == TRUE and is_ride
        == TRUE then
        if style == HAND_LEFT_BOTH then
            if GetEquipType(HAND_LEFT, WEAPON_CATEGORY_STAFF, 240) == FALSE and env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT) ~= 293 and env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT) ~= 243 and env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT) ~= 245 and env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT) ~= 228 and env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT) ~= 765 and env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT) ~= 112 and env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT) ~= 239 and env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT) ~= 607 then
                return FALSE
            end
            wep_hand = HAND_LEFT
        else
            if GetEquipType(HAND_RIGHT, WEAPON_CATEGORY_STAFF, 240) == FALSE and env(GetEquipWeaponSpecialCategoryNumber, HAND_RIGHT) ~= 293 and env(GetEquipWeaponSpecialCategoryNumber, HAND_RIGHT) ~= 243 and env(GetEquipWeaponSpecialCategoryNumber, HAND_RIGHT) ~= 245 and env(GetEquipWeaponSpecialCategoryNumber, HAND_RIGHT) ~= 228 and env(GetEquipWeaponSpecialCategoryNumber, HAND_RIGHT) ~= 765 and env(GetEquipWeaponSpecialCategoryNumber, HAND_RIGHT) ~= 112 and env(GetEquipWeaponSpecialCategoryNumber, HAND_RIGHT) ~= 239 and env(GetEquipWeaponSpecialCategoryNumber, HAND_RIGHT) ~= 607 then
                return FALSE
            end
            wep_hand = HAND_RIGHT
        end

			selectss(cc_spell)
			setss()
			selectss(cc_spell)
			cc_key = ACTION_ARM_R1
        delayActRequestNo = ACTION_ARM_MAGIC_R
        -- R2
    elseif env(ActionRequest, ACTION_ARM_MAGIC_R2) == TRUE or ((env(GetSpEffectID, 100600) == TRUE or env(GetSpEffectID, 100601) == TRUE) and env(ActionDuration, ACTION_ARM_R2) > 0) then
        if style == HAND_LEFT_BOTH then
            if GetEquipType(HAND_LEFT, WEAPON_CATEGORY_STAFF, 240) == FALSE and env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT) ~= 293 and env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT) ~= 243 and env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT) ~= 245 and env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT) ~= 228 and env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT) ~= 765 and env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT) ~= 112 and env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT) ~= 239 and env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT) ~= 607 then
                return FALSE
            end
            wep_hand = HAND_LEFT
        else
            if GetEquipType(HAND_RIGHT, WEAPON_CATEGORY_STAFF, 240) == FALSE and env(GetEquipWeaponSpecialCategoryNumber, HAND_RIGHT) ~= 293 and env(GetEquipWeaponSpecialCategoryNumber, HAND_RIGHT) ~= 243 and env(GetEquipWeaponSpecialCategoryNumber, HAND_RIGHT) ~= 245 and env(GetEquipWeaponSpecialCategoryNumber, HAND_RIGHT) ~= 228 and env(GetEquipWeaponSpecialCategoryNumber, HAND_RIGHT) ~= 765 and env(GetEquipWeaponSpecialCategoryNumber, HAND_RIGHT) ~= 112 and env(GetEquipWeaponSpecialCategoryNumber, HAND_RIGHT) ~= 239 and env(GetEquipWeaponSpecialCategoryNumber, HAND_RIGHT) ~= 607 then
                return FALSE
            end
            wep_hand = HAND_RIGHT
        end
		if checksid(cc_spell + 1) == -1 then
			selectss(0)
		else
			selectss(cc_spell + 1)
		end

			setss()
			selectss(cc_spell)
			cc_key = ACTION_ARM_R2
        delayActRequestNo = ACTION_ARM_MAGIC_R2
        -- L2
    elseif env(ActionRequest, ACTION_ARM_MAGIC_L2) == TRUE or ((env(GetSpEffectID, 100600) == TRUE or env(GetSpEffectID, 100601) == TRUE) and env(ActionDuration, ACTION_ARM_L2) > 0) then
        if style == HAND_LEFT_BOTH then
            if GetEquipType(HAND_LEFT, WEAPON_CATEGORY_STAFF, 240) == FALSE and env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT) ~= 293 and env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT) ~= 243 and env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT) ~= 245 and env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT) ~= 228 and env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT) ~= 765 and env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT) ~= 112 and env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT) ~= 239 and env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT) ~= 607 then
                return FALSE
            end
            wep_hand = HAND_LEFT
        else
            if GetEquipType(HAND_RIGHT, WEAPON_CATEGORY_STAFF, 240) == FALSE and env(GetEquipWeaponSpecialCategoryNumber, HAND_RIGHT) ~= 293 and env(GetEquipWeaponSpecialCategoryNumber, HAND_RIGHT) ~= 243 and env(GetEquipWeaponSpecialCategoryNumber, HAND_RIGHT) ~= 245 and env(GetEquipWeaponSpecialCategoryNumber, HAND_RIGHT) ~= 228 and env(GetEquipWeaponSpecialCategoryNumber, HAND_RIGHT) ~= 765 and env(GetEquipWeaponSpecialCategoryNumber, HAND_RIGHT) ~= 112 and env(GetEquipWeaponSpecialCategoryNumber, HAND_RIGHT) ~= 239 and env(GetEquipWeaponSpecialCategoryNumber, HAND_RIGHT) ~= 607 then
                return FALSE
            end
            wep_hand = HAND_RIGHT
        end
		if checksid(cc_spell + 1) == -1 and checksid(1) ~= -1 then
			selectss(1)
		elseif checksid(cc_spell + 1) == -1 and checksid(1) == -1 then
			selectss(0)
		elseif checksid(cc_spell + 1) ~= -1 and checksid(cc_spell + 2) == -1 then
			selectss(0)
		else
			selectss(cc_spell + 2)
		end

			setss()
			selectss(cc_spell)
			cc_key = ACTION_ARM_L2
        delayActRequestNo = ACTION_ARM_MAGIC_L
    else
        return FALSE
    end
		elseif IsWeaponCatalyst(sp_kind_L) == TRUE and env(ActionDuration, ACTION_ARM_L2) > 0 and c_Style ~= HAND_LEFT_BOTH then
		ACTION_ARM_MAGIC_R = ACTION_ARM_R2
		ACTION_ARM_MAGIC_R2 = ACTION_ARM_R1
		ACTION_ARM_MAGIC_L2 = ACTION_ARM_L1

    -- wep left hand

    -- R1/L1 (while riding)
    if env(ActionRequest, ACTION_ARM_MAGIC_R) == TRUE or ((env(GetSpEffectID, 100605) == TRUE or env(GetSpEffectID, 100606) == TRUE) and env(ActionDuration, ACTION_ARM_R2) > 0) or env(ActionRequest, ACTION_ARM_MAGIC_L) == TRUE and is_ride
        == TRUE then

            if GetEquipType(HAND_LEFT, WEAPON_CATEGORY_STAFF, 240) == FALSE and env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT) ~= 293 and env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT) ~= 243 and env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT) ~= 245 and env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT) ~= 228 and env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT) ~= 765 and env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT) ~= 112 and env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT) ~= 239 and env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT) ~= 607 then
                return FALSE
            end
	    magic_hand = HAND_LEFT
            wep_hand = HAND_LEFT

			selectss(cc_spell)
			setss()
			selectss(cc_spell)
			cc_key = ACTION_ARM_MAGIC_R
        delayActRequestNo = ACTION_ARM_MAGIC_R
        -- R2
    elseif env(ActionRequest, ACTION_ARM_MAGIC_R2) == TRUE or ((env(GetSpEffectID, 100605) == TRUE or env(GetSpEffectID, 100606) == TRUE) and env(ActionDuration, ACTION_ARM_R1) > 0) then

            if GetEquipType(HAND_LEFT, WEAPON_CATEGORY_STAFF, 240) == FALSE and env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT) ~= 293 and env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT) ~= 243 and env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT) ~= 245 and env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT) ~= 228 and env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT) ~= 765 and env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT) ~= 112 and env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT) ~= 239 and env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT) ~= 607 then
                return FALSE
            end
	    magic_hand = HAND_LEFT
            wep_hand = HAND_LEFT

		if checksid(cc_spell + 1) == -1 then
			selectss(0)
		else
			selectss(cc_spell + 1)
		end
			setss()
			selectss(cc_spell)
			cc_key = ACTION_ARM_MAGIC_R2
        delayActRequestNo = ACTION_ARM_MAGIC_R2
        -- L2
    elseif env(ActionRequest, ACTION_ARM_MAGIC_L2) == TRUE or ((env(GetSpEffectID, 100605) == TRUE or env(GetSpEffectID, 100606) == TRUE) and env(ActionDuration, ACTION_ARM_L1) > 0) then

            if GetEquipType(HAND_LEFT, WEAPON_CATEGORY_STAFF, 240) == FALSE and env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT) ~= 293 and env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT) ~= 243 and env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT) ~= 245 and env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT) ~= 228 and env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT) ~= 765 and env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT) ~= 112 and env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT) ~= 239 and env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT) ~= 607 then
                return FALSE
            end
	    magic_hand = HAND_LEFT
            wep_hand = HAND_LEFT

		if checksid(cc_spell + 1) == -1 and checksid(1) ~= -1 then
			selectss(1)
		elseif checksid(cc_spell + 1) == -1 and checksid(1) == -1 then
			selectss(0)
		elseif checksid(cc_spell + 1) ~= -1 and checksid(cc_spell + 2) == -1 then
			selectss(0)
		else
			selectss(cc_spell + 2)
		end
			setss()
			selectss(cc_spell)
			cc_key = ACTION_ARM_MAGIC_L2
        delayActRequestNo = ACTION_ARM_MAGIC_L2
    else
        return FALSE
    end
		elseif (IsWeaponCatalyst(sp_kind_R) == TRUE or (IsWeaponCatalyst(sp_kind_L) == TRUE and c_Style == HAND_LEFT_BOTH)) and env(ActionDuration, ACTION_ARM_L2) > 0 then
		ACTION_ARM_MAGIC_R = ACTION_ARM_R2
		ACTION_ARM_MAGIC_R2 = ACTION_ARM_R1
		ACTION_ARM_MAGIC_L2 = ACTION_ARM_L1

    -- wep right/both hand

    -- R1/L1 (while riding)
    if env(ActionRequest, ACTION_ARM_MAGIC_R) == TRUE or ((env(GetSpEffectID, 100600) == TRUE or env(GetSpEffectID, 100601) == TRUE) and env(ActionDuration, ACTION_ARM_R2) > 0) or env(ActionRequest, ACTION_ARM_MAGIC_L) == TRUE and is_ride
        == TRUE then
        if style == HAND_LEFT_BOTH then
            if GetEquipType(HAND_LEFT, WEAPON_CATEGORY_STAFF, 240) == FALSE and env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT) ~= 293 and env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT) ~= 243 and env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT) ~= 245 and env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT) ~= 228 and env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT) ~= 765 and env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT) ~= 112 and env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT) ~= 239 and env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT) ~= 607 then
                return FALSE
            end
            wep_hand = HAND_LEFT
        else
            if GetEquipType(HAND_RIGHT, WEAPON_CATEGORY_STAFF, 240) == FALSE and env(GetEquipWeaponSpecialCategoryNumber, HAND_RIGHT) ~= 293 and env(GetEquipWeaponSpecialCategoryNumber, HAND_RIGHT) ~= 243 and env(GetEquipWeaponSpecialCategoryNumber, HAND_RIGHT) ~= 245 and env(GetEquipWeaponSpecialCategoryNumber, HAND_RIGHT) ~= 228 and env(GetEquipWeaponSpecialCategoryNumber, HAND_RIGHT) ~= 765 and env(GetEquipWeaponSpecialCategoryNumber, HAND_RIGHT) ~= 112 and env(GetEquipWeaponSpecialCategoryNumber, HAND_RIGHT) ~= 239 and env(GetEquipWeaponSpecialCategoryNumber, HAND_RIGHT) ~= 607 then
                return FALSE
            end
            wep_hand = HAND_RIGHT
        end
			selectss(cc_spell)
			setss()
			selectss(cc_spell)
			cc_key = ACTION_ARM_MAGIC_R
        delayActRequestNo = ACTION_ARM_MAGIC_R
        -- R2
    elseif env(ActionRequest, ACTION_ARM_MAGIC_R2) == TRUE or ((env(GetSpEffectID, 100600) == TRUE or env(GetSpEffectID, 100601) == TRUE) and env(ActionDuration, ACTION_ARM_R1) > 0) then
        if style == HAND_LEFT_BOTH then
            if GetEquipType(HAND_LEFT, WEAPON_CATEGORY_STAFF, 240) == FALSE and env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT) ~= 293 and env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT) ~= 243 and env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT) ~= 245 and env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT) ~= 228 and env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT) ~= 765 and env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT) ~= 112 and env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT) ~= 239 and env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT) ~= 607 then
                return FALSE
            end
            wep_hand = HAND_LEFT
        else
            if GetEquipType(HAND_RIGHT, WEAPON_CATEGORY_STAFF, 240) == FALSE and env(GetEquipWeaponSpecialCategoryNumber, HAND_RIGHT) ~= 293 and env(GetEquipWeaponSpecialCategoryNumber, HAND_RIGHT) ~= 243 and env(GetEquipWeaponSpecialCategoryNumber, HAND_RIGHT) ~= 245 and env(GetEquipWeaponSpecialCategoryNumber, HAND_RIGHT) ~= 228 and env(GetEquipWeaponSpecialCategoryNumber, HAND_RIGHT) ~= 765 and env(GetEquipWeaponSpecialCategoryNumber, HAND_RIGHT) ~= 112 and env(GetEquipWeaponSpecialCategoryNumber, HAND_RIGHT) ~= 239 and env(GetEquipWeaponSpecialCategoryNumber, HAND_RIGHT) ~= 607 then
                return FALSE
            end
            wep_hand = HAND_RIGHT
        end
		if checksid(cc_spell + 1) == -1 then
			selectss(0)
		else
			selectss(cc_spell + 1)
		end
			setss()
			selectss(cc_spell)
			cc_key = ACTION_ARM_MAGIC_R2
        delayActRequestNo = ACTION_ARM_MAGIC_R2
        -- L2
    elseif env(ActionRequest, ACTION_ARM_MAGIC_L2) == TRUE or ((env(GetSpEffectID, 100600) == TRUE or env(GetSpEffectID, 100601) == TRUE) and env(ActionDuration, ACTION_ARM_L1) > 0) then
        if style == HAND_LEFT_BOTH then
            if GetEquipType(HAND_LEFT, WEAPON_CATEGORY_STAFF, 240) == FALSE and env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT) ~= 293 and env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT) ~= 243 and env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT) ~= 245 and env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT) ~= 228 and env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT) ~= 765 and env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT) ~= 112 and env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT) ~= 239 and env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT) ~= 607 then
                return FALSE
            end
            wep_hand = HAND_LEFT
        else
            if GetEquipType(HAND_RIGHT, WEAPON_CATEGORY_STAFF, 240) == FALSE and env(GetEquipWeaponSpecialCategoryNumber, HAND_RIGHT) ~= 293 and env(GetEquipWeaponSpecialCategoryNumber, HAND_RIGHT) ~= 243 and env(GetEquipWeaponSpecialCategoryNumber, HAND_RIGHT) ~= 245 and env(GetEquipWeaponSpecialCategoryNumber, HAND_RIGHT) ~= 228 and env(GetEquipWeaponSpecialCategoryNumber, HAND_RIGHT) ~= 765 and env(GetEquipWeaponSpecialCategoryNumber, HAND_RIGHT) ~= 112 and env(GetEquipWeaponSpecialCategoryNumber, HAND_RIGHT) ~= 239 and env(GetEquipWeaponSpecialCategoryNumber, HAND_RIGHT) ~= 607 then
                return FALSE
            end
            wep_hand = HAND_RIGHT
        end
		if checksid(cc_spell + 1) == -1 and checksid(1) ~= -1 then
			selectss(1)
		elseif checksid(cc_spell + 1) == -1 and checksid(1) == -1 then
			selectss(0)
		elseif checksid(cc_spell + 1) ~= -1 and checksid(cc_spell + 2) == -1 then
			selectss(0)
		else
			selectss(cc_spell + 2)
		end
			setss()
			selectss(cc_spell)
			cc_key = ACTION_ARM_MAGIC_L2
        delayActRequestNo = ACTION_ARM_MAGIC_L2
    else
        return FALSE
    end
		else
            return FALSE
		end
g0, n0 = CastWepRestore()
    if env(IsMagicUseMenuOpening, wep_hand) == TRUE then
        ResetRequest()
        act(OpenMenuWhenUsingMagic, delayActRequestNo)
        return TRUE
    end
    act(DecideMagicUse)
    act(NotifyAIMagicCast)
    local magic_index = env(GetMagicAnimType)
    g_MagicIndex = magic_index
    g_Magichand = wep_hand
    local lastMagicMem = lastUsedMagicAnim
    lastUsedMagicAnim = magic_index
    if blend_type == ALLBODY and is_ride == FALSE then
        local move_event = Event_Move
        if IsStealthMagic(magic_index) == TRUE and c_IsStealth == TRUE then
            move_event = Event_Stealth_Move
        end
        if MoveStart(LOWER, move_event, FALSE) == TRUE then
            blend_type = UPPER
        end
    end
    if env(IsMagicUseable, wep_hand, 0) == FALSE then
        act(DebugLogOutput, "Event_MagicInvalid_Cannot_Use_Magic")
        SetVariable("IndexMagicHand", magic_hand)
        if is_ride == TRUE then
            ExecEventAllBody("W_RideMagicInvalid")
        else
            ExecEventHalfBlend(Event_MagicInvalid, blend_type)
        end
        act(SetIsMagicInUse, TRUE)
        act(SetNpcAIAttackRequestIDAfterBlend, env(GetNpcAIAttackRequestID))
        SetAIActionState()
        return TRUE
    end

    if magic_index == 254 or magic_index == 255 then
        SetVariable("IndexMagicHand", magic_hand)
        if is_ride == TRUE then
            ExecEventAllBody("W_RideMagicInvalid")
        else
            act(DebugLogOutput, "Event_MagicInvalid_InvalidMagic")
            ExecEventHalfBlend(Event_MagicInvalid, blend_type)
        end
        act(SetIsMagicInUse, TRUE)
        act(SetNpcAIAttackRequestIDAfterBlend, env(GetNpcAIAttackRequestID))
        SetAIActionState()
        return TRUE
    end

    -- Check if Player is Enchanting a Weapon in the Left Hand
    if IsWeaponEnchantMagic() == TRUE and c_Style == HAND_LEFT_BOTH then
        SetVariable("IndexMagicHand", magic_hand)
        act(DebugLogOutput, "Event_MagicInvalid_Left")
        ExecEventHalfBlend(Event_MagicInvalid, blend_type)
        act(SetIsMagicInUse, TRUE)
        act(SetNpcAIAttackRequestIDAfterBlend, env(GetNpcAIAttackRequestID))
        SetAIActionState()
        return TRUE
    end

    -- Check if the Animation Type of the Magic is something related to Magic for Shields
    if magic_index == MAGIC_REQUEST_ORDER_SHIELD then
        if GetEquipType(HAND_LEFT, WEAPON_CATEGORY_LARGE_SHIELD) == TRUE then
            SetVariable("MagicRight_ShieldCategory", 1)
        end
    else
        SetVariable("MagicRight_ShieldCategory", 0)
    end

    if magic_index == MAGIC_REQUEST_GRAVITY or magic_index == MAGIC_REQUEST_METEOR or magic_index
        == MAGIC_REQUEST_BLASTING or magic_index == MAGIC_REQUEST_DRILL or magic_index == MAGIC_REQUEST_MAGIC_SPARK
        or magic_index == 115 or magic_index == 120 or magic_index == 121 or magic_index == 157 or magic_index == 82
        or magic_index == 150 or magic_index == 156 or magic_index == 161 then
        if IsWeaponCatalyst(env(GetEquipWeaponSpecialCategoryNumber, wep_hand)) == TRUE then
            SetVariable("Magic_SpecialStaffCategory", 2)
        else
            SetVariable("Magic_SpecialStaffCategory", 0)
        end
    elseif magic_index == 141 or magic_index == 128 or magic_index == 146 then
        if env(GetEquipWeaponSpecialCategoryNumber, wep_hand) == 290 then
            SetVariable("Magic_SpecialStaffCategory", 1)
        else
            SetVariable("Magic_SpecialStaffCategory", 0)
        end
    else
        SetVariable("Magic_SpecialStaffCategory", 0)
    end

    if magic_index == MAGIC_REQUEST_WEAPON_ENCHANT or magic_index == MAGIC_REQUEST_THUNDER_ENCHANT or magic_index
        == MAGIC_REQUEST_WEAPON_ENCHANT_B or magic_index == MAGIC_REQUEST_HOLY_ENCHANT then
        if GetEquipType(HAND_RIGHT, WEAPON_CATEGORY_DUELING_SHIELD) == TRUE then
            SetVariable("Magic_DuelingShieldCategory", 1)
        else
            SetVariable("Magic_DuelingShieldCategory", 0)
        end
    else
        SetVariable("Magic_DuelingShieldCategory", 0)
    end

    local is_atk_auto_aim = FALSE
    if magic_index == MAGIC_REQUEST_WHIP or magic_index == MAGIC_REQUEST_SLASH or magic_index == MAGIC_REQUEST_QUICKSLASH
        or magic_index == MAGIC_REQUEST_FLAME_GRAB or magic_index == MAGIC_REQUEST_CRUSH or magic_index
        == MAGIC_REQUEST_CHOP or magic_index == MAGIC_REQUEST_SCYTHE then
        is_atk_auto_aim = TRUE
    end

    if magic_index == 127 and env(GetSpEffectID, 19975) == TRUE then
    		act(AddSpEffect, 100615)
        return TRUE
    end

go1, no1 = CultSpellStack_ApplyLib()

    if ExecComboMagic(magic_hand, blend_type, lastMagicMem, magic_index) == TRUE then
    elseif ExecQuickMagic(magic_hand, quick_type, blend_type) == TRUE then
    elseif ExecStealthMagic(magic_hand, magic_index, blend_type) == TRUE then
    elseif is_ride == TRUE then
        ExecEventAllBody("W_RideMagicLaunch")
    elseif magic_hand == HAND_RIGHT and (magic_index ~= MAGIC_REQUEST_MAD_THROW or c_Style ~= HAND_LEFT_BOTH) then
        ExecEventHalfBlend(Event_MagicLaunchRight, blend_type)
    else
        ExecEventHalfBlend(Event_MagicLaunchLeft, blend_type)
    end

    act(SetIsMagicInUse, TRUE)
    act(SetNpcAIAttackRequestIDAfterBlend, env(GetNpcAIAttackRequestID))
    SetAIActionState()
    act(AddSpEffect, 100615)

    return TRUE
end

function ck_ExecJumpMagic(jump_type)
    if env(IsMagicUseMenuOpened) ~= TRUE and iscycle ~= 2 then
	mky0, mkn0 = Magickeys()
    end

    if c_HasActionRequest == FALSE then
        return FALSE
    end

    local wep_hand = HAND_RIGHT
    if c_Style == HAND_LEFT_BOTH then
        wep_hand = HAND_LEFT
    end

    local buttonR = ACTION_ARM_MAGIC_R
    local buttonL = ACTION_ARM_MAGIC_L

    local sp_kind = env(GetEquipWeaponSpecialCategoryNumber, wep_hand)
    if IsWeaponCatalyst(sp_kind) == TRUE then
        buttonR = ACTION_ARM_MAGIC_R2
    end

    local sp_kind_L = env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT)
    if c_Style == HAND_RIGHT and IsWeaponCatalyst(sp_kind_L) == TRUE then
        buttonL = ACTION_ARM_MAGIC_L2
    end


    if env(GetStamina) <= 0 then
        ResetRequest()
        return FALSE
    end
    if GetVariable("JumpAttackForm") >= 1 or IS_ATTACKED_JUMPMAGIC == TRUE then
        ResetRequest()
        return FALSE
    end
    if env(IsMagicUseMenuOpened) == TRUE then
        return FALSE
    end

    local style = c_Style
    local magic_hand = HAND_RIGHT
    local wep_hand = HAND_RIGHT
    local delayActRequestNo = -1
    local is_samagic = FALSE
    local sp_kind_R = env(GetEquipWeaponSpecialCategoryNumber, HAND_RIGHT)
    local sp_kind_L = env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT)

		if GetEquipType(HAND_LEFT, WEAPON_CATEGORY_STAFF, 240) == TRUE and (((env(1108, ACTION_ARM_L1) > 0 or env(1108, ACTION_ARM_CHANGE_WEAPON_L) > 0) and env(1108, ACTION_ARM_R1) <= 0 and c_Style ~= HAND_LEFT_BOTH and c_Style ~= HAND_RIGHT_BOTH) or c_Style == HAND_LEFT_BOTH) then
	
            if GetEquipType(HAND_LEFT, WEAPON_CATEGORY_STAFF, 240) == FALSE then
                return FALSE
            end
    -- Normal Catalysts left hand
    -- R1/L1 (while riding)
    if env(ActionRequest, ACTION_ARM_R1) == TRUE then
            if GetEquipType(HAND_LEFT, WEAPON_CATEGORY_STAFF, 240) == FALSE then
                return FALSE
            end
	    magic_hand = HAND_LEFT
            wep_hand = HAND_LEFT
			selectss(cc_spell)
			setss()
			selectss(cc_spell)
			cc_key = ACTION_ARM_R1
        delayActRequestNo = ACTION_ARM_MAGIC_L
        -- R2
    elseif env(ActionRequest, ACTION_ARM_R2) == TRUE then
            if GetEquipType(HAND_LEFT, WEAPON_CATEGORY_STAFF, 240) == FALSE then
                return FALSE
            end
			cc_key = ACTION_ARM_R2
		if checksid(cc_spell + 1) == -1 then
			selectss(0)
		else
			selectss(cc_spell + 1)
		end
			setss()
			selectss(cc_spell)
	    magic_hand = HAND_LEFT
            wep_hand = HAND_LEFT
        delayActRequestNo = ACTION_ARM_MAGIC_R2
        -- L2
    elseif env(ActionRequest, ACTION_ARM_L2) == TRUE then
            if GetEquipType(HAND_LEFT, WEAPON_CATEGORY_STAFF, 240) == FALSE then
                return FALSE
            end
			cc_key = ACTION_ARM_L2
		if checksid(cc_spell + 1) == -1 and checksid(1) ~= -1 then
			selectss(1)
		elseif checksid(cc_spell + 1) == -1 and checksid(1) == -1 then
			selectss(0)
		elseif checksid(cc_spell + 1) ~= -1 and checksid(cc_spell + 2) == -1 then
			selectss(0)
		else
			selectss(cc_spell + 2)
		end
			setss()
			selectss(cc_spell)
	    magic_hand = HAND_LEFT
            wep_hand = HAND_LEFT
        delayActRequestNo = ACTION_ARM_MAGIC_L
    else
        return FALSE
    end
		elseif GetEquipType(HAND_RIGHT, WEAPON_CATEGORY_STAFF, 240) == TRUE and env(1108, ACTION_ARM_L1) <= 0 and style ~= HAND_LEFT_BOTH then
	
            if GetEquipType(HAND_RIGHT, WEAPON_CATEGORY_STAFF, 240) == FALSE then
                return FALSE
            end
    -- Normal Catalysts right hand
    -- R1/L1 (while riding)
    if env(ActionRequest, ACTION_ARM_R1) == TRUE then
            if GetEquipType(HAND_RIGHT, WEAPON_CATEGORY_STAFF, 240) == FALSE then
                return FALSE
            end
	    magic_hand = HAND_RIGHT
            wep_hand = HAND_RIGHT

			selectss(cc_spell)
			setss()
			selectss(cc_spell)
			cc_key = ACTION_ARM_R1
        delayActRequestNo = ACTION_ARM_MAGIC_R
        -- R2
    elseif env(ActionRequest, ACTION_ARM_R2) == TRUE then
            if GetEquipType(HAND_RIGHT, WEAPON_CATEGORY_STAFF, 240) == FALSE then
                return FALSE
            end
			cc_key = ACTION_ARM_R2
		if checksid(cc_spell + 1) == -1 then
			selectss(0)
		else
			selectss(cc_spell + 1)
		end
			setss()
			selectss(cc_spell)
	    magic_hand = HAND_RIGHT
            wep_hand = HAND_RIGHT
        delayActRequestNo = ACTION_ARM_MAGIC_R2
        -- L2
    elseif env(ActionRequest, ACTION_ARM_L2) == TRUE then
            if GetEquipType(HAND_RIGHT, WEAPON_CATEGORY_STAFF, 240) == FALSE then
                return FALSE
            end
			cc_key = ACTION_ARM_L2
		if checksid(cc_spell + 1) == -1 and checksid(1) ~= -1 then
			selectss(1)
		elseif checksid(cc_spell + 1) == -1 and checksid(1) == -1 then
			selectss(0)
		elseif checksid(cc_spell + 1) ~= -1 and checksid(cc_spell + 2) == -1 then
			selectss(0)
		else
			selectss(cc_spell + 2)
		end
			setss()
			selectss(cc_spell)
	    magic_hand = HAND_RIGHT
            wep_hand = HAND_RIGHT
        delayActRequestNo = ACTION_ARM_MAGIC_R
    else
        return FALSE
    end

		elseif IsWeaponCatalyst(sp_kind_L) == TRUE and env(1108, ACTION_ARM_L2) > 0 and c_Style ~= HAND_RIGHT_BOTH then
	
            if IsWeaponCatalyst(sp_kind_L) == FALSE then
                return FALSE
            end
    -- Normal Catalysts left hand
    -- R1/L1 (while riding)
    if env(ActionRequest, ACTION_ARM_R2) == TRUE then
            if IsWeaponCatalyst(sp_kind_L) == FALSE then
                return FALSE
            end
	    magic_hand = HAND_LEFT
            wep_hand = HAND_LEFT
			selectss(cc_spell)
			setss()
			selectss(cc_spell)
			cc_key = ACTION_ARM_R2
        delayActRequestNo = ACTION_ARM_MAGIC_R
        -- R2
    elseif env(ActionRequest, ACTION_ARM_R1) == TRUE then
            if IsWeaponCatalyst(sp_kind_L) == FALSE then
                return FALSE
            end
			cc_key = ACTION_ARM_R1
		if checksid(cc_spell + 1) == -1 then
			selectss(0)
		else
			selectss(cc_spell + 1)
		end
			setss()
			selectss(cc_spell)
	    magic_hand = HAND_LEFT
            wep_hand = HAND_LEFT
        delayActRequestNo = ACTION_ARM_MAGIC_R2
        -- L2
    elseif env(ActionRequest, ACTION_ARM_L1) == TRUE then
            if IsWeaponCatalyst(sp_kind_L) == FALSE then
                return FALSE
            end
			cc_key = ACTION_ARM_L1
		if checksid(cc_spell + 1) == -1 and checksid(1) ~= -1 then
			selectss(1)
		elseif checksid(cc_spell + 1) == -1 and checksid(1) == -1 then
			selectss(0)
		elseif checksid(cc_spell + 1) ~= -1 and checksid(cc_spell + 2) == -1 then
			selectss(0)
		else
			selectss(cc_spell + 2)
		end
			setss()
			selectss(cc_spell)
	    magic_hand = HAND_LEFT
            wep_hand = HAND_LEFT
        delayActRequestNo = ACTION_ARM_MAGIC_L2
    else
        return FALSE
    end
		elseif IsWeaponCatalyst(sp_kind_R) == TRUE and env(1108, ACTION_ARM_L2) > 0 and style ~= HAND_LEFT_BOTH then
	
            if IsWeaponCatalyst(sp_kind_R) == FALSE then
                return FALSE
            end
    -- Normal Catalysts right hand
    -- R1/L1 (while riding)
    if env(ActionRequest, ACTION_ARM_R2) == TRUE then
            if IsWeaponCatalyst(sp_kind_R) == FALSE then
                return FALSE
            end
	    magic_hand = HAND_RIGHT
            wep_hand = HAND_RIGHT

			selectss(cc_spell)
			setss()
			selectss(cc_spell)
			cc_key = ACTION_ARM_R2
        delayActRequestNo = ACTION_ARM_MAGIC_R
        -- R2
    elseif env(ActionRequest, ACTION_ARM_R1) == TRUE then
            if IsWeaponCatalyst(sp_kind_R) == FALSE then
                return FALSE
            end
			cc_key = ACTION_ARM_R1
		if checksid(cc_spell + 1) == -1 then
			selectss(0)
		else
			selectss(cc_spell + 1)
		end
			setss()
			selectss(cc_spell)
	    magic_hand = HAND_RIGHT
            wep_hand = HAND_RIGHT
        delayActRequestNo = ACTION_ARM_MAGIC_R2
        -- L2
    elseif env(ActionRequest, ACTION_ARM_L1) == TRUE then
            if IsWeaponCatalyst(sp_kind_R) == FALSE then
                return FALSE
            end
			cc_key = ACTION_ARM_L1
		if checksid(cc_spell + 1) == -1 and checksid(1) ~= -1 then
			selectss(1)
		elseif checksid(cc_spell + 1) == -1 and checksid(1) == -1 then
			selectss(0)
		elseif checksid(cc_spell + 1) ~= -1 and checksid(cc_spell + 2) == -1 then
			selectss(0)
		else
			selectss(cc_spell + 2)
		end
			setss()
			selectss(cc_spell)
	    magic_hand = HAND_RIGHT
            wep_hand = HAND_RIGHT
        delayActRequestNo = ACTION_ARM_MAGIC_L2
    else
        return FALSE
    end

		else
            return FALSE

		end

    act(DecideMagicUse)
    act(NotifyAIMagicCast)


    if env(IsMagicUseable, wep_hand, 0) == FALSE then
        ResetRequest()
        return FALSE
    end

    local magic_index = env(GetMagicAnimType)

    if magic_index == 254 or magic_index == 255 then
        ResetRequest()
        return FALSE
    end

    local is_atk_auto_aim = FALSE

    if magic_index == MAGIC_REQUEST_WHIP or magic_index == MAGIC_REQUEST_SLASH or magic_index == MAGIC_REQUEST_QUICKSLASH
        or magic_index == MAGIC_REQUEST_FLAME_GRAB or magic_index == MAGIC_REQUEST_CRUSH or magic_index
        == MAGIC_REQUEST_CHOP or magic_index == MAGIC_REQUEST_SCYTHE then
        is_atk_auto_aim = TRUE
    end

    if IsJumpMagic() == TRUE then
        if magic_hand == HAND_RIGHT then
            ExecEventHalfBlend(Event_MagicFireRightJump, ALLBODY)
        else
            ExecEventHalfBlend(Event_MagicFireLeftJump, ALLBODY)
        end

        IS_ATTACKED_JUMPMAGIC = TRUE
        act(SetIsMagicInUse, TRUE)
        act(SetNpcAIAttackRequestIDAfterBlend, env(GetNpcAIAttackRequestID))
        SetAIActionState()

        return TRUE
    elseif IsJumpMagic() == FALSE and IsQuickMagic() == FALSE then
        if magic_hand == HAND_RIGHT then
            ExecEventHalfBlend(Event_MagicFireRight, UPPER)
    SetVariable("JumpMotion_Override", 0.009999999776482582)
        else
            ExecEventHalfBlend(Event_MagicFireLeft, UPPER)
    SetVariable("JumpMotion_Override", 0.009999999776482582)
        end

        IS_ATTACKED_JUMPMAGIC = TRUE
        act(SetIsMagicInUse, TRUE)
        act(SetNpcAIAttackRequestIDAfterBlend, env(GetNpcAIAttackRequestID))
        SetAIActionState()

        return TRUE
    elseif env(GetSpEffectID, 140) == TRUE and GetVariable("JumpAttackForm") == 0 then
        ExecEventSync("Event_JumpNormalAttack_Add")
        SetVariable("JumpAttackFormRequest", 3)
        SetVariable("JumpAttackForm", 4)

        if wep_hand == HAND_LEFT and c_Style == HAND_RIGHT then
            SetVariable("JumpAttack_HandCondition", 2)
        else
            SetVariable("JumpAttack_HandCondition", 0)
        end

        act(SetIsMagicInUse, TRUE)
        act(SetNpcAIAttackRequestIDAfterBlend, env(GetNpcAIAttackRequestID))
        SetAIActionState()

        return TRUE
    elseif env(GetSpEffectID, 140) == FALSE and GetVariable("JumpAttack_Land") == 0 and GetVariable("JumpAttackForm")
        == 0 then
        SetVariable("JumpAttack_Land", 0)
        SetVariable("JumpAttackFormRequest", 3)
        SetVariable("JumpAttackForm", 4)

        if wep_hand == HAND_LEFT and c_Style == HAND_RIGHT then
            SetVariable("JumpAttack_HandCondition", 2)
        else
            SetVariable("JumpAttack_HandCondition", 0)
        end

        if jump_type == 0 then
            ExecEventNoReset("W_JumpAttack_Start_Falling")
        elseif jump_type == 1 then
            ExecEventNoReset("W_JumpAttack_Start_Falling_F")
        elseif jump_type == 2 then
            ExecEventNoReset("W_JumpAttack_Start_Falling_D")
        end

        act(SetIsMagicInUse, TRUE)
        act(SetNpcAIAttackRequestIDAfterBlend, env(GetNpcAIAttackRequestID))
        SetAIActionState()

        return TRUE
    end
end

function ck_ExecFallMagic()
    if env(IsMagicUseMenuOpened) ~= TRUE and iscycle ~= 2 then
	mky0, mkn0 = Magickeys()
    end

    if c_HasActionRequest == FALSE then
        return FALSE
    end

    if env(GetStamina) <= 0 then
        ResetRequest()
        return FALSE
    end
    if GetVariable("JumpAttackForm") >= 1 or IS_ATTACKED_JUMPMAGIC == TRUE then
        ResetRequest()
        return FALSE
    end
    if env(IsMagicUseMenuOpened) == TRUE then
        return FALSE
    end

    local style = c_Style
    local magic_hand = HAND_RIGHT
    local wep_hand = HAND_RIGHT
    local delayActRequestNo = -1
    local is_samagic = FALSE

		if GetEquipType(HAND_LEFT, WEAPON_CATEGORY_STAFF, 240) == TRUE and (((env(1108, ACTION_ARM_L1) > 0 or env(1108, ACTION_ARM_CHANGE_WEAPON_L) > 0) and env(1108, ACTION_ARM_R1) <= 0 and c_Style ~= HAND_LEFT_BOTH and c_Style ~= HAND_RIGHT_BOTH) or c_Style == HAND_LEFT_BOTH) then
	
            if GetEquipType(HAND_LEFT, WEAPON_CATEGORY_STAFF, 240) == FALSE then
                return FALSE
            end
    -- Normal Catalysts left hand
    -- R1/L1 (while riding)
    if env(ActionDuration, ACTION_ARM_R1) > 0 then
            if GetEquipType(HAND_LEFT, WEAPON_CATEGORY_STAFF, 240) == FALSE then
                return FALSE
            end
	    magic_hand = HAND_LEFT
            wep_hand = HAND_LEFT
			selectss(cc_spell)
			setss()
			selectss(cc_spell)
			cc_key = ACTION_ARM_R1
        delayActRequestNo = ACTION_ARM_MAGIC_L
        -- R2
    elseif env(ActionDuration, ACTION_ARM_R2) > 0 then
            if GetEquipType(HAND_LEFT, WEAPON_CATEGORY_STAFF, 240) == FALSE then
                return FALSE
            end
			cc_key = ACTION_ARM_R2
		if checksid(cc_spell + 1) == -1 then
			selectss(0)
		else
			selectss(cc_spell + 1)
		end
			setss()
			selectss(cc_spell)
	    magic_hand = HAND_LEFT
            wep_hand = HAND_LEFT
        delayActRequestNo = ACTION_ARM_MAGIC_R2
        -- L2
    elseif env(ActionDuration, ACTION_ARM_L2) > 0 then
            if GetEquipType(HAND_LEFT, WEAPON_CATEGORY_STAFF, 240) == FALSE then
                return FALSE
            end
			cc_key = ACTION_ARM_L2
		if checksid(cc_spell + 1) == -1 and checksid(1) ~= -1 then
			selectss(1)
		elseif checksid(cc_spell + 1) == -1 and checksid(1) == -1 then
			selectss(0)
		elseif checksid(cc_spell + 1) ~= -1 and checksid(cc_spell + 2) == -1 then
			selectss(0)
		else
			selectss(cc_spell + 2)
		end
			setss()
			selectss(cc_spell)
	    magic_hand = HAND_LEFT
            wep_hand = HAND_LEFT
        delayActRequestNo = ACTION_ARM_MAGIC_L
    else
        return FALSE
    end
		elseif GetEquipType(HAND_RIGHT, WEAPON_CATEGORY_STAFF, 240) == TRUE and env(1108, ACTION_ARM_L1) <= 0 and (env(1108, ACTION_ARM_R1) > 0 or env(1108, ACTION_ARM_R2) > 0 or env(1108, ACTION_ARM_L2) > 0) and c_Style ~= HAND_LEFT_BOTH then
	
            if GetEquipType(HAND_RIGHT, WEAPON_CATEGORY_STAFF, 240) == FALSE then
                return FALSE
            end
    -- Normal Catalysts right hand
    -- R1/L1 (while riding)
    if env(ActionDuration, ACTION_ARM_R1) > 0 then
            if GetEquipType(HAND_RIGHT, WEAPON_CATEGORY_STAFF, 240) == FALSE then
                return FALSE
            end
	    magic_hand = HAND_RIGHT
            wep_hand = HAND_RIGHT

			selectss(cc_spell)
			setss()
			selectss(cc_spell)
			cc_key = ACTION_ARM_R1
        delayActRequestNo = ACTION_ARM_MAGIC_R
        -- R2
    elseif env(ActionDuration, ACTION_ARM_R2) > 0 then
            if GetEquipType(HAND_RIGHT, WEAPON_CATEGORY_STAFF, 240) == FALSE then
                return FALSE
            end
			cc_key = ACTION_ARM_R2
		if checksid(cc_spell + 1) == -1 then
			selectss(0)
		else
			selectss(cc_spell + 1)
		end
			setss()
			selectss(cc_spell)
	    magic_hand = HAND_RIGHT
            wep_hand = HAND_RIGHT
        delayActRequestNo = ACTION_ARM_MAGIC_R2
        -- L2
    elseif env(ActionDuration, ACTION_ARM_L2) > 0 then
            if GetEquipType(HAND_RIGHT, WEAPON_CATEGORY_STAFF, 240) == FALSE then
                return FALSE
            end
			cc_key = ACTION_ARM_L2
		if checksid(cc_spell + 1) == -1 and checksid(1) ~= -1 then
			selectss(1)
		elseif checksid(cc_spell + 1) == -1 and checksid(1) == -1 then
			selectss(0)
		elseif checksid(cc_spell + 1) ~= -1 and checksid(cc_spell + 2) == -1 then
			selectss(0)
		else
			selectss(cc_spell + 2)
		end
			setss()
			selectss(cc_spell)
	    magic_hand = HAND_RIGHT
            wep_hand = HAND_RIGHT
        delayActRequestNo = ACTION_ARM_MAGIC_R
    else
        return FALSE
    end

		elseif IsWeaponCatalyst(sp_kind_L) == TRUE and env(1108, ACTION_ARM_L2) > 0 and c_Style ~= HAND_RIGHT_BOTH then
	
            if IsWeaponCatalyst(sp_kind_L) == FALSE then
                return FALSE
            end
    -- Normal Catalysts left hand
    -- R1/L1 (while riding)
    if env(ActionDuration, ACTION_ARM_R2) > 0 then
            if IsWeaponCatalyst(sp_kind_L) == FALSE then
                return FALSE
            end
	    magic_hand = HAND_LEFT
            wep_hand = HAND_LEFT
			selectss(cc_spell)
			setss()
			selectss(cc_spell)
			cc_key = ACTION_ARM_R2
        delayActRequestNo = ACTION_ARM_MAGIC_R
        -- R2
    elseif env(ActionDuration, ACTION_ARM_R1) > 0 then
            if IsWeaponCatalyst(sp_kind_L) == FALSE then
                return FALSE
            end
			cc_key = ACTION_ARM_R1
		if checksid(cc_spell + 1) == -1 then
			selectss(0)
		else
			selectss(cc_spell + 1)
		end
			setss()
			selectss(cc_spell)
	    magic_hand = HAND_LEFT
            wep_hand = HAND_LEFT
        delayActRequestNo = ACTION_ARM_MAGIC_R2
        -- L2
    elseif env(ActionDuration, ACTION_ARM_L1) > 0 then
            if IsWeaponCatalyst(sp_kind_L) == FALSE then
                return FALSE
            end
			cc_key = ACTION_ARM_L1
		if checksid(cc_spell + 1) == -1 and checksid(1) ~= -1 then
			selectss(1)
		elseif checksid(cc_spell + 1) == -1 and checksid(1) == -1 then
			selectss(0)
		elseif checksid(cc_spell + 1) ~= -1 and checksid(cc_spell + 2) == -1 then
			selectss(0)
		else
			selectss(cc_spell + 2)
		end
			setss()
			selectss(cc_spell)
	    magic_hand = HAND_LEFT
            wep_hand = HAND_LEFT
        delayActRequestNo = ACTION_ARM_MAGIC_L2
    else
        return FALSE
    end
		elseif IsWeaponCatalyst(sp_kind_R) == TRUE and env(1108, ACTION_ARM_L2) > 0 and c_Style ~= HAND_LEFT_BOTH then
	
            if IsWeaponCatalyst(sp_kind_R) == FALSE then
                return FALSE
            end
    -- Normal Catalysts right hand
    -- R1/L1 (while riding)
    if env(ActionDuration, ACTION_ARM_R2) > 0 then
            if IsWeaponCatalyst(sp_kind_R) == FALSE then
                return FALSE
            end
	    magic_hand = HAND_RIGHT
            wep_hand = HAND_RIGHT

			selectss(cc_spell)
			setss()
			selectss(cc_spell)
			cc_key = ACTION_ARM_R2
        delayActRequestNo = ACTION_ARM_MAGIC_R
        -- R2
    elseif env(ActionDuration, ACTION_ARM_R1) > 0 then
            if IsWeaponCatalyst(sp_kind_R) == FALSE then
                return FALSE
            end
			cc_key = ACTION_ARM_R1
		if checksid(cc_spell + 1) == -1 then
			selectss(0)
		else
			selectss(cc_spell + 1)
		end
			setss()
			selectss(cc_spell)
	    magic_hand = HAND_RIGHT
            wep_hand = HAND_RIGHT
        delayActRequestNo = ACTION_ARM_MAGIC_R2
        -- L2
    elseif env(ActionDuration, ACTION_ARM_L1) > 0 then
            if IsWeaponCatalyst(sp_kind_R) == FALSE then
                return FALSE
            end
			cc_key = ACTION_ARM_L1
		if checksid(cc_spell + 1) == -1 and checksid(1) ~= -1 then
			selectss(1)
		elseif checksid(cc_spell + 1) == -1 and checksid(1) == -1 then
			selectss(0)
		elseif checksid(cc_spell + 1) ~= -1 and checksid(cc_spell + 2) == -1 then
			selectss(0)
		else
			selectss(cc_spell + 2)
		end
			setss()
			selectss(cc_spell)
	    magic_hand = HAND_RIGHT
            wep_hand = HAND_RIGHT
        delayActRequestNo = ACTION_ARM_MAGIC_L2
    else
        return FALSE
    end

		else
            return FALSE

		end


    act(DecideMagicUse)
    act(NotifyAIMagicCast)

    if env(IsMagicUseable, wep_hand, 0) == FALSE then
        ResetRequest()
        return FALSE
    end

    local magic_index = env(GetMagicAnimType)

    if magic_index == 254 or magic_index == 255 then
        ResetRequest()
        return FALSE
    end

    local is_atk_auto_aim = FALSE

    if magic_index == MAGIC_REQUEST_WHIP or magic_index == MAGIC_REQUEST_SLASH or magic_index == MAGIC_REQUEST_QUICKSLASH
        or magic_index == MAGIC_REQUEST_FLAME_GRAB or magic_index == MAGIC_REQUEST_CRUSH or magic_index
        == MAGIC_REQUEST_CHOP or magic_index == MAGIC_REQUEST_SCYTHE then
        is_atk_auto_aim = TRUE
    end

    if IsJumpMagic() == TRUE then
        if magic_hand == HAND_RIGHT then
            ExecEventHalfBlend(Event_MagicFireRightJump, ALLBODY)
    SetVariable("JumpMotion_Override", 0.009999999776482582)
        else
            ExecEventHalfBlend(Event_MagicFireLeftJump, ALLBODY)
    SetVariable("JumpMotion_Override", 0.009999999776482582)
        end

        IS_ATTACKED_JUMPMAGIC = TRUE
        act(SetIsMagicInUse, TRUE)
        act(SetNpcAIAttackRequestIDAfterBlend, env(GetNpcAIAttackRequestID))
        SetAIActionState()

        return TRUE
    elseif IsJumpMagic() == FALSE and IsQuickMagic() == FALSE then
        if magic_hand == HAND_RIGHT then
            ExecEventHalfBlend(Event_MagicFireRight, UPPER)
        else
            ExecEventHalfBlend(Event_MagicFireLeft, UPPER)
        end

        IS_ATTACKED_JUMPMAGIC = TRUE
        act(SetIsMagicInUse, TRUE)
        act(SetNpcAIAttackRequestIDAfterBlend, env(GetNpcAIAttackRequestID))
        SetAIActionState()

        return TRUE
    else

        SetVariable("JumpAttack_Land", 0)
        SetVariable("JumpAttackFormRequest", 3)
        SetVariable("JumpAttackForm", 4)

        if wep_hand == HAND_LEFT and c_Style == HAND_RIGHT then
            SetVariable("JumpAttack_HandCondition", 2)
        else
            SetVariable("JumpAttack_HandCondition", 0)
        end

        ExecEventNoReset("W_JumpAttack_Start_Falling")
        act(SetIsMagicInUse, TRUE)
        act(SetNpcAIAttackRequestIDAfterBlend, env(GetNpcAIAttackRequestID))
        SetAIActionState()

        return TRUE
    end
end


function ck_ExecComboMagic(magic_hand, blend_type, lastUsedMagicAnim, magicAnim)
    -- 100600 "[HKS] Right Combo Magic 1: Window"
    -- 100601 "[HKS] Right Combo Magic 2: Window"
    -- 100605 "[HKS] Left Combo Magic 1: Window"
    -- 100606 "[HKS] Left Combo Magic 2: Window"

    if lastUsedMagicAnim ~= magicAnim then
        return FALSE
    end
    if IsComboMagic() == FALSE then
        return FALSE
    end
    if env(IsOnMount) == TRUE then
        if env(GetSpEffectID, 100600) == TRUE then
            ExecEventAllBody("W_RideMagicFireCombo1")
            return TRUE
        elseif env(GetSpEffectID, 100601) == TRUE then
            ExecEventAllBody("W_RideMagicFireCombo2")
            return TRUE
        else
            return FALSE
        end
    elseif env(GetSpEffectID, 100600) == TRUE then
	ExecEventHalfBlend(Event_MagicFireRight2, blend_type)
	return TRUE
    elseif env(GetSpEffectID, 100601) == TRUE then
	ExecEventHalfBlend(Event_MagicFireRight3, blend_type)
	return TRUE
    elseif env(GetSpEffectID, 100605) == TRUE then
        ExecEventHalfBlend(Event_MagicFireLeft2, blend_type)
        return TRUE
    elseif env(GetSpEffectID, 100606) == TRUE then
        ExecEventHalfBlend(Event_MagicFireLeft3, blend_type)
        return TRUE
    else
        return FALSE
    end
end

function ck_MagicLoopRight_Upper_onUpdate()
    act(NotifyAIOfBehaviourState, IDX_AINOTE_STATETYPE, IDX_AINOTE_STATETYPE_CHARGEMAGIC)
    local blend_type, lower_state = GetHalfBlendInfo()
    if MagicCommonFunction(blend_type, QUICKTYPE_NORMAL, FALSE) == TRUE then
        return
    end
    local wep_hand = HAND_RIGHT
    if c_Style == HAND_LEFT_BOTH then
        wep_hand = HAND_LEFT
    end

    local button = ACTION_ARM_R1
    local sp_kind = env(GetEquipWeaponSpecialCategoryNumber, wep_hand)
    if IsWeaponCatalyst(sp_kind) == TRUE then
        button = ACTION_ARM_R2
    end

    if (env(1108, cc_key) <= 0) or env(IsMagicUseable, wep_hand, 1) == FALSE or env(GetStamina) <= 0 then
        local magic_index = env(GetMagicAnimType)
        if magic_index == MAGIC_REQUEST_EX_LARGE_ARROW then
            ExecEventHalfBlend(Event_MagicFireRightCancel2, blend_type)
        else
            ExecEventHalfBlend(Event_MagicFireRightCancel, blend_type)
        end
        return
    end
    if HalfBlendLowerCommonFunction(Event_MagicLoopRight, lower_state, FALSE) == TRUE then
        return
    end
end

function ck_MagicFireRight_Upper_onUpdate()
    local blend_type, lower_state = GetHalfBlendInfo()
    local is_throw = FALSE
    local magic_index = env(GetMagicAnimType)
    if magic_index == MAGIC_REQUEST_MAD_THROW then
        is_throw = TRUE
    end
    if MagicCommonFunction(ALLBODY, QUICKTYPE_NORMAL, is_throw) == TRUE then
        return
    end
    local wep_hand = HAND_RIGHT
    if c_Style == HAND_LEFT_BOTH then
        wep_hand = HAND_LEFT
    end

	if env(GetMagicAnimType) == MAGIC_REQUEST_CRYSTAL_MOON or env(GetMagicAnimType) == 161 then
        IS_ATTACKED_JUMPMAGIC = TRUE
    if env(GetSpEffectID, 100610) == TRUE
        and env(GetFP) <= 0 then
        ExecEventHalfBlend(Event_MagicFireRightCancel, blend_type)
        return
    end
	    if env(1116, 100611) == TRUE then
		if GetVariable("MoveSpeedLevel") > 0.06 and env(ActionDuration, ACTION_ARM_L3) > 0 then
		    act(SetMovementScaleMult, 330)
		elseif GetVariable("MoveSpeedLevel") > 0.06 and env(ActionDuration, ACTION_ARM_L3) <= 0 then
		    act(SetMovementScaleMult, 210)
		elseif GetVariable("MoveSpeedLevel") < 0.06 then
		    act(SetMovementScaleMult, 0)
		end
	    elseif env(1116, 100612) == TRUE then
		if GetVariable("MoveSpeedLevel") > 0.06 and env(ActionDuration, ACTION_ARM_L3) > 0 then
		    act(SetMovementScaleMult, 270)
		elseif GetVariable("MoveSpeedLevel") > 0.06 and env(ActionDuration, ACTION_ARM_L3) <= 0 then
		    act(SetMovementScaleMult, 180)
		elseif GetVariable("MoveSpeedLevel") < 0.06 then
		    act(SetMovementScaleMult, 0)
		end
	    else
		act(SetMovementScaleMult, mod_CJ)
	    end
	else
	    act(SetMovementScaleMult, mod_CJ)
	end

    local button = ACTION_ARM_R1
    local sp_kind = env(GetEquipWeaponSpecialCategoryNumber, wep_hand)
    if IsWeaponCatalyst(sp_kind) == TRUE then
        button = ACTION_ARM_R2
    end

    if env(GetSpEffectID, 100610) == TRUE
        and ((env(1108, cc_key) <= 0) or env(IsMagicUseable, wep_hand, 1) == FALSE) then
        ExecEventHalfBlend(Event_MagicFireRightCancel, blend_type)
        return
    end

    if CheckIfHoldMagic() == TRUE and (env(IsAnimEndBySkillCancel) == TRUE or env(IsAnimEnd, 1) == TRUE) then
        if (env(1108, cc_key) > 0) then
            ExecEventHalfBlend(Event_MagicLoopRight, blend_type)
            return
        else
            ExecEventHalfBlend(Event_MagicFireRightCancel, blend_type)
            return
        end
    end
    if lower_state == LOWER_MOVE and env(IsMoveCancelPossible) == TRUE then
        SetMagicGeneratorTransitionIndex()
        ExecEventHalfBlendNoReset(Event_Move, UPPER)
        return
    end
    if HalfBlendUpperCommonFunction(lower_state) == TRUE then
        SetMagicGeneratorTransitionIndex()
        return
    end
    if HalfBlendLowerCommonFunction(Event_MagicFireRight, lower_state, FALSE) == TRUE then
        SetMagicGeneratorTransitionIndex()
        return
    end
end

function ck_MagicLoopLeft_Upper_onUpdate()
    act(NotifyAIOfBehaviourState, IDX_AINOTE_STATETYPE, IDX_AINOTE_STATETYPE_CHARGEMAGIC)
    local blend_type, lower_state = GetHalfBlendInfo()
    if MagicCommonFunction(blend_type, QUICKTYPE_NORMAL, FALSE) == TRUE then
        return
    end
    local button = ACTION_ARM_L1
    local sp_kind = env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT)
    if IsWeaponCatalyst(sp_kind) == TRUE then
        button = ACTION_ARM_L2
    end

    if (env(1108, cc_key) <= 0) or env(IsMagicUseable, HAND_LEFT, 1) == FALSE or env(GetStamina) <= 0 then
        local magic_index = env(GetMagicAnimType)
        if magic_index == MAGIC_REQUEST_EX_LARGE_ARROW then
            ExecEventHalfBlend(Event_MagicFireLeftCancel2, blend_type)
        else
            ExecEventHalfBlend(Event_MagicFireLeftCancel, blend_type)
        end
    end
    if HalfBlendLowerCommonFunction(Event_MagicLoopLeft, lower_state, FALSE) == TRUE then
        return
    end
end

function ck_MagicFireRight2_Upper_onUpdate()
    local blend_type, lower_state = GetHalfBlendInfo()
    if MagicCommonFunction(ALLBODY, QUICKTYPE_NORMAL, FALSE) == TRUE then
        return
    end
    local mp_condition = 0
    if GetVariable("IndexChargeMagicType") == 2 then
        mp_condition = 33
    end
    local wep_hand = HAND_RIGHT
    if c_Style == HAND_LEFT_BOTH then
        wep_hand = HAND_LEFT
    end
    local button = ACTION_ARM_R1
    local sp_kind = env(GetEquipWeaponSpecialCategoryNumber, wep_hand)
    if IsWeaponCatalyst(sp_kind) == TRUE then
        button = ACTION_ARM_R2
    end

    if env(GetSpEffectID, 100610) == TRUE and ((env(1108, cc_key) <= 0) or mp_condition >= env(GetFP)) then
        ExecEventHalfBlend(Event_MagicFireRightCancel2, blend_type)
        return
    end
    if lower_state == LOWER_MOVE and env(IsMoveCancelPossible) == TRUE then
        ExecEventHalfBlendNoReset(Event_Move, UPPER)
        return
    end
    if HalfBlendUpperCommonFunction(lower_state) == TRUE then
        return
    end
    if HalfBlendLowerCommonFunction(Event_MagicFireRight2, lower_state, FALSE) == TRUE then
        return
    end
end

function ck_MagicFireRight3_Upper_onUpdate()
    local blend_type, lower_state = GetHalfBlendInfo()
    if MagicCommonFunction(ALLBODY, QUICKTYPE_NORMAL, FALSE) == TRUE then
        return
    end
    local mp_condition = 0
    if GetVariable("IndexChargeMagicType") == 2 then
        mp_condition = 33
    end
    local wep_hand = HAND_RIGHT
    if c_Style == HAND_LEFT_BOTH then
        wep_hand = HAND_LEFT
    end
    local button = ACTION_ARM_R1
    local sp_kind = env(GetEquipWeaponSpecialCategoryNumber, wep_hand)
    if IsWeaponCatalyst(sp_kind) == TRUE then
        button = ACTION_ARM_R2
    end

    if env(GetSpEffectID, 100610) == TRUE and ((env(1108, cc_key) <= 0) or mp_condition >= env(GetFP)) then
        ExecEventHalfBlend(Event_MagicFireRightCancel3, blend_type)
        return
    end
    if lower_state == LOWER_MOVE and env(IsMoveCancelPossible) == TRUE then
        ExecEventHalfBlendNoReset(Event_Move, UPPER)
        return
    end
    if HalfBlendUpperCommonFunction(lower_state) == TRUE then
        return
    end
    if HalfBlendLowerCommonFunction(Event_MagicFireRight3, lower_state, FALSE) == TRUE then
        return
    end
end

function ck_MagicFireLeft_Upper_onUpdate()
    local blend_type, lower_state = GetHalfBlendInfo()
    local is_throw = FALSE
    local magic_index = env(GetMagicAnimType)
    if magic_index == MAGIC_REQUEST_MAD_THROW then
        is_throw = TRUE
    end
    if MagicCommonFunction(ALLBODY, QUICKTYPE_NORMAL, is_throw) == TRUE then
        return
    end

	if env(GetMagicAnimType) == MAGIC_REQUEST_CRYSTAL_MOON or env(GetMagicAnimType) == 161 then
        IS_ATTACKED_JUMPMAGIC = TRUE
    if env(GetSpEffectID, 100610) == TRUE
        and env(GetFP) <= 0 then
        ExecEventHalfBlend(Event_MagicFireLeftCancel, blend_type)
        return
    end
	    if env(1116, 100611) == TRUE then
		if GetVariable("MoveSpeedLevel") > 0.06 and env(ActionDuration, ACTION_ARM_L3) > 0 then
		    act(SetMovementScaleMult, 330)
		elseif GetVariable("MoveSpeedLevel") > 0.06 and env(ActionDuration, ACTION_ARM_L3) <= 0 then
		    act(SetMovementScaleMult, 210)
		elseif GetVariable("MoveSpeedLevel") < 0.06 then
		    act(SetMovementScaleMult, 0)
		end
	    elseif env(1116, 100612) == TRUE then
		if GetVariable("MoveSpeedLevel") > 0.06 and env(ActionDuration, ACTION_ARM_L3) > 0 then
		    act(SetMovementScaleMult, 270)
		elseif GetVariable("MoveSpeedLevel") > 0.06 and env(ActionDuration, ACTION_ARM_L3) <= 0 then
		    act(SetMovementScaleMult, 180)
		elseif GetVariable("MoveSpeedLevel") < 0.06 then
		    act(SetMovementScaleMult, 0)
		end
	    else
		act(SetMovementScaleMult, mod_CJ)
	    end
	else
	    act(SetMovementScaleMult, mod_CJ)
	end

    local button = ACTION_ARM_L1
    local sp_kind = env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT)
    if IsWeaponCatalyst(sp_kind) == TRUE then
        button = ACTION_ARM_L2
    end


    if env(GetSpEffectID, 100610) == TRUE
        and ((env(1108, cc_key) <= 0) or env(IsMagicUseable, HAND_LEFT, 1) == FALSE) then
        ExecEventHalfBlend(Event_MagicFireLeftCancel, blend_type)
        return
    end
    if CheckIfHoldMagic() == TRUE and (env(IsAnimEndBySkillCancel) == TRUE or env(IsAnimEnd, 1) == TRUE) then
        if (env(1108, cc_key) > 0) then
            ExecEventHalfBlend(Event_MagicLoopLeft, blend_type)
            return
        else
            ExecEventHalfBlend(Event_MagicFireLeftCancel, blend_type)
            return
        end
    end
    if lower_state == LOWER_MOVE and env(IsMoveCancelPossible) == TRUE then
        SetMagicGeneratorTransitionIndex()
        ExecEventHalfBlendNoReset(Event_Move, UPPER)
        return
    end
    if HalfBlendUpperCommonFunction(lower_state) == TRUE then
        SetMagicGeneratorTransitionIndex()
        return
    end
    if HalfBlendLowerCommonFunction(Event_MagicFireLeft, lower_state, FALSE) == TRUE then
        SetMagicGeneratorTransitionIndex()
        return
    end
end

function ck_MagicFireLeft2_Upper_onUpdate()
    local blend_type, lower_state = GetHalfBlendInfo()
    if MagicCommonFunction(ALLBODY, QUICKTYPE_NORMAL, FALSE) == TRUE then
        return
    end

    local button = ACTION_ARM_L1
    local sp_kind = env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT)
    if IsWeaponCatalyst(sp_kind) == TRUE then
        button = ACTION_ARM_L2
    end


    if env(GetSpEffectID, 100610) == TRUE
        and ((env(1108, cc_key) <= 0) or env(IsMagicUseable, HAND_LEFT, 1) == FALSE) then
        ExecEventHalfBlend(Event_MagicFireLeftCancel2, blend_type)
        return
    end
    if lower_state == LOWER_MOVE and env(IsMoveCancelPossible) == TRUE then
        ExecEventHalfBlendNoReset(Event_Move, UPPER)
        return
    end
    if HalfBlendUpperCommonFunction(lower_state) == TRUE then
        return
    end
    if HalfBlendLowerCommonFunction(Event_MagicFireLeft2, lower_state, FALSE) == TRUE then
        return
    end
end

function ck_MagicFireLeft3_Upper_onUpdate()
    local blend_type, lower_state = GetHalfBlendInfo()
    if MagicCommonFunction(ALLBODY, QUICKTYPE_NORMAL, FALSE) == TRUE then
        return
    end

    local button = ACTION_ARM_L1
    local sp_kind = env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT)
    if IsWeaponCatalyst(sp_kind) == TRUE then
        button = ACTION_ARM_L2
    end

    if env(GetSpEffectID, 100610) == TRUE
        and ((env(ActionDuration, cc_key) <= 0) or env(IsMagicUseable, HAND_LEFT, 1) == FALSE) then
        ExecEventHalfBlend(Event_MagicFireLeftCancel3, blend_type)
        return
    end
    if lower_state == LOWER_MOVE and env(IsMoveCancelPossible) == TRUE then
        ExecEventHalfBlendNoReset(Event_Move, UPPER)
        return
    end
    if HalfBlendUpperCommonFunction(lower_state) == TRUE then
        return
    end
    if HalfBlendLowerCommonFunction(Event_MagicFireLeftCancel3, lower_state, FALSE) == TRUE then
        return
    end
end

function ck_MagicFireRightJump_Upper_onUpdate()
    local blend_type, lower_state = GetHalfBlendInfo()
    if MagicCommonFunction(ALLBODY, QUICKTYPE_NORMAL, FALSE) == TRUE then
        return
    end
    local wep_hand = HAND_RIGHT
    if c_Style == HAND_LEFT_BOTH then
        wep_hand = HAND_LEFT
    end

	if env(GetMagicAnimType) == MAGIC_REQUEST_CRYSTAL_MOON or env(GetMagicAnimType) == 161 then
        IS_ATTACKED_JUMPMAGIC = TRUE
    if env(GetSpEffectID, 100610) == TRUE
        and env(GetFP) <= 0 then
        ExecEventHalfBlend(Event_MagicFireRightJumpCancel, blend_type)
        return
    end
	    if env(1116, 100611) == TRUE then
		if GetVariable("MoveSpeedLevel") > 0.06 and env(ActionDuration, ACTION_ARM_L3) > 0 then
		    act(SetMovementScaleMult, 330)
		elseif GetVariable("MoveSpeedLevel") > 0.06 and env(ActionDuration, ACTION_ARM_L3) <= 0 then
		    act(SetMovementScaleMult, 210)
		elseif GetVariable("MoveSpeedLevel") < 0.06 then
		    act(SetMovementScaleMult, 0)
		end
	    elseif env(1116, 100612) == TRUE then
		if GetVariable("MoveSpeedLevel") > 0.06 and env(ActionDuration, ACTION_ARM_L3) > 0 then
		    act(SetMovementScaleMult, 270)
		elseif GetVariable("MoveSpeedLevel") > 0.06 and env(ActionDuration, ACTION_ARM_L3) <= 0 then
		    act(SetMovementScaleMult, 180)
		elseif GetVariable("MoveSpeedLevel") < 0.06 then
		    act(SetMovementScaleMult, 0)
		end
	    else
		act(SetMovementScaleMult, mod_CJ)
	    end
	else
	    act(SetMovementScaleMult, mod_CJ)
	end

    local button = ACTION_ARM_R1
    local sp_kind = env(GetEquipWeaponSpecialCategoryNumber, wep_hand)
    if IsWeaponCatalyst(sp_kind) == TRUE then
        button = ACTION_ARM_R2
    end

    if env(GetSpEffectID, 100610) == TRUE
        and (env(1108, cc_key) <= 0 or env(IsMagicUseable, wep_hand, 1) == FALSE) then
        ExecEventHalfBlend(Event_MagicFireRightJumpCancel, blend_type)
        return
    end
    if lower_state == LOWER_MOVE and env(IsMoveCancelPossible) == TRUE then
        ExecEventHalfBlendNoReset(Event_Move, UPPER)
        return
    end
    if HalfBlendUpperCommonFunction(lower_state) == TRUE then
        return
    end
    if HalfBlendLowerCommonFunction(Event_MagicFireRightJump, lower_state, FALSE) == TRUE then
        return
    end
end

function ck_MagicFireLeftJump_Upper_onUpdate()
    local blend_type, lower_state = GetHalfBlendInfo()
    if MagicCommonFunction(ALLBODY, QUICKTYPE_NORMAL, FALSE) == TRUE then
        return
    end

	if env(GetMagicAnimType) == MAGIC_REQUEST_CRYSTAL_MOON or env(GetMagicAnimType) == 161 then
        IS_ATTACKED_JUMPMAGIC = TRUE
    if env(GetSpEffectID, 100610) == TRUE
        and env(GetFP) <= 0 then
        ExecEventHalfBlend(Event_MagicFireLeftJumpCancel, blend_type)
        return
    end
	    if env(1116, 100611) == TRUE then
		if GetVariable("MoveSpeedLevel") > 0.06 and env(ActionDuration, ACTION_ARM_L3) > 0 then
		    act(SetMovementScaleMult, 330)
		elseif GetVariable("MoveSpeedLevel") > 0.06 and env(ActionDuration, ACTION_ARM_L3) <= 0 then
		    act(SetMovementScaleMult, 210)
		elseif GetVariable("MoveSpeedLevel") < 0.06 then
		    act(SetMovementScaleMult, 0)
		end
	    elseif env(1116, 100612) == TRUE then
		if GetVariable("MoveSpeedLevel") > 0.06 and env(ActionDuration, ACTION_ARM_L3) > 0 then
		    act(SetMovementScaleMult, 270)
		elseif GetVariable("MoveSpeedLevel") > 0.06 and env(ActionDuration, ACTION_ARM_L3) <= 0 then
		    act(SetMovementScaleMult, 180)
		elseif GetVariable("MoveSpeedLevel") < 0.06 then
		    act(SetMovementScaleMult, 0)
		end
	    else
		act(SetMovementScaleMult, mod_CJ)
	    end
	else
	    act(SetMovementScaleMult, mod_CJ)
	end

    local wep_hand = HAND_LEFT
    local button = ACTION_ARM_L1
    local sp_kind = env(GetEquipWeaponSpecialCategoryNumber, wep_hand)
    if IsWeaponCatalyst(sp_kind) == TRUE then
        button = ACTION_ARM_L2
    end
    if env(GetSpEffectID, 100610) == TRUE
        and (env(1108, cc_key) <= 0 or env(IsMagicUseable, wep_hand, 1) == FALSE) then
        ExecEventHalfBlend(Event_MagicFireLeftJumpCancel, blend_type)
        return
    end
    if lower_state == LOWER_MOVE and env(IsMoveCancelPossible) == TRUE then
        ExecEventHalfBlendNoReset(Event_Move, UPPER)
        return
    end
    if HalfBlendUpperCommonFunction(lower_state) == TRUE then
        return
    end
    if HalfBlendLowerCommonFunction(Event_MagicFireLeftJump, lower_state, FALSE) == TRUE then
        return
    end
end


function ck_RideMagicFire_onUpdate()
    if RideCommonFunction("W_RideAttack_R_Top", "W_RideAttack_R_Hard1_Start", "W_RideAttack_L_Top",
        "W_RideAttack_L_Hard1_Start") == TRUE then
        return
    end

    local wep_hand = HAND_RIGHT

    if c_Style == HAND_LEFT_BOTH then
        wep_hand = HAND_LEFT
    end

    local buttonR = ACTION_ARM_R1
    local buttonL = ACTION_ARM_L1
    local sp_kind = env(GetEquipWeaponSpecialCategoryNumber, wep_hand)

    if IsWeaponCatalyst(sp_kind) == TRUE then
        buttonR = ACTION_ARM_R2
        buttonL = ACTION_ARM_L2
    end

    if env(GetSpEffectID, 100610) == TRUE
        and (env(1108, cc_key) <= 0 or env(IsMagicUseable, wep_hand, 1)
            == FALSE) then
        ExecEventAllBody("W_RideMagicFireCancel")
        return
    end
    if CheckIfHoldMagic() == TRUE and (env(IsAnimEndBySkillCancel) == TRUE or env(IsAnimEnd, 0) == TRUE) then
        if env(1108, cc_key) > 0 then
            ExecEventAllBody("W_RideMagicLoop")
            return
        else
            ExecEventAllBody("W_RideMagicFireCancel")
            return
        end
    end

    local lower_only = TRUE
    local enable_turn = FALSE

    if env(MovementRequest) == TRUE or env(IsAnimEnd, 0) == TRUE then
        lower_only = FALSE
        enable_turn = TRUE
    end

    if RideRequestFunction(RIDE_MOVE_TYPE_OTHER, enable_turn, lower_only) == TRUE then
        return
    end
end

function ck_RideMagicLoop_onUpdate()
    if RideCommonFunction("W_RideAttack_R_Top", "W_RideAttack_R_Hard1_Start", "W_RideAttack_L_Top",
        "W_RideAttack_L_Hard1_Start") == TRUE then
        return
    end

    local wep_hand = HAND_RIGHT

    if c_Style == HAND_LEFT_BOTH then
        wep_hand = HAND_LEFT
    end

    local buttonR = ACTION_ARM_R1
    local buttonL = ACTION_ARM_L1
    local sp_kind = env(GetEquipWeaponSpecialCategoryNumber, wep_hand)

    if IsWeaponCatalyst(sp_kind) == TRUE then
        buttonR = ACTION_ARM_R2
        buttonL = ACTION_ARM_L2
    end

    if env(1108, cc_key) <= 0 or env(IsMagicUseable, wep_hand, 1) == FALSE or env(GetStamina) <= 0 then
        local magic_index = env(GetMagicAnimType)
        if magic_index == MAGIC_REQUEST_EX_LARGE_ARROW then
            ExecEventAllBody("W_RideMagicFireCombo1Cancel")
        else
            ExecEventAllBody("W_RideMagicFireCancel")
        end
        return
    end

    local lower_only = TRUE
    local enable_turn = FALSE

    if RideRequestFunction(RIDE_MOVE_TYPE_OTHER, enable_turn, lower_only) == TRUE then
        return
    end
end

function ck_RideMagicFireCombo1_onUpdate()
    if RideCommonFunction("W_RideAttack_R_Top", "W_RideAttack_R_Hard1_Start", "W_RideAttack_L_Top",
        "W_RideAttack_L_Hard1_Start") == TRUE then
        return
    end

    local wep_hand = HAND_RIGHT

    if c_Style == HAND_LEFT_BOTH then
        wep_hand = HAND_LEFT
    end

    local buttonR = ACTION_ARM_R1
    local buttonL = ACTION_ARM_L1
    local sp_kind = env(GetEquipWeaponSpecialCategoryNumber, wep_hand)
    if IsWeaponCatalyst(sp_kind) == TRUE then
        buttonR = ACTION_ARM_R2
        buttonL = ACTION_ARM_L2
    end

    if env(GetSpEffectID, 100610) == TRUE and (env(1108, cc_key) <= 0 or env(IsMagicUseable, wep_hand, 1) == FALSE) then
        ExecEventAllBody("W_RideMagicFireCombo1Cancel")
        return
    end

    local lower_only = TRUE
    local enable_turn = FALSE

    if env(MovementRequest) == TRUE or env(IsAnimEnd, 0) == TRUE then
        lower_only = FALSE
        enable_turn = TRUE
    end

    if RideRequestFunction(RIDE_MOVE_TYPE_OTHER, enable_turn, lower_only) == TRUE then
        return
    end
end

function ck_RideMagicFireCombo2_onUpdate()
    if RideCommonFunction("W_RideAttack_R_Top", "W_RideAttack_R_Hard1_Start", "W_RideAttack_L_Top",
        "W_RideAttack_L_Hard1_Start") == TRUE then
        return
    end

    local wep_hand = HAND_RIGHT

    if c_Style == HAND_LEFT_BOTH then
        wep_hand = HAND_LEFT
    end

    local buttonR = ACTION_ARM_R1
    local buttonL = ACTION_ARM_L1
    local sp_kind = env(GetEquipWeaponSpecialCategoryNumber, wep_hand)
    if IsWeaponCatalyst(sp_kind) == TRUE then
        buttonR = ACTION_ARM_R2
        buttonL = ACTION_ARM_L2
    end

    if env(GetSpEffectID, 100610) == TRUE and (env(1108, cc_key) <= 0 or env(IsMagicUseable, wep_hand, 1)
            == FALSE) then
        ExecEventAllBody("W_RideMagicFireCombo2Cancel")
        return
    end

    local lower_only = TRUE
    local enable_turn = FALSE

    if env(MovementRequest) == TRUE or env(IsAnimEnd, 0) == TRUE then
        lower_only = FALSE
        enable_turn = TRUE
    end

    if RideRequestFunction(RIDE_MOVE_TYPE_OTHER, enable_turn, lower_only) == TRUE then
        return
    end
end



function ck_MagicCommonFunction(blend_type, quick_type, is_throw)
	if ((c_Style == HAND_LEFT_BOTH and (env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT) ~= 293 and env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT) ~= 243 and env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT) ~= 245 and env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT) ~= 228 and env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT) ~= 765 and env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT) ~= 112 and env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT) ~= 239 and env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT) ~= 607)) or (c_Style == HAND_RIGHT_BOTH and (env(GetEquipWeaponSpecialCategoryNumber, HAND_RIGHT) ~= 293 and env(GetEquipWeaponSpecialCategoryNumber, HAND_RIGHT) ~= 243 and env(GetEquipWeaponSpecialCategoryNumber, HAND_RIGHT) ~= 245 and env(GetEquipWeaponSpecialCategoryNumber, HAND_RIGHT) ~= 228 and env(GetEquipWeaponSpecialCategoryNumber, HAND_RIGHT) ~= 765 and env(GetEquipWeaponSpecialCategoryNumber, HAND_RIGHT) ~= 112 and env(GetEquipWeaponSpecialCategoryNumber, HAND_RIGHT) ~= 239 and env(GetEquipWeaponSpecialCategoryNumber, HAND_RIGHT) ~= 607))) and env(ActionDuration, ACTION_ARM_ACTION) <= 0 then
        	act(SetIsPreciseShootingPossible)
	end
end

function ck_JumpCommonFunction(jump_type)
    act(AIJumpState)

    if GetVariable("JumpAttackForm") == 0 then
        act(NotifyAIOfBehaviourState, IDX_AINOTE_STATETYPE, IDX_AINOTE_STATETYPE_JUMP_NONATTACK)
    elseif env(GetSpEffectID, 102050) == TRUE then
        act(LockonFixedAngleCancel)
    end

    act(DisallowAdditiveTurning, TRUE)
    local height = env(GetFallHeight) / 100
    local equip_arm_no = 1

    if c_Style == HAND_LEFT_BOTH then
        equip_arm_no = 0
    end

    -- Jump
    if Act_Jump() == TRUE then
        return TRUE
    end
    -- Jump Fall
    if env(GetSpEffectID, 145) == FALSE and GetVariable("JumpAttack_Land") == 0 then
        hkbFireEvent("W_Jump_Loop")
        return TRUE
    end

    local arrowHand = HAND_RIGHT

    if c_Style == HAND_LEFT_BOTH then
        arrowHand = HAND_LEFT
    end

    local is_arrow = GetEquipType(arrowHand, WEAPON_CATEGORY_SMALL_ARROW, WEAPON_CATEGORY_ARROW,
        WEAPON_CATEGORY_LARGE_ARROW, WEAPON_CATEGORY_CROSSBOW, WEAPON_CATEGORY_BALLISTA)

    if GetVariable("JumpAttackForm") == 0 and is_arrow == TRUE then
        if env(ActionRequest, ACTION_ARM_R1) == TRUE then
            act(ChooseBowAndArrowSlot, 0)
            g_ArrowSlot = 0
        elseif env(ActionRequest, ACTION_ARM_R2) == TRUE then
            act(ChooseBowAndArrowSlot, 1)
            g_ArrowSlot = 1
        end
    end

    local is_staff = GetEquipType(equip_arm_no, WEAPON_CATEGORY_STAFF)
    local wep_hand = HAND_RIGHT

    if c_Style == HAND_LEFT_BOTH then
        wep_hand = HAND_LEFT
    end

    local isWeaponStaff = FALSE
    local sp_kind = env(GetEquipWeaponSpecialCategoryNumber, wep_hand)

    if IsWeaponCatalyst(sp_kind) == TRUE then
        isWeaponStaff = TRUE
    end

    -- Magic
    if ExecJumpMagic(jump_type) == TRUE then
        -- Catalyst: R1
    elseif is_staff == TRUE and (env(ActionRequest, ACTION_ARM_R1) == TRUE or env(ActionRequest, ACTION_ARM_R2) == TRUE or env(ActionRequest, ACTION_ARM_L2) == TRUE) then
        -- Weapon Catalyst: R2
    elseif isWeaponStaff == TRUE and env(ActionRequest, ACTION_ARM_R2) == TRUE then
        -- Bow
    elseif is_arrow == TRUE and (c_Style == HAND_RIGHT_BOTH or c_Style == HAND_LEFT_BOTH) and env(IsOutOfAmmo, arrowHand)
        == TRUE then
        -- Crossbow
    elseif GetEquipType(arrowHand, WEAPON_CATEGORY_CROSSBOW) == TRUE
        and (env(GetBoltLoadingState, arrowHand) == FALSE or env(IsOutOfAmmo, arrowHand) == TRUE) then
        -- Jump Attack
    elseif env(GetSpEffectID, 140) == TRUE and GetVariable("JumpAttackForm") == 0 then
        if env(ActionRequest, ACTION_ARM_R1) == TRUE or is_arrow == TRUE and env(ActionRequest, ACTION_ARM_R2) == TRUE then
            ExecEventSync("Event_JumpNormalAttack_Add")
            SetVariable("JumpAttackFormRequest", 0)
            SetVariable("JumpAttackForm", 1)
            SetInterruptType(INTERRUPT_FINDATTACK)
            act(SetNpcAIAttackRequestIDAfterBlend, env(GetNpcAIAttackRequestID))
            SetAIActionState()

            return TRUE
        elseif env(ActionRequest, ACTION_ARM_R2) == TRUE and is_staff == FALSE then
            ExecEventSync("Event_JumpNormalAttack_Add")
            SetVariable("JumpAttackFormRequest", 1)
            SetVariable("JumpAttackForm", 2)
            SetInterruptType(INTERRUPT_FINDATTACK)
            act(SetNpcAIAttackRequestIDAfterBlend, env(GetNpcAIAttackRequestID))
            SetAIActionState()

            return TRUE
        elseif env(ActionRequest, ACTION_ARM_L1) == TRUE and IsEnableDualWielding() == HAND_RIGHT then
            ExecEventSync("Event_JumpNormalAttack_Add")
            SetVariable("JumpAttackFormRequest", 2)
            SetVariable("JumpAttackForm", 3)
            SetInterruptType(INTERRUPT_FINDATTACK)
            act(SetNpcAIAttackRequestIDAfterBlend, env(GetNpcAIAttackRequestID))
            SetAIActionState()

            return TRUE
        end
        if env(GetSpEffectID, 98) == TRUE and env(IsTruelyLanding) == TRUE and env(GetSpEffectID, 140) == FALSE then
            if jump_type == 0 then
                SetVariable("JumpAttack_Land", 1)
                SetVariable("JumpMotion_Override", 0)
                if GetVariable("JumpMotion_Override") < 0.009999999776482582 then
                    SetVariable("JumpUseMotion_Bool", 1)
                end
            elseif jump_type >= 1 then
                ExecEventAllBody("W_Jump_Attack_Land_F")
            end

            return TRUE
        end
    elseif env(GetSpEffectID, 140) == FALSE and GetVariable("JumpAttack_Land") == 0 and GetVariable("JumpAttackForm")
        == 0 then
        SetVariable("JumpAttack_Land", 0)

        if env(ActionRequest, ACTION_ARM_R1) == TRUE or is_arrow == TRUE and env(ActionRequest, ACTION_ARM_R2) == TRUE then
            SetVariable("JumpAttackFormRequest", 0)
            SetInterruptType(INTERRUPT_FINDATTACK)
            act(SetNpcAIAttackRequestIDAfterBlend, env(GetNpcAIAttackRequestID))
            SetAIActionState()

            if jump_type == 0 then
                ExecEventNoReset("W_JumpAttack_Start_Falling")
            elseif jump_type == 1 then
                ExecEventNoReset("W_JumpAttack_Start_Falling_F")
            elseif jump_type == 2 then
                ExecEventNoReset("W_JumpAttack_Start_Falling_D")
            end

            return TRUE
        elseif env(ActionRequest, ACTION_ARM_R2) == TRUE and is_staff == FALSE then
            SetVariable("JumpAttackFormRequest", 1)
            SetInterruptType(INTERRUPT_FINDATTACK)
            act(SetNpcAIAttackRequestIDAfterBlend, env(GetNpcAIAttackRequestID))
            SetAIActionState()
            if jump_type == 0 then
                ExecEventNoReset("W_JumpAttack_Start_Falling")
            elseif jump_type == 1 then
                ExecEventNoReset("W_JumpAttack_Start_Falling_F")
            elseif jump_type == 2 then
                ExecEventNoReset("W_JumpAttack_Start_Falling_D")
            end

            return TRUE
        elseif env(ActionRequest, ACTION_ARM_L1) == TRUE and IsEnableDualWielding() == HAND_RIGHT then
            SetInterruptType(INTERRUPT_FINDATTACK)
            act(SetNpcAIAttackRequestIDAfterBlend, env(GetNpcAIAttackRequestID))
            SetAIActionState()
            SetVariable("JumpAttackFormRequest", 2)
            if jump_type == 0 then
                ExecEventNoReset("W_JumpAttack_Start_Falling")
            elseif jump_type == 1 then
                ExecEventNoReset("W_JumpAttack_Start_Falling_F")
            elseif jump_type == 2 then
                ExecEventNoReset("W_JumpAttack_Start_Falling_D")
            end

            return TRUE
        end
    end
    -- Landing
    if env(GetSpEffectID, 98) == TRUE and env(IsTruelyLanding) == TRUE and env(GetSpEffectID, 140) == FALSE
        and env(IsAIJumping) == FALSE then
        local landIndex = GetLandIndex(height, FALSE)
        SetVariable("LandIndex", landIndex)

        if GetVariable("JumpAttackForm") == 0 then
            local JumpMoveLevel = 0

            if GetVariable("MoveSpeedLevel") > 1.100000023841858 then
                JumpMoveLevel = 2
            elseif GetVariable("MoveSpeedLevel") > 0.6000000238418579 then
                JumpMoveLevel = 1
            end

            -- Ironjar Aromatic
            if TRUE == env(GetSpEffectID, 503520) then
                JumpMoveLevel = 0
                -- Unknown
            elseif TRUE == env(GetSpEffectID, 5520) then
                JumpMoveLevel = 0
                -- Slug: Slow
            elseif TRUE == env(GetSpEffectID, 425) then
                JumpMoveLevel = 0
                -- Sanguine Noble: Slow
            elseif TRUE == env(GetSpEffectID, 4101) then
                JumpMoveLevel = 0
                -- Sanguine Noble: Slow
            elseif TRUE == env(GetSpEffectID, 4100) then
                JumpMoveLevel = 0
            elseif env(GetSpEffectID, 19670) == TRUE then
                JumpMoveLevel = 0
            end

            if JumpMoveLevel == 2 then
                hkbFireEvent("W_Jump_Land_To_Dash")
            elseif JumpMoveLevel == 1 then
                SetVariable("JumpLandMoveDirection", GetVariable("MoveDirection"))
                hkbFireEvent("W_Jump_Land_To_Run")
            elseif jump_type == 0 then
                ExecEventNoReset("W_Jump_Land_N")
            elseif jump_type == 1 then
                ExecEventNoReset("W_Jump_Land_F")
            elseif jump_type == 2 then
                ExecEventNoReset("W_Jump_Land_D")
            end

            return TRUE
        else
            if jump_type == 0 then
                SetVariable("JumpAttack_Land", 1)
                SetVariable("JumpMotion_Override", 0)

                if GetVariable("JumpMotion_Override") < 0.009999999776482582 then
                    SetVariable("JumpUseMotion_Bool", 1)
                end
            elseif jump_type >= 1 then
                ExecEventAllBody("W_Jump_Attack_Land_F")
            end
            return TRUE
        end
        -- 146 "[HKS] Swing Window"
    elseif env(GetSpEffectID, 146) == TRUE and GetVariable("JumpAttackForm") ~= 0 then
        SetVariable("SwingPose", 4)

        if jump_type == 0 then
            ExecEventNoReset("W_Jump_Land_N")
        elseif jump_type == 1 then
            ExecEventNoReset("W_Jump_Land_F")
        elseif jump_type == 2 then
            ExecEventNoReset("W_Jump_Land_D")
        end

        return TRUE
    elseif env(GetEventEzStateFlag, 0) == TRUE and GetVariable("JumpAttackForm") ~= 0 and ExecArrowBothJumpLandAttack()
        == TRUE then
        return TRUE
    end
    return FALSE
end



function ck_ExecRideMagic()
    if env(IsMagicUseMenuOpened) ~= TRUE and iscycle ~= 2 then
	Magickeys()
    end

    if ExecMagic(QUICKTYPE_NORMAL, ALLBODY, TRUE) == TRUE then
        return TRUE
    else
        return FALSE
    end
end

function ck_SetEnableAimMode()
    if env(ActionDuration, ACTION_ARM_ACTION) > 0 then
        return
    end

    local style = c_Style
    local isRide = env(IsOnMount)

    if isRide == TRUE then
        if style == HAND_LEFT_BOTH then
            if GetEquipType(HAND_LEFT, WEAPON_CATEGORY_SMALL_ARROW, WEAPON_CATEGORY_ARROW, WEAPON_CATEGORY_CROSSBOW)
                == TRUE then
                act(SetIsPreciseShootingPossible)
            end
        elseif GetEquipType(HAND_RIGHT, WEAPON_CATEGORY_SMALL_ARROW, WEAPON_CATEGORY_ARROW, WEAPON_CATEGORY_CROSSBOW)
            == TRUE then
            act(SetIsPreciseShootingPossible)
        end
    elseif style == HAND_LEFT_BOTH then
        if GetEquipType(HAND_LEFT, WEAPON_CATEGORY_SMALL_ARROW, WEAPON_CATEGORY_ARROW, WEAPON_CATEGORY_LARGE_ARROW,
            WEAPON_CATEGORY_CROSSBOW, WEAPON_CATEGORY_BALLISTA, WEAPON_CATEGORY_STAFF, 240) == TRUE then
            act(SetIsPreciseShootingPossible)
        end
    elseif style == HAND_RIGHT_BOTH
        and GetEquipType(HAND_RIGHT, WEAPON_CATEGORY_SMALL_ARROW, WEAPON_CATEGORY_ARROW, WEAPON_CATEGORY_LARGE_ARROW,
            WEAPON_CATEGORY_CROSSBOW, WEAPON_CATEGORY_BALLISTA, WEAPON_CATEGORY_STAFF, 240) == TRUE then
        act(SetIsPreciseShootingPossible)
    end
end

function ck_ExecAttack(r1, r2, l1, l2, b1, b2, is_guard, blend_type, artsr1, artsr2, is_stealth_rolling)
    local sp_kind_R = env(GetEquipWeaponSpecialCategoryNumber, HAND_RIGHT)
    local sp_kind_L = env(GetEquipWeaponSpecialCategoryNumber, HAND_LEFT)

	if GetEquipType(HAND_LEFT, WEAPON_CATEGORY_STAFF) == TRUE and env(ActionDuration, ACTION_ARM_L1) > 0 and c_Style ~= HAND_RIGHT_BOTH and c_Style ~= HAND_LEFT_BOTH then
		ResetRequest()
		return FALSE
	elseif GetEquipType(HAND_LEFT, WEAPON_CATEGORY_STAFF) == TRUE and c_Style == HAND_LEFT_BOTH then
		ResetRequest()
		return FALSE
	elseif GetEquipType(HAND_RIGHT, WEAPON_CATEGORY_STAFF) == TRUE and c_Style == HAND_RIGHT_BOTH then
		ResetRequest()
		return FALSE
	end
            if env(ActionDuration, ACTION_ARM_L2) > 0 and IsWeaponCatalyst(sp_kind_L) == TRUE and c_Style ~= HAND_RIGHT_BOTH and c_Style ~= HAND_LEFT_BOTH then
			ResetRequest()
			return FALSE
            elseif env(ActionDuration, ACTION_ARM_R2) > 0 and IsWeaponCatalyst(sp_kind_L) == TRUE and c_Style == HAND_LEFT_BOTH then
			ResetRequest()
			return FALSE
            elseif env(ActionDuration, ACTION_ARM_R2) > 0 and IsWeaponCatalyst(sp_kind_R) == TRUE and c_Style ~= HAND_LEFT_BOTH then
			ResetRequest()
			return FALSE
            end
end


bak_IsEnableGuard = IsEnableGuard
bak_GetAttackRequest = GetAttackRequest
bak_ExecMagic = ExecMagic
bak_ExecRideMagic = ExecRideMagic
bak_ExecAttack = ExecAttack
bak_ExecFallAttack = ExecFallAttack
bak_MagicLoopRight_Upper_onUpdate = MagicLoopRight_Upper_onUpdate
bak_MagicFireRight_Upper_onUpdate = MagicFireRight_Upper_onUpdate
bak_MagicLoopLeft_Upper_onUpdate = MagicLoopLeft_Upper_onUpdate
bak_MagicFireRight2_Upper_onUpdate = MagicFireRight2_Upper_onUpdate
bak_MagicFireRight3_Upper_onUpdate = MagicFireRight3_Upper_onUpdate
bak_MagicFireLeft_Upper_onUpdate = MagicFireLeft_Upper_onUpdate
bak_MagicFireLeft2_Upper_onUpdate = MagicFireLeft2_Upper_onUpdate
bak_MagicFireLeft3_Upper_onUpdate = MagicFireLeft3_Upper_onUpdate
bak_SetEnableAimMode = SetEnableAimMode

Update = Include(Update, ck_Update)