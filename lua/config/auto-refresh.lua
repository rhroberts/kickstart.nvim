vim.opt.autoread = true

-- Simple timer-based auto-reload
local timer = vim.uv.new_timer()
if timer then
  timer:start(
    1000,
    2000,
    vim.schedule_wrap(function()
      vim.cmd('silent! checktime')
    end)
  )
end
