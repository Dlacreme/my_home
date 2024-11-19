return {{
  'nvim-orgmode/orgmode',
  event = 'VeryLazy',
  ft = { 'org' },
  config = function()
    -- Setup orgmode
    require('orgmode').setup({
      org_agenda_files = '~/notes/agenda/**/*',
      org_default_notes_file = '~/notes/default.org',
    })
  end,
}}
