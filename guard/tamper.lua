-- WORK IN PROGRESS

local _guard = (function()	
local type = type
	local pcall = pcall
	local xpcall = xpcall
	local error = error
	local rawget = rawget
	local rawset = rawset
	local getmetatable = getmetatable
	local setmetatable = setmetatable
	local tostring = tostring
	local tonumber = tonumber
	local gmatch = string and string.gmatch
	local unpack = unpack or (table and table.unpack)
	local print = print
	local warn = _G and _G.warn
	local newproxy = newproxy
	local debugInfo = debug and debug.info
	local failed = false

        local function fail()
           if type(error) == "function" then
              error("ERR", 0)
           end

           return (nil)[1]
        end


        if
          type(type) ~= "function"
          or type(pcall) ~= "function"
          or type(xpcall) ~= "function"
          or type(error) ~= "function"
	  or type(rawget) ~= "function"
          or type(rawset) ~= "function"
          or type(getmetatable) ~= "function"
          or type(setmetatable) ~= "function"
        then
            fail()
         end   

         local environment

         if type(getfenv) == "function" then
            local ok, value = pcall(getfenv)

            if ok then
               environment = value
            end
         end

         if environment == nil then
            environment = _G
         end
end)()
