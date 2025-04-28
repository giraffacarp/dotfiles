$env.config.keybindings ++= [
  {
    name: fuzzy_history
    modifier: control
    keycode: char_r
    mode: [emacs, vi_normal, vi_insert]
    event: [
      {
        send: ExecuteHostCommand
        cmd: "do {
        commandline edit --insert (
        history
        | get command
        | reverse
        | uniq
        | str join (char -i 0)
        | fzf --scheme=history 
        --read0
        --layout=default
        --preview='echo -n {} | nu --stdin -c \'nu-highlight\''
        --preview-window=down,4,wrap
        -q (commandline)
        | decode utf-8
        | str trim
        )
        }"
      }
    ]
  }
]
