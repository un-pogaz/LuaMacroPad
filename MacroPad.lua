
-- Defined here the ID of the device used
local deviceID = "VID_145F";

-- Defined here your Macros, used the values obtained with “MacroPad - test”
-- To define a key combination, write the values in order of execution and separated by commas

local macros = {
	
	["96"] = function() -- 0
		mp_input_keys("^%{TAB}", 2);
		mp_sleep_input(1);
		mp_input_keys("{ENTER}", 1);
	end;
	
	["110"] = function() -- .
		mp_input_keys("{END}{ENTER}", 2);
		mp_write_text("<p></p>");
		mp_input_keys("{LEFT 4}", 4);
	end;
	
	["32"] = function() -- SPACE
		mp_input_keys("^c",1);
		mp_input_keys("^%{TAB}", 2);
		mp_sleep_input(3);
		mp_input_keys("{ENTER}", 1);
	end;
	
	["97"] = function() -- 1
		mp_write_text(" style=\"\" ");
		mp_input_keys("{LEFT 2}", 2);
	end;
	
	["98"] = function() -- 2
		mp_write_text(" class=\"\" ");
		mp_input_keys("{LEFT 2}", 2);
	end;
	
	["99"] = function() -- 3
		mp_input_keys("{END}{ENTER}", 2);
		mp_write_text("<p>");
		mp_input_keys("^v",1);
		mp_write_text("</p>");
		mp_input_keys("{LEFT 4}", 4);
	end;
	
	["100"] = function() -- 4
		mp_input_keys("^r",1);
		mp_input_keys("{END}", 2);
		mp_input_keys("^+{LEFT}", 2);
		mp_input_keys("^v",1);
		mp_input_keys("{ENTER}", 1);
	end;
	
	["101"] = function() -- 5
		mp_write_text("<span class=\"\"></span>");
		mp_input_keys("{LEFT 9}", 9);
	end;
	
	["102"] = function() -- 6
		mp_write_text("&#160");
	end;
	
	["103"] = function() -- 7
		mp_input_keys("{END}{ENTER}", 2);
		mp_write_text("<ol></ol>");
		mp_input_keys("{LEFT 5}{ENTER 2}{UP}{END}", 9);
		mp_write_text("<li></li>");
		mp_input_keys("{LEFT 5}", 5);
	end;
	
	["104"] = function() -- 8
		mp_input_keys("{END}{ENTER}", 2);
		mp_write_text("<li></li>");
		mp_input_keys("{LEFT 5}", 5);
	end;
	
	["105"] = function() -- 9
		mp_input_keys("{END}{ENTER}", 2);
		mp_write_text("<ul></ul>");
		mp_input_keys("{LEFT 5}{ENTER 2}{UP}{END}", 9);
		mp_write_text("<li></li>");
		mp_input_keys("{LEFT 5}", 5);
	end;
	
	["13"] = function() -- ENTER
		mp_input_keys("^v",1);
	end;
	
	["107"] = function() -- +
		mp_input_keys("^c",1);
	end;
	
	["109"] = function() -- -
		mp_input_keys("^x",1);
	end;
	
	["8"] = function() -- DEL
		mp_input_keys("^s",1);
	end;
	
	["111"] = function() -- /
		mp_input_keys("^x",1);
		mp_input_keys("{DEL 3}",3);
		mp_input_keys("{TAB 2}",2);
		mp_input_keys("^v",1);
		mp_input_keys("+{TAB}",2);
		mp_input_keys("+{TAB}",2);
		mp_input_keys("{ENTER}",1);
	end;
	
	["106"] = function() -- *
		print("*");
	end;
	
	["9"] = function() -- TAB
		mp_input_keys("{END}{ENTER}", 2);
		mp_write_text("<table class=\"tcenter\">")
		mp_input_keys("{ENTER}", 1);
		mp_write_text("<tbody>");
		mp_input_keys("{ENTER}", 1);
		mp_write_text("<tr>");
		mp_input_keys("{ENTER}", 1);
		mp_write_text("  <td>1</td>")
		mp_input_keys("{ENTER}", 1);
		mp_write_text("  <td>2</td>")
		mp_input_keys("{ENTER}", 1);
		mp_write_text("</tr>");
		mp_input_keys("{ENTER}", 1);
		mp_write_text("<tr>");
		mp_input_keys("{ENTER}", 1);
		mp_write_text("  <td>3</td>")
		mp_input_keys("{ENTER}", 1);
		mp_write_text("  <td>4</td>")
		mp_input_keys("{ENTER}", 1);
		mp_write_text("</tr>");
		mp_input_keys("{ENTER}", 1);
		mp_write_text("</tbody>");
		mp_input_keys("{ENTER}", 1);
		mp_write_text("</table>");
	end;
	
};

--[[ function intern  mp_

mp_write_text(text)
Writes a text

mp_unicode_write(codepoint)
Write a Unicode character from a decimal Point Code

mp_input_keys(keys, n_input)
Send a serie of inputs whit the LuaMacro vocabulary
Specified the number of inputs to avoid unwanted results

mp_input_send(input)
Press and release a key based its input value

mp_input_press(input)
Press a key based its input value

mp_input_release(input)
Release a key based its input value

mp_sleep_time(ms_time)
Sleep and wait for a specifique time (in ms)


-- Other function

print("")
Write a message in the LuaMacro logs

lmc_spawn(exe)
lmc_spawn(exe, arg)
Lauch a executable

]]

--[[ WIKI LuaMacro Vocabulary

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
	In the follow-up videos, he states that he had been encountering issues with LuaMacros as well as the platform he switched to. I
	have been learning Lua since the summer of 2016, so I figured that I could find out what the issues were. A couple of hours later,
	I've prepared an in-depth template for anybody to use, complete with user-friendly scripts for the most commonly-used functions.
	
	It is suggested that you do not edit past this line without intensive knowledge of Lua.
	
]]

-- Code start

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

function mp_sleep_time(ms_time)
	ms_time = tonumber(ms_time);
	if (ms_time == nil or ms_time < 0) then ms_time = 0 end;
	lmc_sleep(math.floor(ms_time));
end;

function mp_input_send(input)
	if (input == nil) then input = "" end;
	input = tonumber(input);
	if (input == nil or input < 0) then return end;
	mp_input_press(input);
	mp_input_release(input);
end;
function mp_input_press(input)
	if (input == nil) then input = "" end;
	input = tonumber(input);
	if (input == nil or input < 0) then return end;
	lmc_send_input(input, 0, 0);
end;
function mp_input_release(input)
	if (input == nil) then input = "" end;
	input = tonumber(input);
	if (input == nil or input < 0) then return end;
	lmc_send_input(input, 0, 2);
end;

-- Not perfect. Change ?
function mp_input_keys(keys, n_input)
	if (keys == nil) then keys = "" end;
	if (n_input == nil) then n_input = 0 end;
	keys = tostring(keys);
	n_input = tonumber(n_input);
	if (n_input == nil or n_input <= 0) then return end;
	local t_input = 10;
	lmc_send_keys(keys, t_input);
	mp_sleep_time((n_input + 1) * t_input);
end;

function mp_write_text(text)
	if (text == nil) then text = "" end;
	local tbl = utf8_explode(tostring(text));
	if (tbl.len > 0) then
		for i, c in pairs(tbl.codepoints) do
			mp_unicode_write(c);
		end;
	end;
end;

function mp_unicode_write(codepoint)
	if (codepoint == nil) then codepoint = "" end;
	codepoint = tonumber(codepoint);
	if (codepoint == nil or codepoint < 0 or codepoint >= 0xd800 and codepoint <= 0xdfff or codepoint >= 0x10ffff) then return end;
	
	if (codepoint < 0x10000) then
		lmc_send_input(0, codepoint, 4); -- press
		lmc_send_input(0, codepoint, 6); -- release
	else
		-- https://fr.wikipedia.org/wiki/UTF-16#Description
		local utf32 = toBits(codepoint, 32)
		print(utf32)
		print("")
		local w = toBits(tonumber(string.sub(utf32, 1, 16), 2) - 1, 4);
		local x = string.sub(utf32, 17, 22);
		local y = string.sub(utf32, 23, 32);
		
		print("110110" .. w .. x)
		print("110111" .. y)
		
		lmc_send_input(0, tonumber("110110" .. w .. x, 2), 4)
		lmc_send_input(0, tonumber("110111" .. y, 2), 4)
		lmc_send_input(0, tonumber("110110" .. w .. x, 2), 6)
		lmc_send_input(0, tonumber("110111" .. y, 2), 6)
	end;
end;

--[[ Code found on the internet 
https://stackoverflow.com/questions/9079853/lua-print-integer-as-a-binary ]]
function toBits(num, bits)
	-- returns a table of bits, most significant first.
	bits = bits or math.max(1, select(2, math.frexp(num)))
	local t = {} -- will contain the bits
	for b = bits, 1, -1 do
		t[b] = math.fmod(num, 2)
		num = math.floor((num - t[b]) / 2)
	end
	return table.concat(t)
end

--[[ utf8_explode / extract from ustring.lua
 https://github.com/wikimedia/mediawiki-extensions-Scribunto/blob/master/includes/engines/LuaCommon/lualib/ustring/ustring.lua

 A private helper that splits a string into codepoints, and also collects the
 starting position of each character and the total length in codepoints.

 @param s string utf8-encoded to decode
 @return table { .len, .codepoints, .bytepos}
]]
function utf8_explode( s )
	local rslt = {
		len = 0,
		codepoints = {},
		bytepos = {},
	};

	local i = 1;
	local l = string.len( s );
	local cp, b, b2, trail;
	local min;
	while i <= l do
	b = string.byte( s, i );
	if b < 0x80 then
		-- 1-byte code point, 00-7F
		cp = b;
		trail = 0;
		min = 0;
	elseif b < 0xc2 then
		-- Either a non-initial code point (invalid here) or
		-- an overlong encoding for a 1-byte code point
		return nil;
	elseif b < 0xe0 then
		-- 2-byte code point, C2-DF
		trail = 1;
		cp = b - 0xc0;
		min = 0x80;
	elseif b < 0xf0 then
		-- 3-byte code point, E0-EF
		trail = 2;
		cp = b - 0xe0;
		min = 0x800;
	elseif b < 0xf4 then
		-- 4-byte code point, F0-F3
		trail = 3;
		cp = b - 0xf0;
		min = 0x10000;
	elseif b == 0xf4 then
		-- 4-byte code point, F4
		-- Make sure it doesn't decode to over U+10FFFF
		if string.byte( s, i + 1 ) > 0x8f then
		return nil;
		end
		trail = 3;
		cp = 4;
		min = 0x100000;
	else
		-- Code point over U+10FFFF, or invalid byte
		return nil;
	end
	
	-- Check subsequent bytes for multibyte code points
	for j = i + 1, i + trail do
		b = string.byte( s, j );
		if not b or b < 0x80 or b > 0xbf then
		return nil;
		end;
		cp = cp * 0x40 + b - 0x80;
	end;
	if cp < min then
		-- Overlong encoding
		return nil;
	end;
	
	rslt.codepoints[#rslt.codepoints + 1] = cp;
	rslt.bytepos[#rslt.bytepos + 1] = i;
	rslt.len = rslt.len + 1;
	i = i + 1 + trail;
	end;
	
	-- Two past the end (for sub with empty string)
	rslt.bytepos[#rslt.bytepos + 1] = l + 1;
	rslt.bytepos[#rslt.bytepos + 1] = l + 1;
	
	return rslt;
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
			-- Feedback the pressed key
			-- print("You pressed: " .. tostring(pressByte) .. ".");
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
