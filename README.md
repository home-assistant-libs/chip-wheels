## Matter Python Device Controller Wheels

This repository provides the building infrastructure to build Python wheels of
the Matter device controller. It uses the [official project Matter SDK](https://github.com/project-chip/connectedhomeip/)
and builds the Python bindings available at `src/controller/python/`. The
bindings use the official Matter implementation written in C++ as a native
library using ctypes bindings. The `chip-core` wheel contains this native
library. Hence the `chip-core` wheel is a platform specific wheel.

Binary wheels of (tagged) releases and pre-releases for Linux x86-64 and
aarch64/arm64 as well as macOS aarch64/arm64 are available from our Home
Assistant CHIP repositories at:

- [home-assistant-chip-repl](https://pypi.org/project/home-assistant-chip-repl/)
- [home-assistant-chip-core](https://pypi.org/project/home-assistant-chip-core/) (contains the native dependency)
- [home-assistant-chip-clusters](https://pypi.org/project/home-assistant-chip-clusters/)

