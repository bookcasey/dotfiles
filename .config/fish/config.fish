alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=/$HOME'
alias nv="vim -c ':NV!'"
alias t='vim ~/Notes/todo.txt'

fish_vi_key_bindings

function fish_mode_prompt --description 'Displays the current mode'
  if test "$fish_key_bindings" = "fish_vi_key_bindings"
    switch $fish_bind_mode
      case default
      set_color --bold red
      echo 🅽
    case insert
      set_color --bold green
      echo 🅸
    case replace-one
      set_color --bold green
      echo 🆁
    case visual
      set_color --bold brmagenta
      echo 🆅
    end
    set_color normal
    printf " "
  end
end


