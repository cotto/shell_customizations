case "$TERM" in
    xterm)
        PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w @$(git_branch) $WINDOW $ '
        ;;
    screen)
        alias git_branch="git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/@\1 /'"
        PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w @$(git_branch)$WINDOW $ '
        ;;
esac

