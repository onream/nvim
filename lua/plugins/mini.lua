return {
  { -- Collection of various small independent plugins/modules
    'echasnovski/mini.nvim',
    config = function()
      -- Starter
      require('mini.starter').setup()

      -- Trailspace
      require('mini.trailspace').setup()

      -- Statusline
      require('mini.statusline').setup()

      -- Better Around/Inside textobjects
      --
      -- Examples:
      --  - va)  - [V]isually select [A]round [)]paren
      --  - yinq - [Y]ank [I]nside [N]ext [Q]uote
      --  - ci'  - [C]hange [I]nside [']quote
      require('mini.ai').setup({ n_lines = 500 })

      -- Add/delete/replace surroundings (brackets, quotes, etc.)
      --
      -- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
      -- - sd'   - [S]urround [D]elete [']quotes
      -- - sr)'  - [S]urround [R]eplace [)] [']
      require('mini.surround').setup({
        -- Reverse the whitespace behaviour for brackets
        custom_surroundings = {
          ['('] = {
            output = function()
              return { left = '(', right = ')' } -- no space
            end,
          },
          [')'] = {
            output = function()
              return { left = '( ', right = ' )' } -- with space
            end,
          },
          ['{'] = {
            output = function()
              return { left = '{', right = '}' } -- no space
            end,
          },
          ['}'] = {
            output = function()
              return { left = '{ ', right = ' }' } -- with space
            end,
          },
          ['['] = {
            output = function()
              return { left = '[', right = ']' } -- no space
            end,
          },
          [']'] = {
            output = function()
              return { left = '[ ', right = ' ]' } -- with space
            end,
          },
        },
      })
    end,
  },
}
