# Zgenom Extension for running commands

Allow running commands in the root of a plugin directory.

You need to use it with [zgenom](https://github.com/jandamm/zgenom).

## Example

```zsh
source "${HOME}/.zgenom/zgenom.zsh"

zgenom autoupdate --background

if ! zgenom saved; then
    zgenom load jandamm/zgenom-ext-run

    # Load git-extras + source completions
    zgenom load tj/git-extras etc/git-extras-completion.zsh
    # Run make for git-extras
    zgenom run tj/git-extras PREFIX=$ZPFX/git-extras make
    # Add generated bins
    zgenom bin $ZPFX/git-extras

    zgenom save
fi
```

**Note:** If the repository is a git repository the last hash is saved and the
command is only executed when the hash changes. If it's no git repository the
command will always be executed.
