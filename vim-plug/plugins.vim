" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif


function! BuildComposer(info)
  if a:info.status != 'unchanged' || a:info.force
    if has('nvim')
      !cargo build --release --locked
    else
      !cargo build --release --locked --no-default-features --features json-rpc
    endif
  endif
endfunction

call plug#begin('~/.local/share/nvim/site/pack')

Plug 'neovim/nvim-lspconfig'
Plug 'neomake/neomake'

Plug 'RishabhRD/popfix'
Plug 'RishabhRD/nvim-lsputils'

Plug 'unblevable/quick-scope'

Plug 'nvim-lua/completion-nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lua/telescope.nvim'
Plug 'nvim-lua/lsp-status.nvim'

Plug 'nvim-treesitter/nvim-treesitter'
Plug 'nvim-treesitter/nvim-treesitter-textobjects'
Plug 'nvim-treesitter/completion-treesitter'
Plug 'nvim-treesitter/nvim-treesitter-refactor'
Plug 'nvim-treesitter/playground'


Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-fugitive'
Plug 'voldikss/vim-floaterm'
Plug 'vimwiki/vimwiki'
Plug 'sbdchd/neoformat'
Plug 'romgrk/barbar.nvim'

Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': ':UpdateRemotePlugins'}


" Databases
" Plug 'tpope/vim-dadbod'
" Plug 'kristijanhusak/vim-dadbod-ui'
" Plug 'kristijanhusak/vim-dadbod-completion'


Plug 'wellle/visual-split.vim'
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'glepnir/dashboard-nvim'

" The bang version will try to download the prebuilt binary if cargo does not exist.
Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary!' }


" Colorschemes
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
Plug 'glepnir/zephyr-nvim'
Plug 'arcticicestudio/nord-vim'
Plug 'christianchiarulli/nvcode-color-schemes.vim'

Plug 'ThePrimeagen/vim-be-good'

" Markdown preview
Plug 'npxbr/glow.nvim', {'do': ':GlowInstall'}

" Adding auto complete supports
Plug 'tpope/vim-endwise'
Plug 'jiangmiao/auto-pairs'

" Commentary
Plug 'preservim/nerdcommenter'
Plug 'mfussenegger/nvim-jdtls'

" Git integration
Plug 'airblade/vim-gitgutter'

Plug 'udalov/kotlin-vim'

Plug 'skywind3000/asynctasks.vim'
Plug 'skywind3000/asyncrun.vim'
call plug#end()
