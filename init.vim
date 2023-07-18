":::instalacion de plugins:::

call plug#begin('~/AppData/Local/nvim/plugged') 	"directorio donde se van a instalar los plugins

Plug 'ghifarit53/tokyonight-vim'			"theme
Plug 'Yggdroot/indentLine' 		"indentacion
Plug 'vim-airline/vim-airline'				"statusline
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'		"autocompletado de llaves, corchetes, etc.
Plug 'preservim/nerdtree'		"gestor de archivos en forma de arbol.
Plug 'preservim/vim-pencil'
Plug 'folke/zen-mode.nvim'
Plug 'preservim/vim-markdown'				"markdown stuff"
Plug 'junegunn/goyo.vim'

call plug#end() 			"cerramos el llamado de los plugins








"::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
"CONFIGURACIONES BASICAS 
set number 				"muestra los numeros de cada linea en la parte izquierda 
set relativenumber 			"la distribucion de los numeros en lineas de manera relativa
set mouse=a 				"permite la interaccion con el mouse
set noshowmode				"me deja de mostrar el modo en el que estamos 'normal, insert, visual, etc'
syntax enable 				"activa el coloreado de sintaxis en algunos tipos de archivos como html, c, c++
set encoding=utf-8 			"permite setear la codificación de archivos para aceptar caracteres especiales
set sw=4 				"la indentación genera 4 espacios
set nowrap				"el texto en una linea no baja a la siguiente, solo continua en la misma hasta el infinito.
"set noswapfile				"para evitar el mensaje que sale al abrir algunos archivos sobre swap.
set clipboard=unnamed			"para poder utilizar el portapapeles del sistema operativo 'esto permite poder copiar y pegar desde cualquier parte a nvim y viceversa.








"::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

"tokionight settings
set termguicolors

let g:tokyonight_style = 'storm' " available: night, storm
let g:tokyonight_enable_italic = 1

colorscheme tokyonight	




"::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
"vim-airline Settings

let g:airline_theme='kolor'






"::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

"configuracion de nerdtree
"mapeando el abrir y cerrar de nerdtree con nerdtreetoggle vemos los archivos en el arbol y podemos cerrarlo a la vez, map es la C mayuscula representa el
"control y -n la tecla n lo que indica que realizará la siguiente funcion de excribir el comando NERDTreeToggle y CR significa ENTER.
map <C-n> :NERDTreeToggle<CR>



"::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

"configuracion de indentLine

let g:indentLine_defaultGroup = 'SpecialKey'
let g:indentLine_char_list = ['|', '¦', '┆', '┊']



"::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

"configuracion de Pencil

set nocompatible
filetype plugin on       " may already be in your .vimrc

augroup pencil
  autocmd!
  autocmd FileType markdown,mkd call pencil#init()
  autocmd FileType text         call pencil#init()
augroup END


let g:pencil#wrapModeDefault = 'soft'   " default is 'hard'

augroup pencil
  autocmd!
  autocmd FileType markdown,mkd call pencil#init()
  autocmd FileType text         call pencil#init({'wrap': 'hard'})
augroup END

"::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

"configuracion de ZenMode

map <C-a> <ESC>:ZenMode<CR>


"::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

"configuracion de Goyo

map <C-g> <ESC>:Goyo<CR>
