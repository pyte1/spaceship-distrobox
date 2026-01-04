<h1 align="center">
  🚀 + 📦
  <br>Spaceship Distrobox<br>
</h1>

<h4 align="center">
  A <a href="https://distrobox.it/" target="_blank">Distrobox</a> section for Spaceship prompt
</h4>

A custom plugin for the [Spaceship Prompt](https://github.com/pyte1/spaceship-prompt) that displays the current [Distrobox](https://github.com/89luca89/distrobox) container you're in directly in your terminal prompt.

## Installing

You need to source this plugin somewhere in your dotfiles. Here's how to do it with some popular tools:

### [zplug]

```zsh
zplug "pyte1/spaceship-distrobox"
```

### [antigen]

```zsh
antigen bundle "pyte1/spaceship-distrobox"
```

### [antibody]

```zsh
antibody bundle "pyte1/spaceship-distrobox"
```

### [zinit]

```zsh
zinit light "pyte1/spaceship-distrobox"
```

### [zgen]

```zsh
zgen load "pyte1/spaceship-distrobox"
```

### Manual

If none of the above methods works for you, you can install the Plugin manually.

1. Clone this repo somewhere, for example to `$HOME/.zsh/spaceship-distrobox`.
2. Source this section in your `~/.zshrc`.

## Usage

After installing, add the following line to your `.zshrc` in order to include Distrobox section in the prompt:

```zsh
spaceship add foobar
```

or add it to your `SPACESHIP_PROMPT_ORDER`:

```zsh
SPACESHIP_PROMPT_ORDER=(
  ...
  distrobox
  ...
)

```

## Options


| Variable                     | Default                                   | Meaning                                      |
| ---------------------------- | ----------------------------------------- | -------------------------------------------- |
| `SPACESHIP_DISTROBOX_SHOW`    | `true`                                    | Show the distrobox section                  |
| `SPACESHIP_DISTROBOX_PREFIX`  | `$SPACESHIP_PROMPT_DEFAULT_PREFIX`        | Prefix before the section                   |
| `SPACESHIP_DISTROBOX_SUFFIX`  | `$SPACESHIP_PROMPT_DEFAULT_SUFFIX`        | Suffix after the section                    |
| `SPACESHIP_DISTROBOX_SYMBOL`  | `📦`                                      | Symbol to be shown before the container name |
| `SPACESHIP_DISTROBOX_COLOR`   | `yellow`                                  | Color of the section                        |



## License

MIT © [Pyte](https://pyte.dev)
