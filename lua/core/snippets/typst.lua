local ls = require("luasnip")
local s = ls.snippet
local i = ls.insert_node
local f = ls.function_node
local t = ls.text_node
return {
    s("ttable", {
	t("#table(columns: "), -- Insert node for user to specify the column count
	i(1),
	t(","),
	t(""),
        f(function(args)
            local col_count = tonumber(args[1][1]) or 1 -- defaults to 1 if no number is entered
            local brackets = {}
            for _ = 1, col_count do
                table.insert(brackets, "[]")
            end
            return table.concat(brackets, ",")
        end, { 1 }),
        i(0, "),"),
    })
}

