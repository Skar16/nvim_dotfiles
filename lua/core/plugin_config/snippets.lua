local ls = require("luasnip")
ls.config.set_config {
    history = true,
    updateevents = "TextChanged,TextChangedI",
}

-- Load snippets from ~/.config/nvim/lua/core/snippets folder
require("luasnip.loaders.from_lua").lazy_load({ paths = "~/.config/nvim/lua/core/snippets" })

