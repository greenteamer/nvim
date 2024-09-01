-- Disable the documentation mapping
vim.g["conjure#mapping#doc_word"] = false

-- Rebind it from K to <prefix>gk
vim.g["conjure#mapping#doc_word"] = "gk"

-- Reset it to the default unprefixed K (note the special table wrapped syntax)
vim.g["conjure#mapping#doc_word"] = { "K" }

return {
	"Olical/conjure",
  "gpanders/nvim-parinfer",
  {
    "dense-analysis/ale",
    config = function()
        -- Configuration goes here.
        local g = vim.g

        g.ale_ruby_rubocop_auto_correct_all = 1

        g.ale_linters = {
            clojure = {'clj-kondo'},
            ruby = {'rubocop', 'ruby'},
            lua = {'lua_language_server'}
        }
    end
  }
	--[[ {
    "julienvincent/nvim-paredit",
    config = function()
      require("nvim-paredit").setup({
        filetypes = { "clojure" },
        indent = {
          -- This controls how nvim-paredit handles indentation when performing operations which
          -- should change the indentation of the form (such as when slurping or barfing).
          --
          -- When set to true then it will attempt to fix the indentation of nodes operated on.
          enabled = true,
          -- A function that will be called after a slurp/barf if you want to provide a custom indentation
          -- implementation.
          indentor = require("nvim-paredit.indentation.native").indentor,
        },
      })
    end
  } ]]
}
