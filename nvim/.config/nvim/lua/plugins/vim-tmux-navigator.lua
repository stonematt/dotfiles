return {
  "christoomey/vim-tmux-navigator",
  lazy = false,
  keys = {
    { "<C-h>", "<cmd><C-U>TmuxNavigateLeft<CR>", desc = "Tmux Left" },
    { "<C-j>", "<cmd><C-U>TmuxNavigateDown<CR>", desc = "Tmux Down" },
    { "<C-k>", "<cmd><C-U>TmuxNavigateUp<CR>", desc = "Tmux Up" },
    { "<C-l>", "<cmd><C-U>TmuxNavigateRight<CR>", desc = "Tmux Right" },
    { "<C-\\>", "<cmd><C-U>TmuxNavigatePrevious<CR>", desc = "Tmux Prev" },
  },
}
