let g:rustfmt_autosave = 1

if $WAYLAND_DISPLAY == "wayland-0"
  let g:rust_clip_command = 'wl-copy'
else
  let g:rust_clip_command = 'xclip -selection clipboard'
endif
