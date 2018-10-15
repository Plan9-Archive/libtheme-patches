== libtheme patches

this repo contains files to patch software to use libtheme.

- `*.patch`: patches for 9front system software.
- `ext/*patch`: patches for other software outside of 9front.

the following mk targets are available:

- `mk patch`: patch 9front system software for use with libtheme.
- `mk unpatch`: remove the patches.
- `mk rebuild`: rebuild patched 9front system software.
