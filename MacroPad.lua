
-- Defined here the ID of the device used
local deviceID = "PNP0303";

-- Defined here your Macros, used the values obtained with “MacroPad - test”
-- To define a key combination, write the values in order of execution and separated by commas

-- lmc_spawn() print("") lmc_sleep(ms)
-- mp_keys_input(keys_send, input) mp_keys_text(text) mp_write_altcode(altcode)
																				-- mp_keys(keys_send) mp_sleep_input(n_input) mp_sleep_text(text)
local macros = {
	
	["96"] = function()
		print("NumPad 0");
	end;
	
	["97"] = function()
		print("NumPad 1");
	end;
	
	["98"] = function()
		print("NumPad 2");
	end;
	
	["99"] = function()
		print("NumPad 3");
	end;
	
	["100"] = function()
		print("NumPad 4");
	end;
	
	["101"] = function()
		print("NumPad 5");
	end;
	
	["102"] = function()
		print("NumPad 6");
	end;
	
	["103"] = function()
		print("NumPad 7");
	end;
	
	["104"] = function()
		print("NumPad 8");
	end;
	
	["105"] = function()
		print("NumPad 9");
	end;
	
	["110"] = function()
		print(".");
	end;
	
	["32"] = function()
		print("Space");
	end;
	
	["13"] = function()
		print("Enter");
	end;
	
	["107"] = function()
		print("+");
	end;
	
	["109"] = function()
		print("-");
	end;
	
	["114"] = function()
		print("NumLock");
	end;
	
	["111"] = function()
		print("/");
	end;
	
	["106"] = function()
		print("*");
	end;
	
	["8"] = function()
		print("Del");
	end;
	
	
	["36"] = function()
		print("Home");
	end;
	
	["9"] = function()
		print("Tab");
	end;
	
	["33"] = function()
		print("Page Up");
	end;
	
	["34"] = function()
		print("Page Down");
	end;
	
};

-- Advanced

-- Time delay for executing keys actions, in ms. A too fast execution does cause a unexpected behaviour.
local t_input = 10;

--[[ how to use

]]

--[[ WIKI

Modifiers (shifts) for keystroke sequence
Use these keys to modify keystrokes. Foe example +a sends shift+a (in other words, A), ^c sends ctrl+c.
Use parenthesis to modify several keystrokes at once; +(abc) sends shift+a, shift+b, shift+c (ABC).

	^ = Control
	% = Alt
	+ = Shift
	# = Win
	& = Tab


Left or Right modifiers for keystroke sequence
Keyboards usually have two copies of modifier keys, one on the left and one on the right. Use these when it matters which key is used.

< = Left modifier key
	^< = Left Control
	%< = Left Alt
	+< = Left Shift
	#< = Left Win
> = Right modifier key (Note: this does not work until Issue #7 is fixed)
	^> = Right Control
	%> = Right Alt
	+> = Right Shift
	#> = Right Win


Special characters
	~ = Enter Key
	( = Begin modifier group (see below)
	) = End modifier group (see below)
	{ = Begin key name text (see below)
	} = End key name text (see below)


Modifier Grouping
Surround characters or key names with parentheses in order to modify them as a group.
For example, +abc shifts only a, while +(abc) shifts all three characters.


Key Names
Refer to these keys by surrounding them with curly braces. For example, {F3} sends the F3 key.

  BKSP, BS, BACKSPACE
  BREAK
  CAPSLOCK
  CLEAR
  DEL
  DELETE
  DOWN
  END
  ENTER
  ESC
  ESCAPE
  F1, F2, F3, F4, F5, F6, F7, F8, F9, F10, F11, F12, F13, F14, F15, F16, F17, F18, F19, F20, F21, F22, F23, F24
  HELP
  HOME
  INS
  LEFT
  NUM0, NUM1, NUM2, NUM3, NUM4, NUM5, NUM6, NUM7, NUM8, NUM9
  NUMDECIMAL
  NUMDIVIDE
  NUMLOCK
  NUMMINUS
  NUMMULTIPLY
  NUMPLUS
  PGDN
  PGUP
  PRTSC
  RIGHT
  SCROLLLOCK
  TAB
  UP

Repeating keys
Follow the keyname with a space and a number to send the specified key a given number of times
e.g. {left 6} will send left six times


Delay function
lmc_sleep(1500)
The argument of lmc_sleep is delay in miliseconds

]]

--[[ function intern  mp_

mp_keys_input(keys_send, input)
Sends the specify keys, uses the syntax of lmc_send_keys().
Entered in the second argument the number of steps executed.

mp_keys_text(text)
Write a ASCII text and wait for the number of characters in the string.


mp_keys(keys_send)
Uses the syntax of lmc_send_keys(), but allows a delay between the execution of each key "t_input".

mp_sleep_input(n_input)
Wait and stop the execution of the code for the number of steps entered as argument.

mp_sleep_text(text)
Wait and stop the execution of the code for the lenght of the string entered as argument.

mp_write_altcode(altcode)
Write the character associated with the "Alt Code"

]]

-- Code inspired by PotentiumRLX, edited by un_pogaz
--[[ PotentiumRLX credit
	
	Created for use with LuaMacros (this was NOT created for AutoHotKey integration), download LuaMacros at this link:
		https://github.com/me2d13/luamacros
	
	Please watch the tutorial if you need to:
		https://youtu.be/LsHhLZXrQsI
	
	Features:
	
		- Access to simple commands as well as being fully-customizable and open source.
		- Fixes the issue of executing a command multiple times by holding the button while still running scripts on KeyDown.
		- Support for multi-key combinations.
		- If you don't know the keycode of a button you're pressing, it will be printed in the output (disable by defaut).
	
	This project was inspired by the King of Macros (Taran Van Hemert) after I watched his LTT video on LuaMacros:
		https://youtu.be/Arn8ExQ2Gjg
	And then, I watched the follow-ups on his personal channel:
		https://youtu.be/y3e_ri-vOIo
		https://youtu.be/Hn18vv--sFY
	In the follow-up videos, he states that he had been encountering issues with LuaMacros as well as the platform he switched to.  I
	have been learning Lua since the summer of 2016, so I figured that I could find out what the issues were.  A couple of hours later,
	I've prepared an in-depth template for anybody to use, complete with user-friendly scripts for the most commonly-used functions.
	
	It is suggested that you do not edit past this line without intensive knowledge of Lua.
	
]]

--[[

]]

lmc.minimizeToTray = true;
lmc_minimize();

clear();

print("MacroPad script for LuaMacro lauched");
print("");
print("LuaMacro by Petr Medek “me2d13”");
print("\thttp://www.hidmacros.eu/forum/viewforum.php?f=9");
print("");
print("Original code by PotentiumRLX");
print("\thttps://github.com/PotentiumRLX/LuaMacrosExtension");
print("");
print("Actual script by un-pogaz");
print("\thttps://github.com/un-pogaz/LuaMacroPad");
print("");


lmc_device_set_name("MacroPad", deviceID);

function mp_keys(keys_send)
	lmc_send_keys(keys_send, t_input);
	mp_sleep_input(2);
end;

function mp_sleep_input(n_input)
	lmc_sleep(n_input * t_input);
end;

function mp_sleep_text(text)
	n_input = string.len(text);
	if (n_input == nil or n_input < 0) then n_input = 0 end;
	mp_sleep_input(n_input);
end;

function mp_keys_input(keys_send, input)
	mp_keys(keys_send);
	mp_sleep_input(input);
end;

function mp_keys_text(text)
	mp_keys(text);
	mp_sleep_text(text);
end;

function mp_write_altcode(altcode)
	lmc_send_input(18, 0, 0);
	mp_keys_text(tostring(altcode));
	lmc_send_input(18, 0, 2);
	mp_sleep_input(1);
end;

function mp_send_input(input)
	lmc_send_input(input, 0, 0); -- press
	lmc_send_input(input, 0, 2); -- release
	mp_sleep_input(1);
end;

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
			-- print("You pressed: " .. tostring(pressByte) .. "."); -- Feedback the pressed key
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