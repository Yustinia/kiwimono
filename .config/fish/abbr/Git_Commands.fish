# ----------------------------------------
# 🧱 Initialization & Remote Setup
# ----------------------------------------
abbr -a ginit      'git init'                          # Initialize a new repo
abbr -a grem       'git remote -v'                     # Show remotes
abbr -a gremote    'git remote add origin'             # Add remote origin
abbr -a gclone     'git clone'                         # Clone a repo

# ----------------------------------------
# 📊 Status, Diff & Log
# ----------------------------------------
abbr -a gsta       'git status -b'                     # Short status + branch
abbr -a gd         'git diff'                          # Show unstaged changes
abbr -a gds        'git diff --staged'                 # Show staged changes
abbr -a gl         'git log --oneline --graph --decorate --all'  # Pretty full log

# ----------------------------------------
# 📦 Staging & Commit
# ----------------------------------------
abbr -a ga         'git add'                           # Add file(s)
abbr -a gaa        'git add .'                         # Add all changes
abbr -a gap        'git add -p'                        # Interactive add

abbr -a gc         'git commit'                        # Commit
abbr -a gcm        'git commit -m'                     # Commit with message
abbr -a gca        'git commit --amend'                # Amend last commit
abbr -a gcam       'git commit -am'                    # Add & commit in one

abbr -a greset     'git reset'                         # General reset
abbr -a gresetsoft 'git reset --soft main~1'           # Undo last commit, keep staged
abbr -a gresethard 'git reset --hard'                  # Discard everything

# ----------------------------------------
# 🚀 Push & Pull
# ----------------------------------------
abbr -a gps        'git push'                          # Push to remote
abbr -a gpsu       'git push -u origin main'           # Push and set upstream
abbr -a gpf        'git push --force-with-lease'       # Safe force push
abbr -a gpl        'git pull'                          # Pull from remote
abbr -a gfh        'git fetch'                         # Fetches git

# ----------------------------------------
# 🌱 Branching & Switching
# ----------------------------------------
abbr -a gb         'git branch'                        # List branches
abbr -a gba        'git branch -a'                     # All branches
abbr -a gcb        'git checkout -b'                   # New branch and switch
abbr -a gsw        'git switch'                        # Switch branches (modern)
abbr -a gswc       'git switch -c'                     # Create + switch
abbr -a gco        'git checkout'                      # Legacy checkout
abbr -a gcmain     'git checkout main'                 # Switch to main branch

# ----------------------------------------
# 🔁 Rebase, Merge & Cherry-pick
# ----------------------------------------
abbr -a gm         'git merge'                         # Merge branch
abbr -a gmt        'git mergetool'                     # Launch merge tool
abbr -a grb        'git rebase'                        # Rebase
abbr -a grbi       'git rebase -i main~5'              # Interactive rebase last 5
abbr -a gcp        'git cherry-pick'                   # Cherry-pick a commit
abbr -a gcoff      'git checkout --ours'               # Resolve using our changes
abbr -a gctheir    'git checkout --theirs'             # Resolve using their changes

# ----------------------------------------
# 📥 Stash
# ----------------------------------------
abbr -a gstash     'git stash'                         # Stash changes
abbr -a gstashp    'git stash pop'                     # Pop last stash
abbr -a gsl        'git stash list'                    # List stashes
abbr -a gsa        'git stash apply'                   # Apply stash without popping

# ----------------------------------------
# 🧼 Clean-up & Misc
# ----------------------------------------
abbr -a gclean     'git clean -fd'                     # Remove untracked files
abbr -a gprune     'git remote prune origin'           # Prune remote-tracking branches
abbr -a gtags      'git tag -l'                        # List tags
abbr -a gundo      'git reflog'                        # Show history of main changes
