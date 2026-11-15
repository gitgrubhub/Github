git config alias.sync '!f() {
    git add -A || return
    if ! git diff --cached --quiet; then
        git commit -m "${*:-Update files}" || return
    fi
    git pull --rebase && git push
}; f'
