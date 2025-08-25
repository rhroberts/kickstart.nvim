return {
  'famiu/bufdelete.nvim',
  keys = {
    { '<leader>bd', '<cmd>Bdelete<cr>', desc = '[B]uffer [D]elete without affecting window layout' },
    { '<leader>bw', '<cmd>Bwipeout<cr>', desc = '[B]uffer [W]ipeout without affecting window layout' },
    { '<leader>ba', '<cmd>%Bdelete<cr>', desc = '[B]uffers [D]elete all' },
  },
}
