local rep = string.rep

---@param str string
---@param len number
---@param ch string
---@return string
local function leftpad(str, len, ch)
  return rep(ch or " ", len - #str) .. str
end

if not pcall(debug.getlocal, 4, 1)  then
  if ... == "-h" or ... == "--help" then
    print[[
Usage: leftpad.lua [OPTION] STR LEN [CH]
Pad STR to the left by CH reaching LEN

Options:
  -h, --help     display this help text and exit
]]
  else
    print(leftpad(...))
  end
end

return leftpad
