# Aliens
All your alias are belong to us.

Aliens is a tool for creating directory-specific aliases that automatically
load upon entering a directory. It was created to allow the use of the same
alias in different directories with different commands.

Ex. Run `web` in any web app's directory to start the web server, regardless of the
language or ecosystem. In one directory, `web` aliases `node dev` and in another it
aliases `bundle exec rails console`.

## Usage

Aliases for a directory are stored in a `.aliens` file. These should be valid zsh aliases.

Aliens also comes with a CLI for CRUD operations on `.aliens` aliases. Use `aliens help` for a list of commands.

![cli](assets/cli.gif)

## Installation

### With zplug

Add this to your `.zshrc`.

```console
zplug "tkmcclellan/aliens"
```

### Manually

Run

```console
git clone https://github.com/tkmcclellan/aliens $ZSH_CUSTOM/plugins/aliens
```

And add aliens to your `.zshrc`

```console
plugins=(... aliens)
```
