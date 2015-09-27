# markdown.lua

[![Build Status](https://travis-ci.org/mpeterv/markdown.png?branch=master)](https://travis-ci.org/mpeterv/markdown)
[![Coverage Status](https://coveralls.io/repos/mpeterv/markdown/badge.svg?branch=master)](https://coveralls.io/r/mpeterv/markdown?branch=master)

This is an implementation of the popular text markup language Markdown in pure Lua.
Markdown can convert documents written in a simple and easy to read text format
to well-formatted HTML. For a more thorough description of Markdown and the Markdown
syntax, see http://daringfireball.net/projects/markdown/.

The original Markdown source is written in Perl and makes heavy use of advanced
regular expression techniques (such as negative look-ahead, etc) which are not available
in Lua's simple regex engine. Therefore this Lua port has been rewritten from the ground
up. It is probably not completely bug free. If you notice any bugs, please report them using
GitHub issues. A unit test that exposes the error is helpful.

`markdown.lua` has been written by Niklas Frykholm ([original](http://www.frykholm.se/files/markdown.lua)).
This version has been updated to run under Lua 5.2 and Lua 5.3 in addition to Lua 5.1.

## Usage

```lua
local markdown = require "markdown"
markdown(source)
```

`markdown` module returns a single function which applies the Markdown transformation to the
specified string. For compatibility it is also set as a global.

`markdown.lua` can also be used directly from the command line:

```
lua markdown.lua test.md
```

Creates a file `test.html` with the converted content of `test.md`. Run:

```
lua markdown.lua -h
```

For a description of the command-line options.

## Installation

Simply copy `markdown.lua` into your directory for Lua libraries. Alternatively,
use [LuaRocks](https://luarocks.org/) and run `[sudo] luarocks install markdown`.

## Miscellaneous

`markdown.lua` uses the same license as Lua, the MIT license.

An alternative Markdown implementation is [lua-discount](http://asbradbury.org/projects/lua-discount/).
It is faster than `markdown.lua`, at the cost of being written in C.
