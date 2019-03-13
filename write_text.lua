-- assign logical name to macro keyboard
lmc_assign_keyboard('MACROS');

-- define callback for whole device
lmc_set_handler('MACROS',function(button, direction)
  if (direction == 1) then return end  -- ignore down
  if     (button == string.byte('C')) then lmc_spawn("calc")
  elseif (button == string.byte('N')) then lmc_spawn("notepad")
  elseif (button == string.byte('H')) then lmc_send_keys('Hello world')
  elseif (button == string.byte('W')) then write_text("Érezdt§")
  
  else print('Not yet assigned: ' .. button)
  end
end)

function write_text(text)
  if (text == nil) then text = "" end;
  
  local tbl = utf8_explode(tostring(text));
  if (tbl.len > 0) then
    for i, c in pairs(tbl.codepoints) do
      lmc_send_input(0, c, 4); -- press
      lmc_send_input(0, c, 6); -- release
    end;
  end;
end;

--[[ utf8_explode / unicode compatibility
 extract from ustring.lua
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
