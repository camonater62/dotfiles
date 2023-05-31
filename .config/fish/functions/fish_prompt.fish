function fish_prompt
    # PS1="\[\e[90m\][\[\e[31m\]\w\[\e[90m\]]\n\[\e[37m\]>>\[\e[39m\] "
    set fish_prompt_pwd_dir_length 3
    
    # colors
    set -l gray (set_color --bold brblack)
    set -l magenta (set_color magenta)
    set -l lightgray (set_color white)
    set -l normal (set_color normal)

    set_color --bold brblack
    echo -n [
    set_color normal
    set_color magenta
    echo -n (prompt_pwd --dir-length=0)
    set_color --bold brblack
    echo ]
    set_color white
    echo -n ">> " 
end
