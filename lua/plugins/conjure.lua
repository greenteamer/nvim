return {
  "Olical/conjure",
  "gpanders/nvim-parinfer",
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
