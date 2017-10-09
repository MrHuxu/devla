function fish_prompt
	echo

  function fst; set_color -o fa0; end
  function snd; set_color -o 36f; end
  function off; set_color normal; end

  set -l pwd (prompt_pwd)
  set -l base (basename "$pwd")

  set -l expr "s|/|"(snd)"/"(off)"|g;  \
               s|"$base"|"(fst)$base(off)" |g"

  echo -n (echo "$pwd" | sed -e $expr)(off)

 
  set -g __fish_git_prompt_show_informative_status true
  set -g __fish_git_prompt_showcolorhints true
  set_color normal
  printf '%s ' (__fish_git_prompt)

  set -l colors 444 777 aaa
  for color in $colors
    echo -n (set_color $color)">"
  end

  echo -n " "
end
