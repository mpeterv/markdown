package = "Markdown"
version = "scm-1"
source = {
   url = "git://github.com/mpeterv/markdown"
}
description = {
   summary = "Markdown text-to-html markup system.",
   detailed = "A pure-lua implementation of the Markdown text-to-html markup system.",
   license = "MIT/X11",
   homepage = "https://github.com/mpeterv/markdown"
}
dependencies = {
   "lua >= 5.1, < 5.4"
}
build = {
   type = "builtin",
   modules = {
      markdown = "markdown.lua"
   },
   copy_directories = {}
}
