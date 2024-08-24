return {
  'JManch/sunset.nvim',
  dependencies = {
    {
      "rebelot/kanagawa.nvim"
    },
  },
  lazy = false,
  priority = 1000,
  opts = {
    update_interval = 10000,
    latitude = 51.5,
    longitude = -0.13,
    sunrise_offset = 1800,
    sunset_offset = -1800,
    day_callback = function()
    vim.cmd("colorscheme kanagawa-lotus")
    end,
    night_callback = function()
    vim.cmd("colorscheme kanagawa-dragon")
    end,
  },
  keys = {
    { "<LEADER>l", "<CMD>SunsetToggle<CR>", desc = "Toggle sunset theme" },
  }
}
