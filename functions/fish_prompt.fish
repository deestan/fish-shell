function fish_prompt
  printf '%s@%s ' (whoami) (uname -n)

  set_color $fish_color_cwd
  echo -n (prompt_pwd)
  
  if set git_branch (git rev-parse --abbrev-ref HEAD ^ /dev/null)
    set_color blue
    echo -n ' '$git_branch
  end

  set_color normal
  echo -n '> '
end
