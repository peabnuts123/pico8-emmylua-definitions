# PICO-8 EmmyLua autocomplete definitions

[EmmyLua](https://emmylua.github.io/) definitions for the PICO-8 API, for autocomplete/intellisense support in code editors where integration with the [EmmyLua Language Server](https://github.com/EmmyLua/EmmyLua-LanguageServer) is supported ([IntelliJ ](https://github.com/EmmyLua/IntelliJ-EmmyLua), [VSCode](https://github.com/EmmyLua/VSCode-EmmyLua)).

## Installation

Simply place the file `pico8.lua` somewhere in your workspace, I would recommend a folder called `_pico8` or `_api` or something. You may have to change some settings to reference these definitions as a library, but in my experience simply having them in your workspace is enough.

One approach that also makes it easy to update would be to simply clone this repo into your project's directory:

```sh
git clone git@github.com:peabnuts123/pico8-emmylua-definitions.git _pico8
```

That way you can run `git pull` if you need to update the definitions. You will have to copy the files manually if you intend to commit them to your project, however.

## Visual Studio Code

If you are using vscode, I would recommend [this extension](https://github.com/sumneko/lua-language-server), which integrates with the EmmyLua language server as well as providing many Lua code editing features such as Go To Definition, linting and more.

## Contributing

Please let me know if there are any incorrect or missing definitions by opening an [issue](pico8-emmylua-definitions/issues) or submitting a [pull request](pico8-emmylua-definitions/pulls).

## Future work

Some future work I am considering:
  - Automating the generation of these definitions from the [PICO-8 Fandom Wiki](https://pico-8.fandom.com/wiki/Pico-8_Wikia) (where most of these definitions came from)
  - Changing the variable names and documentation to be more clear (i.e. author my own documentation)
  - Creating a version for each version of PICO-8, managed through git tags