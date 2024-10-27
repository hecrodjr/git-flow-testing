# Justfile

# Show available commands and their descriptions
help:
    @echo "Available Commands:"
    @echo "  just status                     - Show the Git status"
    @echo "  just commit MESSAGE             - Add all changes and commit with a message"
    @echo "  just commit-file FILE MESSAGE   - Add a specific file and commit with a message"
    @echo "  just push [BRANCH]              - Push to a specified branch (default: main)"
    @echo "  just pull [BRANCH]              - Pull from a specified branch (default: main)"
    @echo "  just log-sig                    - Display git log with signatures"
    @echo "  just gen-cl                     - Bump version and write new commits to changelog"
    @echo "  just help                       - Show this help message"

# Shortcut to check Git status
stat:
    git status

# Shortcut to add all changes and commit with a message
commit message:
    git add .
    git commit -m "{{message}}"

# Shortcut to add a specific file and commit with a message
commit-file file message:
    git add {{file}}
    git commit -m "{{message}}"

# Shortcut to push to a specified branch
push branch="main":
    git push origin {{branch}}

# Shortcut to pull from a specified branch
pull branch="main":
    git pull origin {{branch}}

log-sig:
    git log --show-signature

gen-cl:
    git-cliff --bump -o CHANGELOG.md