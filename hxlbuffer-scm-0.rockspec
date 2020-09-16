-- vim: ft=lua
package = "hxlbuffer"
version = "scm-0"

source = {
   url = "git://github.com/jdonaldson/hxlbuffer.git",
}

description = {
   summary = "mutable string support to lua",
   detailed = [[

hxlbuffer is a haxe-specific C module for lua based on starwing's lbuffer, it
provides mutable string feature to the lua_ language. it has all routines from
lua's string module, add several modify functions. it provides:

    * change the value of buffer without copy it.
    * a pair of full feature pack/unpack functions.

]],
   homepage = "https://github.com/jdonaldson/hxlbuffer",
   license = "MIT/X11",
}

dependencies = {
   "lua >= 5.1",
}

build = {
   copy_directories = {},

   type = "builtin",

   modules = {
      buffer = {
         "hxlbuffer.c",
         "hxlbufflib.c",
      }
   }
}
