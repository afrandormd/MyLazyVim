# 💤 LazyVim Custom Config & Theme

Lazyvim repo: [LazyVim](https://github.com/LazyVim/LazyVim).
Docs: [documentation](https://lazyvim.github.io/installation).

## Cara installasi

- Buat cadangan file Neovim Anda saat ini:

```bash
# required
Move-Item $env:LOCALAPPDATA\nvim $env:LOCALAPPDATA\nvim.bak

# optional but recommended
Move-Item $env:LOCALAPPDATA\nvim-data $env:LOCALAPPDATA\nvim-data.bak
```
### Cloning Konfigurasi
- **Cloning konfigurasi (windows)**

```bash
git clone https://github.com/afrandormd/MyLazyVim.git $env:LOCALAPPDATA\nvim
```

- **Cloning konfigurasi (linux)**
```bash
git clone https://github.com/afrandormd/MyLazyVim.git ~/.config/nvim
```

### Mulai Neovim

```bash
nvim
```
