function meme --wraps='fortune -s | cowsay -W 200 | lolcat' --description 'alias meme=fortune -s | cowsay -W 200 | lolcat'
  fortune -s | cowsay -W 200 | lolcat $argv; 
end
