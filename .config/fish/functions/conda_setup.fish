function conda_setup --wraps='eval /opt/miniconda3/bin/conda "shell.fish" "hook" $arv | source' --description 'alias conda_setup eval /opt/miniconda3/bin/conda "shell.fish" "hook" $arv | source'
  eval /opt/miniconda3/bin/conda "shell.fish" "hook" $arv | source $argv; 
end
