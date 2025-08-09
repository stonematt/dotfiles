return {
  "ibhagwan/fzf-lua",
  opts = function(_, opts)
    opts.grep = {
      -- Fast, clear search with ripgrep
      rg_opts = "--hidden --no-heading --smart-case --column --line-number --glob '!{.git,node_modules}/*'",
      multiprocess = true,
    }
    return opts
  end,
  keys = {
    {
      "<leader>sg",
      function()
        require("fzf-lua").live_grep()
      end,
      desc = "Grep (fzf-lua, fast rg)",
    },
  },
}
