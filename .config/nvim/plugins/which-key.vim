" https://github.com/folke/which-key.nvim
Plug 'folke/which-key.nvim'

function WhichKeySetup()
lua << EOF
require("which-key").setup {}
local wk = require("which-key")
wk.register({
    ["<CR>"] = { "disable highlight" },
    ["*"] = { "recursively search word under the cursor" },
    a = { "coc codeaction" },
    b = { "open buffer list" },
    d = { "coc diagnostic" },
    g = { "git related" },
    h = { "list most recently accessed files" },
    l = { "coc fzflist" },
    n = { "toggle file explorer" },
    r = { "start recursive search" },
    R = { "recursively search a phrase" },
    q = { "delete the current buffer" },
    Q = { "close all buffers" },
    v = { "neovim related" },
    w = { "vimwiki related" },
    x = { "open in default program" },
    z = { "distraction free writing" }
}, { prefix = "<leader>" })
EOF
endfunction

augroup WhichKeySetup
    autocmd!
    autocmd User PlugLoaded call WhichKeySetup()
augroup END
