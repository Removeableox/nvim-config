require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'darkplus',
  },
  sections = {
    lualine_a = {
      {
        'filename',
        path = 1,
      }
    }
  }
}
