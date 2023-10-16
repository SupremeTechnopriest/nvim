local mappings = require("snippy.mapping")

vim.keymap.set("i", "<Tab>", mappings.expand_or_advance("<Tab>"), { desc = "Expand or advance snippet" })
vim.keymap.set("s", "<Tab>", mappings.next("<Tab>"), { desc = "Next snippet" })
vim.keymap.set({ "i", "s" }, "<S-Tab>", mappings.previous("<S-Tab>"), { desc = "Previous snippet" })
vim.keymap.set("x", "<Tab>", mappings.cut_text, { remap = true }, { desc = "Cut text" })
vim.keymap.set("n", "g<Tab>", mappings.cut_text, { remap = true }, { desc = "Cut text" })
