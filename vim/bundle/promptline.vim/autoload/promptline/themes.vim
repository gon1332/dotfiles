" The MIT License (MIT)
"
" Copyright (c) 2013-2014 Evgeni Kolev

fun! promptline#themes#load_theme(theme) abort
  if type(a:theme) == type("")
    return promptline#themes#load_stock_theme(a:theme)
  elseif type(a:theme) == type({})
    return deepcopy(a:theme)
  endif

  throw "promptline: invalid theme type of g:promptline_theme"
endfun

fun! promptline#themes#load_airline_theme(...)
  let mode = get(a:, 1, 'normal')

  if !has_key(g:, 'airline_theme') || !has_key(g:, 'airline#themes#' . g:airline_theme . '#palette')
    throw "promptline: Can't load theme from airline. Is vim-airline loaded?"
  endif

  let mode_palette = g:airline#themes#{g:airline_theme}#palette[mode]
  return promptline#themes#create_theme_from_airline(mode_palette)
endfun

fun! promptline#themes#create_theme_from_airline(mode_palette)
  return {
        \'a'    : a:mode_palette.airline_a[2:4],
        \'b'    : a:mode_palette.airline_b[2:4],
        \'c'    : a:mode_palette.airline_c[2:4],
        \'x'    : a:mode_palette.airline_x[2:4],
        \'y'    : a:mode_palette.airline_y[2:4],
        \'z'    : a:mode_palette.airline_z[2:4],
        \'warn' : a:mode_palette.airline_warning[2:4]}
endfun

fun! promptline#themes#load_stock_theme(theme_name) abort
  try
    let theme = promptline#themes#{a:theme_name}#get()
  catch /^Vim(let):E117: Unknown function: promptline#themes#.*#get/
    throw "promptline: Theme cannot be found '" . a:theme_name . "'"
  endtry
  return theme
endfun

fun! promptline#themes#load_lightline_theme(mode) abort
  if !exists('*lightline#palette')
    throw "promptline: Can't load theme from lightline. Is latest lightline.vim loaded?"
  endif

  let palette = lightline#palette()
  let mode_palette = extend( deepcopy(palette.normal), palette[a:mode] )

  return promptline#themes#create_theme_from_lightline(mode_palette)
endfun

fun! promptline#themes#create_theme_from_lightline(mode_palette)
  return {
        \'a'    : a:mode_palette.left[0][2:4],
        \'b'    : a:mode_palette.left[1][2:4],
        \'c'    : a:mode_palette.middle[0][2:4],
        \'x'    : a:mode_palette.middle[0][2:4],
        \'y'    : a:mode_palette.right[1][2:4],
        \'z'    : a:mode_palette.right[0][2:4],
        \'warn'  : a:mode_palette.warning[0][2:4]}
endfun

