Install blender dependencies:
  pkg.installed:
    - pkgs:
      - xorg

/tmp/blender.tar.xz:
  file.managed:
    - source: https://ftp.nluug.nl/pub/graphics/blender/release/Blender2.92/blender-2.92.0-linux64.tar.xz
    - mode: 0700
    - user: root
    - group: root
    - skip_verify: True #this is only for the hash of the file, the SSL cert should still be checked

/usr/local/blender-installation:
  archive.extracted:
    - source: /tmp/blender.tar.xz
    - options: "--strip-components=1"
    - enforce_toplevel: False

