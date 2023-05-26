# omz-themes

Themes I've customized for Oh My ZSH

## Josie

### Screenshot

![screenshot of shell using the josie theme](./josie-screenshot.png?raw=true "josie.zsh")

### How to install:

```bash
$ (cd ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/ && curl --remote-name https://github.com/CodeWitchJosie/omz-themes/raw/main/josie.zsh-theme)
```

### How to use:

- set ZSH_THEME="josie"
- reload your .zshrc

For convenience:

```bash
$ sed -i -e 's/^ZSH_THEME=.*/ZSH_THEME="josie"/' ~/.zshrc
$ exec zsh
```
