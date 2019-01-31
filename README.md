# vim-vscode

A super-simple plugin to open all your current Vim buffers in [Visual Studio
Code](https://code.visualstudio.com), for quick transitioning between the two.
It attempts to keep the same line number as the Vim buffers when opening in
Code, as well.

I wrote this as a simple hack to allow my co-workers to browse and edit code on
my machine when necessary (suggesting changes, helping out with code problems,
etc.)

Requires [Visual Studio Code](https://code.visualstudio.com) to be installed and
the VS Code executable to be installed in the PATH. Currently only tested on
macOS, but will *probably* work on anything *nix.

# Usage

Install with your favorite plugin manager, open up some files, and type:

```vim
:OpenVSCode
```

You can also call it as a function:

```
vim call OpenVSCode()
```
