markdownfmt
===========

Like `gofmt`, but for Markdown.

![Markdown Format Demo](https://github.com/shurcooL/atom-markdown-format/blob/master/Demo.gif?raw=true)

Note that `markdownfmt` works with pure Markdown files. If you want to use it with Markdown files that have front matter, consider one of [alternatives](#alternatives) that supports that.

Installation
------------

```bash
go get -u github.com/tianon/markdownfmt
```

Add `$GOPATH/bin` to your `$PATH` or copy `$GOPATH/bin/markdownfmt` to your `$PATH`.

Usage
-----

```
usage: markdownfmt [flags] [path ...]
  -d=false: display diffs instead of rewriting files
  -l=false: list files whose formatting differs from markdownfmt's
  -w=false: write result to (source) file instead of stdout
```

With Docker CLI
---------------

Using diff mode:

```sh
docker run -it -v /home/user/repo/content.md:/data/content.md:ro --rm tianon/markdownfmt markdownfmt -d /data/content.md
```

Using write mode:

```sh
docker run -it -v /home/user/repo/content.md:/data/content.md:rw --rm tianon/markdownfmt markdownfmt -w /data/content.md
```

Editor Plugins
--------------

-	[vim-markdownfmt](https://github.com/moorereason/vim-markdownfmt) for Vim.
-	[emacs-markdownfmt](https://github.com/nlamirault/emacs-markdownfmt) for Emacs.
-	Built-in in Conception.
-	[markdown-format](https://atom.io/packages/markdown-format) for Atom (deprecated).
-	[markdownfmt](https://marketplace.visualstudio.com/itemdetails?itemName=AnmolSinghJaggi.vscode-markdownfmt) for Visual Studio Code.
-	Add a plugin for your favorite editor here?

Alternatives
------------

-	[`mdfmt`](https://github.com/moorereason/mdfmt) - Fork of `markdownfmt` that adds front matter support.
-	[`tidy-markdown`](https://github.com/slang800/tidy-markdown) - Project with similar goals, but written in JS and based on a slightly different [styleguide](https://github.com/slang800/markdown-styleguide).

License
-------

-	[MIT License](https://opensource.org/licenses/mit-license.php)
