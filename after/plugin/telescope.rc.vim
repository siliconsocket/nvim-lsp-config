if !exists('g:loaded_telescope') | finish | endif

nnoremap  <silent> ;f <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap  <silent> ;b <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap  <silent> ;w <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap  <silent> ;d <cmd>lua require('telescope.builtin').file_browser()<cr>
nnoremap  <silent> ;. <cmd>lua require('telescope.builtin').git_status()<cr>
nnoremap <silent> \\ <cmd>Telescope buffers<cr>
nnoremap <silent> ;; <cmd>Telescope help_tags<cr>

lua << EOF
function telescope_buffer_dir()
  return vim.fn.expand('%:p:h')
end

local telescope = require('telescope')
local actions = require('telescope.actions')

telescope.setup{
  defaults = {
  layout_config = {
  	vertical = { width = 160, height = 320 }
  },
  mappings = {
      n = {
        ["q"] = actions.close
      },
    },
    file_ignore_patterns = {'node_modules','build','ios/Pods/*'}
  },
  pickers = {
    find_files = {
      layout_strategy='vertical'
    },
    git_status = {
      layout_strategy='vertical'
    },
    file_browser = {
      layout_strategy='vertical'
    },
    live_grep = {
      layout_strategy='vertical'
    },
    buffers = {
      layout_strategy='vertical'
    }
  },
}
EOF