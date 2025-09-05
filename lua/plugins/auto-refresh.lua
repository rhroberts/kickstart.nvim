return {
  {
    'tmux-plugins/vim-tmux-focus-events',
    event = 'VeryLazy',
    config = function()
      vim.opt.autoread = true

      -- Check for file changes every second
      local timer = vim.uv.new_timer()
      if timer then
        timer:start(
          1000,
          1000,
          vim.schedule_wrap(function()
            vim.cmd('silent! checktime')
          end)
        )
      end
    end,
  },
}
