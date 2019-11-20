[![Tsoding](https://img.shields.io/badge/twitch.tv-tsoding-purple?logo=twitch&style=for-the-badge)](https://www.twitch.tv/tsoding)
[![Build Status](https://travis-ci.org/tsoding/boomer.svg?branch=master)](https://travis-ci.org/tsoding/boomer)

# Boomer

Zoomer application for Linux.

- Development is done on https://twitch.tv/tsoding
- Archive of the streams: https://www.twitch.tv/collections/HlRy-q69uBXmpQ

## Quick Start

```console
$ nix-shell   # only for NixOS
$ nimble build -d:release
$ ./boomer
```

## NixOS Overlay

```
$ git clone git://github.com/tsoding/boomer.git /path/to/boomer
$ mkdir -p ~/.config/nixpkgs/overlays
$ cd ~/.config/nixpkgs/overlays
$ ln -s /path/to/boomer/overlay/ boomer
$ nix-env -iA nixos.boomer
```

## References

- https://github.com/nim-lang/x11/blob/bf9dc74dd196a98b7c2a2beea4d92640734f7c60/examples/x11ex.nim
- http://archive.xfce.org/src/xfce/xfwm4/4.13/
- https://www.khronos.org/opengl/wiki/Programming_OpenGL_in_Linux:_GLX_and_Xlib
- https://www.khronos.org/registry/OpenGL-Refpages/gl2.1/xhtml/glXIntro.xml
- https://stackoverflow.com/questions/24988164/c-fast-screenshots-in-linux-for-use-with-opencv

## Support

You can support my work via

- Twitch channel: https://www.twitch.tv/subs/tsoding
- Patreon: https://www.patreon.com/tsoding
