abbr -a ddimg   'sudo dd if=your.iso of=/dev/sdX bs=32M status=progress oflag=direct'
abbr -a ddclean 'sudo dd if=/dev/zero of=/dev/sdX bs=512M status=progress'
