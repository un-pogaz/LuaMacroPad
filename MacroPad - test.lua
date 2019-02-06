
-- This scrip is only for test your device and get the key value, don't edit.



local macros = {
	-- kept empty
	-- We said : DON'T EDIT
};

-- Code inspired by PotentiumRLX, edited by un_pogaz
--[[ PotentiumRLX text
	
	Created for use with LuaMacros (this was NOT created for AutoHotKey integration), download LuaMacros at this link:
		https://github.com/me2d13/luamacros
	
	Please watch the tutorial if you need to:
		https://youtu.be/LsHhLZXrQsI
	
	Features:
	
		- Access to simple commands as well as being fully-customizable and open source.
		- Fixes the issue of executing a command multiple times by holding the button while still running scripts on KeyDown.
		- Support for multi-key combinations.
		- If you don't know the keycode of a button you're pressing, it will be printed in the output.
	
	This project was inspired by the King of Macros (Taran Van Hemert) after I watched his LTT video on LuaMacros:
		https://youtu.be/Arn8ExQ2Gjg
	And then, I watched the follow-ups on his personal channel:
		https://youtu.be/y3e_ri-vOIo
		https://youtu.be/Hn18vv--sFY
	In the follow-up videos, he states that he had been encountering issues with LuaMacros as well as the platform he switched to.
	I have been learning Lua since the summer of 2016, so I figured that I could find out what the issues were. A couple of hours later,
	I've prepared an in-depth template for anybody to use, complete with user-friendly scripts for the most commonly-used functions.
	
	It is suggested that you do not edit past this line without intensive knowledge of Lua.
	
--]]

clear();
lmc_assign_keyboard("MacroPad");

local devices = {};
local current_device = {};
local deviceID = "";

devices = lmc_get_devices();
for key, d in pairs(devices) do
	for d_key, d_value in pairs(d) do
		if (d_key == "Name" and d_value == "MacroPad" ) then current_device = d; end;
	end;
end;

for key, value in pairs(current_device) do
	if (key == "SystemId") then device = value; end;
end;

-- print("SystemId: ".. device);

local num1 = string.find(device, "#");
local num2 = string.find(device, "&");
if (num1 == nil) then num1 = 0 end;
if (num2 == nil) then num2 = 0 end;

if (num1 > num2) then device = string.sub(device, num2 + 1);
elseif (num1 < num2) then device = string.sub(device, num1 + 1);
end;

num1 = string.find(device, "#");
num2 = string.find(device, "&");
if (num1 == nil) then num1 = 0 end;
if (num2 == nil) then num2 = 0 end;

if (num1 > num2) then device = string.sub(device, 0, num2 - 1);
elseif (num1 < num2) then device = string.sub(device, 0, num1 - 1);
end;

print("");
print("ID of the device: ".. device);
print("");
print("To get a key value, press the key you want on the keyboard and its value will be displayed here.");
print("Some keyboard keys can generate 2 “Key pressed” output, in this case, take the lowest value.");
print("If you are not sure, assign the corresponding key combination in the Macro list.");
print("The letter displayed does not match on the key? It was normal... and complicated -_-\"");
print("");


-- PotentiumRLX code

local functions = {};
local pressed = {};
for keys, funct in pairs(macros) do
	keys = keys:gsub("%s", "");
	local triggers = {};
	while keys:find(",") do
		table.insert(triggers, keys:sub(1, keys:find(",") - 1));
		keys = keys:sub(keys:find(",") + 1);
	end;
	if functions["ID:" .. keys] then
		table.insert(functions["ID:" .. keys], {a = triggers, b = funct});
	else
		functions["ID:" .. keys] = {{a = triggers, b = funct}};
	end;
end;

lmc_set_handler("MacroPad", function(pressByte, pressDirection)
	if pressDirection == 0 then
		if pressed["ID:" .. tostring(pressByte)] then
			pressed["ID:" .. tostring(pressByte)] = false;
		end;
	else
		if not pressed["ID:" .. tostring(pressByte)] then
			pressed["ID:" .. tostring(pressByte)] = true;
			print("Key pressed:   " .. tostring(pressByte) .. "   ‘" .. string.char(pressByte) .. "’"); -- Feedback for pressed key
			if functions["ID:" .. tostring(pressByte)] then
				for _, v in pairs(functions["ID:" .. tostring(pressByte)]) do
					local f = true;
					for _, trigger in pairs(v.a) do
						if not pressed["ID:" .. trigger] then
							f = false;
						end;
					end;
					if f then
						v.b();
					end;
				end;
			end;
		end;
	end;
end);