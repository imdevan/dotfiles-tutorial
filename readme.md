# Dot files

tbh I know very little about dot file directory architecture.

`index.sh` Is the main file that all other files are included in.

### Installation

**Step 1**
Clone the repository into `.dotfiles`
```
git clone https://github.com/imdevan/dotfiles-boilerplate.git .dotfiles
```

**Step 2**  
If you are using bash (default)
```
echo "source ~/.dotfiles/index.sh" >> ~/.bashrc
```

If you are using [zsh](https://github.com/robbyrussell/oh-my-zsh) (recommended)
```
echo "source ~/.dotfiles/index.sh" >> ~/.zshrc
```

**Step 3**
Restart you're terminal or
```
source ~/.zshrc
```

### notes

- `vars` contains files that are used throughout
- All other files function independently of each other
- Leave an issue if you have questions or... issues
