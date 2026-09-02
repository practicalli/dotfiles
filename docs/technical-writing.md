# Technical Writing

Tools that have been used to support technical writing:

- Alex
- Proselint

I use Proselint for all my writing.

I used to use Alex but generated more warnings that I felt useful at the time, so do not currently use it.

### Proselint

Using the Mason popup in Neovim, I've added the [Proselint](https://github.com/amperser/proselint){target=_blank} tool to help improve my use of English.

There are decades of experience writing well in modern English and Proselint provides feedback to improve your writing as you write it.

It has already steered me away from using 'very' all the time, which I now realise was superfluous (and not 'very' superfluous 🙄)

There were a few false positives due to the Python markdown syntax use to make the Practicalli content easier to digest, e.g. annotations generating warnings about hyperbole.

A `proselint/config.json` configuration was created in [practicalli/dotfiles](https://github.com/practicalli/dotfiles){target=_blank} and a symbolic link to the proselink directory created in $XDG_CONFIG_HOME (the default is also .config/proselint/config.json)

```json
{
  "checks": {
    "annotations": false,
    "lexical_illusions": false,
    "typography.symbols.curly_quotes": false,
    "typography.symbols.ellipsis": false,
    "typography.punctuation.hyperbole": false
  }
}
```

The reason for disabling these checks:

- `annotations` warns about `TODO:` and similar notes in the text
- `lexical_illusions` warn on repeated words (trips up on log and shell output examples)
- `typography.symbols.curly_quotes` warns double quotes in text should be curly - complains about code examples.
- `typography.punctuation.hyperbole` false warning for annotation syntax
- `typography.symbols.ellipsis` warns on `...` should be the ellipsis form (usually found in log output or code examples)
