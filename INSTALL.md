Mirage has been tested on:

* Debian Squeeze x86_64 and x86_32
* MacOS X 10.6 Snow Leopard x86_64
* MacOS X 10.5 Snow Leopard x86_32

To build it, you must first:

1. Bootstrap the compiler toolchain
2. Build the tools
3. Build the core libraries

Bootstrap
---------

You will need at least gcc, m4 and patch installed before you build
the bootstrap toolchain.

Pick where you want your bootstrap toolchain to be installed. This
defaults to ~/mir-inst, and you can change it by setting the PREFIX
variable to all the make targets.

Before starting, add the $PREFIX/bin to head of your PATH variable
and make sure it is active in your build shell.

    make PREFIX=<location> bootstrap

Tools
-----

This installs the build tools and syntax extensions into the install PREFIX.

    make PREFIX=<location> tools

The tools include the 'mir' build utility, a custom version of
ocamldsort to help with dependency management, and the MPL protocol
specification meta-compiler.

Libraries
---------

    make

This will build the OCaml libraries and the Xen custom runtime, if
appropriate for the build platform.  You require 64-bit Linux to
compile up Xen binaries (32-bit will not work).

Build an application
--------------------

For now, the mir tool must be run in the mirage.git base directory
only.

Build a Xen kernel in-tree:

    mir -os xen tests/basic/sleep

output will be in tests/basic/sleep/mirage-os.gz

Build a UNIX binary in-tree:

    mir -os unix tests/basic/sleep

output will be in tests/sleep/mirage-unix

Build a Javascript bundle in-tre:

    mir -os browser tests/basic/sleep

output will be in tests/sleep/app.html

This runs a simple interlocking sleep test which tries out the
console and timer support for the various supported platforms.

Coming soon: I/O :-)

Notes
-----

+ `mir` currently only works from within tree, i.e., the root
  directory of your copy of the git repo.

+ Currently, lib/Makefile.common defines a BUILD_OS variable that
  is set to either `unix` or `xen`. This decides which version of the
  standard OS library to compile the other dependent libraries against
  (e.g. the networking library). This is temporary until ocamlbuild
  integration is finished, so if you want to switch between OS backends,
  do a `make clean` in `lib/` and change the BUILD_OS variable.

+ Errors about "inconsistent assumptions over types" are likely due to
  mismatches between parts of the built libraries. Just do a `make clean`
  in `lib/` and `make` to get a fresh build. Against, this is temporary
  until a proper build system is in place.

