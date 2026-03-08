# ZIP
abbr -a zipc   'zip -r'                # compress folder → zip file

# TAR (compression variants)
abbr -a untar      'tar -xvzf'         # (already exists, keep it)
abbr -a untarbz2   'tar -xvjf'         # extract .tar.bz2
abbr -a untarxz    'tar -xvJf'         # extract .tar.xz

# TAR compression helpers
abbr -a tarc       'tar -cvzf'         # create .tar.gz
abbr -a tarbz2     'tar -cvjf'         # create .tar.bz2
abbr -a tarxz      'tar -cvJf'         # create .tar.xz

# 7zip (7z)
abbr -a 7zex       '7z x'              # extract
abbr -a 7zcmp      '7z a'              # compress
