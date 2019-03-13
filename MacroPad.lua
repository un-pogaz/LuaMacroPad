
-- Defined here the ID of the device used
local deviceID = "VID_145F";

-- Defined here your Macros, used the values obtained with “MacroPad - test”
-- To define a key combination, write the values in order of execution and separated by commas

-- lmc_spawn() print("") lmc_sleep(ms)
-- mp_keys_input(keys_send, input)
-- mp_keys_text(text)
-- mp_write_altcode(altcode)
-- mp_write_unicode(unicode)
								-- mp_keys(keys_send) mp_sleep_input(n_input) mp_sleep_text(text)
local macros = {
	
	["96"] = function() -- 0
		mp_keys_input("^%{TAB}", 2);
		mp_sleep_input(1);
		mp_keys_input("{ENTER}", 1);
	end;
	
	["110"] = function() -- .
		mp_keys_input("{END}{ENTER}", 2);
		mp_keys_text("<p></p>");
		mp_keys_input("{LEFT 4}", 4);
	end;
	
	["32"] = function() -- SPACE
		mp_keys_input("^c",1);
		mp_keys_input("^%{TAB}", 2);
		mp_sleep_input(3);
		mp_keys_input("{ENTER}", 1);
	end;
	
	["97"] = function() -- 1
		mp_keys_text(" style=\"\" ");
		mp_keys_input("{LEFT 2}", 2);
	end;
	
	["98"] = function() -- 2
		mp_keys_text(" class=\"\" ");
		mp_keys_input("{LEFT 2}", 2);
	end;
	
	["99"] = function() -- 3
		mp_keys_input("{END}{ENTER}", 2);
		mp_keys_text("<p>");
		mp_keys_input("^v",1);
		mp_keys_text("</p>");
		mp_keys_input("{LEFT 4}", 4);
	end;
	
	["100"] = function() -- 4
		mp_keys_input("^r",1);
		mp_keys_input("{END}", 2);
		mp_keys_input("^+{LEFT}", 2);
		mp_keys_input("^v",1);
		mp_keys_input("{ENTER}", 1);
	end;
	
	["101"] = function() -- 5
		mp_keys_text("<span class=\"\"></span>");
		mp_keys_input("{LEFT 9}", 9);
	end;
	
	["102"] = function() -- 6
		mp_write_unicode(38);
		mp_write_unicode(35);
		mp_keys_text("160;");
	end;
	
	["103"] = function() -- 7
		mp_keys_input("{END}{ENTER}", 2);
		mp_keys_text("<ol></ol>");
		mp_keys_input("{LEFT 5}{ENTER 2}{UP}{END}", 9);
		mp_keys_text("<li></li>");
		mp_keys_input("{LEFT 5}", 5);
	end;
	
	["104"] = function() -- 8
		mp_keys_input("{END}{ENTER}", 2);
		mp_keys_text("<li></li>");
		mp_keys_input("{LEFT 5}", 5);
	end;
	
	["105"] = function() -- 9
		mp_keys_input("{END}{ENTER}", 2);
		mp_keys_text("<ul></ul>");
		mp_keys_input("{LEFT 5}{ENTER 2}{UP}{END}", 9);
		mp_keys_text("<li></li>");
		mp_keys_input("{LEFT 5}", 5);
	end;
	
	["13"] = function() -- ENTER
		mp_keys_input("^v",1);
	end;
	
	["107"] = function() -- +
		mp_keys_input("^c",1);
	end;
	
	["109"] = function() -- -
		mp_keys_input("^x",1);
	end;
	
	["8"] = function() -- DEL
		mp_keys_input("^s",1);
	end;
	
	["111"] = function() -- /
		mp_keys_input("^x",1);
		mp_keys_input("{DEL 3}",3);
		mp_keys_input("{TAB 2}",2);
		mp_keys_input("^v",1);
		mp_keys_input("+{TAB}",2);
		mp_keys_input("+{TAB}",2);
		mp_keys_input("{ENTER}",1);
	end;
	
	["106"] = function() -- *
		print("*");
	end;
	
	["9"] = function() -- TAB
		mp_keys_input("{END}{ENTER}", 2);
		mp_keys_text("<table class=\"tcenter\">")
		mp_keys_input("{ENTER}", 1);
		mp_keys_text("<tbody>");
		mp_keys_input("{ENTER}", 1);
		mp_keys_text("<tr>");
		mp_keys_input("{ENTER}", 1);
		mp_keys_text("  <td>1</td>")
		mp_keys_input("{ENTER}", 1);
		mp_keys_text("  <td>2</td>")
		mp_keys_input("{ENTER}", 1);
		mp_keys_text("</tr>");
		mp_keys_input("{ENTER}", 1);
		mp_keys_text("<tr>");
		mp_keys_input("{ENTER}", 1);
		mp_keys_text("  <td>3</td>")
		mp_keys_input("{ENTER}", 1);
		mp_keys_text("  <td>4</td>")
		mp_keys_input("{ENTER}", 1);
		mp_keys_text("</tr>");
		mp_keys_input("{ENTER}", 1);
		mp_keys_text("</tbody>");
		mp_keys_input("{ENTER}", 1);
		mp_keys_text("</table>");
	end;
	
};

-- Advanced

-- Time delay for executing keys actions, in ms. A too fast execution does cause a unexpected behaviour.
local t_input = 10;

--[[ how to use

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

mp_write_unicode(unicode)


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
	mp_sleep_input(1);
end;

function mp_sleep_input(n_input)
	lmc_sleep(n_input * t_input);
end;

function mp_sleep_text(text)
end;

function mp_keys_input(keys, input)
	mp_keys(keys);
	mp_sleep_input(input);
end;

function mp_keys_text(text)
	mp_keys(text);
	n_input = string.len(text);
	if (n_input == nil or n_input < 0) then n_input = 0 end;
	mp_sleep_input(n_input);
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
end;

function mp_send_unicode(unicode)
	lmc_send_input(0, unicode, 4); -- press
	lmc_send_input(0, unicode, 6); -- release
end;

function mp_write_text(text)
  if (text == nil) then text = "" end;
  
  local tbl = utf8_explode(tostring(text));
  if (tbl.len > 0) then
    for i, c in pairs(tbl.codepoints) do
      mp_send_unicode(c);
    end;
  end;
end;

--[[ utf8_explode / extract from ustring.lua
 https://github.com/wikimedia/mediawiki-extensions-Scribunto/blob/master/includes/engines/LuaCommon/lualib/ustring/ustring.lua

 A private helper that splits a string into codepoints, and also collects the
 starting position of each character and the total length in codepoints.

 @param s string  utf8-encoded string to decode
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