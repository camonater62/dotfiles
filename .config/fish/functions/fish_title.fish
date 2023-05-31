function fish_title
set -q argv[1]; or set argv (prompt_pwd --dir-length=0)
    # Looks like ~/d/fish: git log
    # or /e/apt: fish
    echo $argv;
end
