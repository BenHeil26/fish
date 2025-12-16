if status is-interactive
  # Commands to run in interactive sessions can go here
 
  # basic shortcuts
  abbr -a fish_reload source ~/.config/fish/config.fish

  abbr -a vim nvim 
  abbr -a dev tmux new -s dev nvim .
  abbr -a F --position anywhere --set-cursor "| grep '%'"
  
  # git shortcuts
  abbr -a ga git add .
  abbr -a gs git status
  abbr -a gc --set-cursor "git commit -m '%'"
  abbr -a gp git pull
  abbr -a gP git push
  
  # load the `z` command up
  zoxide init fish | source
  
  # set default directory for `zk`
  set -x ZK_NOTEBOOK_DIR ~/Notes

  # set SHELL env variable for integrations with other tools
  set -x SHELL $(which fish)

  # override normal greeting to empty string
  set -g fish_greeting ""

end
