# Grep processs
abbr -a pgrep    'pgrep -a'

# Journalctl
abbr -a jctl     'journalctl -xe'          # view recent errors
abbr -a jctlf    'journalctl -f'           # follow logs in realtime
abbr -a jctlu    'journalctl -u'           # logs of a service

# Kill utilities
abbr -a pk       'pkill -9'                # force kill by name
abbr -a ka       'killall -9'              # kill all by name
abbr -a kill9    'kill -9'                 # force kill by PID

# System status
abbr -a svc      'systemctl'
abbr -a svca     'systemctl --all'
abbr -a svcs     'systemctl status'
abbr -a svcr     'sudo systemctl restart'
abbr -a svcl     'systemctl list-units'
