
-- This script is only for test your device and get the key value, don't edit.

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

local num3 = string.find(device, "{");
if (num3 == nil) then num1 = 0 end;
	if (num3 > 0 and (num3 < num1 or num3 < num2)) then
	local num1 = string.find(device, "#");
	local num2 = string.find(device, "&");
	if (num1 == nil) then num1 = 0 end;
	if (num2 == nil) then num2 = 0 end;
	
	if (num1 > num2) then device = string.sub(device, num2 + 1);
	elseif (num1 < num2) then device = string.sub(device, num1 + 1);
	end;
end;

num1 = string.find(device, "#");
num2 = string.find(device, "&");
if (num1 == nil) then num1 = 0 end;
if (num2 == nil) then num2 = 0 end;

if (num1 > num2) then device = string.sub(device, 0, num2 - 1);
elseif (num1 < num2) then device = string.sub(device, 0, num1 - 1);
end;

print("");
print("ID of the device: " .. device);
print("");
print("To get a key value, press the key you want on the keyboard and its value will be displayed here.");
print("Some keyboard keys can generate 2 “Key pressed” output, in this case, take the lowest value.");
print("If you are not sure, assign the corresponding key combination in the Macro list.");
print("The letter displayed does not match on the key? It was normal... and complicated -_-\"");
print("");

lmc_set_handler("MacroPad", function(pressByte, pressDirection)
  if pressDirection == 0 then
    return;
  else
    -- Feedback the pressed key
    print("Key pressed:   " .. tostring(pressByte) .. "   ‘" .. string.char(pressByte) .. "’");
  end;
end);