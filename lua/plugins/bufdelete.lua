return {
  'famiu/bufdelete.nvim',
  keys = {
    { '<leader>bd', '<cmd>Bdelete<cr>', desc = '[b]uffer [d]elete without affecting window layout' },
    { '<leader>bw', '<cmd>Bwipeout<cr>', desc = '[b]uffer [w]ipeout without affecting window layout' },
    { '<leader>ba', '<cmd>%Bdelete<cr>', desc = '[b]uffers [d]elete all' },
  },
}
