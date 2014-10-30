local io = io
local math = math
local tonumber = tonumber
local string = string

function batteryInfo()
    local f_now  = io.popen("cat /sys/class/power_supply/BAT0/energy_now")
    local f_full = io.popen("cat /sys/class/power_supply/BAT0/energy_full")
    local c_now_str  = f_now:read()
    local c_full_str = f_full:read()
    local c_now  = tonumber(c_now_str)
    local c_full = tonumber(c_full_str)

    if c_now ~= nil and c_full ~= nil then
        local percent = math.floor((c_now/c_full) * 100)
        return percent
    else
        return nil
    end
end
