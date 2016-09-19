# Dotfile Tutorial

`index.sh` Is the main file that all other files are included in.

### Installation

**Step 1**
Clone the repository into `.dotfiles`
```
git clone https://github.com/imdevan/dotfiles-tutorial.git
```

**Step 2**  
If you are using bash (default)
```
echo "source ~/dotfiles-tutorial/index.sh" >> ~/.bashrc
```

**Step 3**
Restart you're terminal or
```
source ~/.bashrc
```

### notes

- If you are using `zsh`, replace `~/.bashrc` with `~/.zshrc`
- `vars` contains files that are used throughout
- All other files are independent of each other
- Leave an issue if you have questions or... issues
