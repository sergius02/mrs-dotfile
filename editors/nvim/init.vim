" Global preference
let mapleader = " "
set encoding=UTF-8
set rnu
set tabstop=4
set shiftwidth=4
set autoindent
set smartindent
set expandtab

" Some NERDTREE options
let g:NERDTreeQuitOnOpen = 1

" Some Barbar options
let bufferline = get(g:, 'bufferline', {})
let bufferline.animation = v:true
let bufferline.clickable = v:true
let bufferline.tabpage = v:true
let bufferline.auto_hide = v:true

map <leader>ff :Telescope find_files<CR>
map <leader>fw :Telescope buffers<CR>
map <leader>fg :Telescope live_grep<CR>

map <leader>tn :tabnew<CR>
map <leader>tw :BufferClose<CR>
map <leader>tl :BufferNext<CR>
map <leader>th :BufferPrevious<CR>

map <leader>rt :ToggleTerm<CR>

map <leader>gbl :BlamerToggle<CR>

map <A-1> :NERDTreeToggle<CR>
map <A-f> :NERDTreeFind<CR>

" Some plugins options

" Plugins section
call plug#begin('~/.config/nvim/plugged')

Plug 'junegunn/vim-easy-align'
Plug 'tpope/vim-surround'

"Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
"Plug 'junegunn/fzf.vim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'ahmedkhalf/project.nvim'

Plug 'dracula/vim', {'as':'dracula'}

Plug 'akinsho/toggleterm.nvim'

Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'

Plug 'kyazdani42/nvim-web-devicons'
Plug 'romgrk/barbar.nvim'
" Plug 'kdheepak/tabline.nvim'

Plug 'nvim-lualine/lualine.nvim'

Plug 'RRethy/vim-illuminate'

Plug 'mhinz/vim-startify'

Plug 'tpope/vim-fugitive'
Plug 'nvim-lua/plenary.nvim'
Plug 'lewis6991/gitsigns.nvim'

" Programming language support
Plug 'neoclide/coc.nvim', {'branch': 'release'} " Completion

" Java extension
Plug 'mfussenegger/nvim-jdtls'

" Vala extension
Plug 'arrufat/vala.vim'

if has("nvim")
    Plug 'neovim/nvim-lspconfig'
endif

call plug#end()

lua require("lsp-config")

lua << EOF
require("toggleterm").setup{
  -- size can be a number or function which is passed the current terminal
  function(term)
    if term.direction == "horizontal" then
      return 15
    elseif term.direction == "vertical" then
      return vim.o.columns * 0.4
    end
  end,
  open_mapping = [[<c-\>]],
  hide_numbers = true,
  shade_filetypes = {},
  shade_terminals = true,
  start_in_insert = true,
  insert_mappings = true,
  persist_size = true,
  direction = 'float',
  close_on_exit = true,
  shell = vim.o.shell,
  float_opts = {
    border = 'curved', -- | 'single' | 'shadow' | 'double' | 
    highlights = {
      border = "Normal",
      background = "Normal",
    }
  }
}
require("project_nvim").setup{}
require('telescope').load_extension('projects')
require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'dracula',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {},
    always_divide_middle = true,
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {}
}
require('gitsigns').setup {
  current_line_blame = true
}
EOF
