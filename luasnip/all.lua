local ls = require("luasnip")
local lsnip = ls.snippet
local func = ls.function_node

local date = function() return {os.date("%Y-%m-%d %H:%M:%S")} end

return {
-- A snippet that expands the trigger "hi" into the string "Hello, world!".
  lsnip(
    { trig = "hi" },
    { t("Hello, world!") }
  ),

  -- To return multiple snippets, use one `return` statement per snippet file
  -- and return a table of Lua snippets.

  lsnip(
    { trig = "now",
      namr = "timestamp",
      dscr = "YYYY-MM-DD HH:MM::SS"
    },
    {
      func(date, {}),
    }
  ),

  lsnip(
    { trig = "signed" },
    { t("Signed-off-by: Bjoern Doebel <bjoern.doebel@gmail.com>") }
  ),
}
