abbr -a --position anywhere mkdir 'mkdir -pv'
abbr -a --position anywhere mv    'mv -fv'
abbr -a --position anywhere cp    'cp -rfv'
abbr -a --position anywhere rm    'rm -rfv'
abbr -a --position anywhere grep  'rg -i'
abbr -a --position anywhere cat   'bat'
abbr -a --position anywhere pat   'bat -p'
abbr -a --position anywhere ls    'eza -alhog --group --group-directories-first'
abbr -a --position anywhere ll    'eza --tree'

abbr -a --position anywhere mvr 'rsync -aHAXvh --progress --mkpath --remove-source-files'
abbr -a --position anywhere cpr 'rsync -aHAXvh --progress --mkpath'

abbr -a z     'zoxide'
