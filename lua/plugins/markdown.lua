return {
  'toppair/peek.nvim',
  event = { 'VeryLazy' },
  build = 'deno task --quiet build:fast',
  config = function()
    require('peek').setup()

    local peek = require('peek')
    local function toggle_peek()
      if peek.is_open() then
        peek.close()
      else
        peek.open()
      end
    end

    vim.keymap.set('n', '<leader>pt', toggle_peek, { desc = '[p]eek [t]oggle' })
    vim.keymap.set('n', '<leader>po', peek.open, { desc = '[p]eek [o]pen' })
    vim.keymap.set('n', '<leader>pc', peek.close, { desc = '[p]eek [c]lose' })
  end,
}
