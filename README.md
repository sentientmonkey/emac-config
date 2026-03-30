# Emacs Config

Personal Emacs configuration. Requires Emacs 29+.

Packages are managed by [straight.el](https://github.com/radian-software/straight.el) — no separate package manager install needed. On first launch, straight.el bootstraps itself and installs everything declared in `config/`.

## Installation

### With Nix (primary)

This repo is used as a submodule in a nix-darwin/home-manager config. The nix activation script handles installation automatically on `rebuild`.

### Standalone

```bash
git clone git@github.com:sentientmonkey/emacs-config.git ~/.emacs.d
emacs
```

First launch will take 30–60 seconds while straight.el installs packages. Subsequent launches are instant.

**Prerequisites:** `git`, `curl`, and any language servers you want (see [LSP](#lsp) below).

## Structure

```
init.el          # bootstraps straight.el, loads config files
bin/update       # run by nix activation to update packages + freeze lockfile
config/
  options.el     # editor settings (indentation, scrolling, line numbers, etc.)
  evil.el        # vim keybindings via evil + evil-collection
  which-key.el   # keybinding popup on pause
  completion.el  # vertico + orderless + marginalia + consult (Telescope equivalent)
  lsp.el         # eglot (built-in LSP client) + nix-mode + yaml-mode
  ui.el          # tokyonight theme + doom-modeline
  org.el         # org-mode + evil-org
straight/
  versions/
    default.el   # lockfile — all packages pinned to specific commits
```

## Keybindings

### Navigation
| Key | Action |
|-----|--------|
| `C-p` | Find files (fd) |
| `C-s` | Search in buffer |
| `C-c s` | Ripgrep project |
| `C-c b` | Switch buffer |
| `C-c h` | Search info/docs |

### LSP
| Key | Action |
|-----|--------|
| `M-.` | Go to definition |
| `M-,` | Jump back |
| `M-?` | Find references |
| `C-c c d` | Hover docs |
| `C-c c a` | Code actions |
| `C-c c r` | Rename symbol |

### Git (Magit)
| Key | Action |
|-----|--------|
| `C-c g s` | Magit status |
| `C-c g b` | Magit blame |

### Org
| Key | Action |
|-----|--------|
| `C-c o o` | Open notes file |
| `C-c o a` | Org agenda |
| `C-c o c` | Org capture |

### Tools
| Key | Action |
|-----|--------|
| `C-c e` | Toggle neotree |
| `C-c t` | Open terminal split |

## LSP

Eglot connects to language servers already on your `$PATH`. Servers are not bundled — install them separately:

| Language | Server |
|----------|--------|
| Bash | `bash-language-server` |
| Nix | `nixd` |
| YAML | `yaml-language-server` |
| Go | `gopls` |
| Python | `pyright` or `pylsp` |
| Ruby | `ruby-lsp` or `solargraph` |

With Nix, add servers to `home.packages` in your nix config.

## Updating Packages

```
M-x straight-pull-package   # update one package
M-x straight-pull-all       # update all packages
M-x straight-freeze-versions # write updated lockfile
```

Commit `straight/versions/default.el` after freezing to pin the new versions.

With Nix, `rebuild` runs `bin/update` which does this automatically.
