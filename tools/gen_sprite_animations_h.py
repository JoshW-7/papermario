#! /usr/bin/python3

from sys import argv, path
from pathlib import Path
import os
path.append(os.path.join(os.path.dirname(__file__), "n64splat"))
from splat_ext.PaperMarioNpcSprites import Sprite

if __name__ == "__main__":
    if len(argv) < 4:
        print("usage: gen_sprite_animations_h.py [OUT] [DIR] [ALLDIRS]")
        exit(1)

    _, outfile, sprite_dir, *alldirs = argv

    with open(outfile, "w") as f:
        # get sprite index
        s = alldirs.index(sprite_dir) + 1
        assert s >= 1

        sprite_dir = Path(sprite_dir)

        sprite = Sprite.from_dir(sprite_dir, read_images=False)
        sprite_name = sprite_dir.stem

        f.write(f"#ifndef _SPRITE_{sprite_name.upper()}_H_\n")
        f.write(f"#define _SPRITE_{sprite_name.upper()}_H_\n")
        f.write("\n")
        f.write('#include "types.h"\n')
        f.write("\n")

        f.write(f"#define _NPC_SPRITE_{sprite_name} 0x{s:02X}\n")

        seen_palette_names = set()
        for p, palette_name in enumerate(sprite.palette_names):
            if palette_name not in seen_palette_names:
                seen_palette_names.add(palette_name)
                f.write(f"#define _NPC_PALETTE_{sprite_name}_{palette_name} 0x{p:02X}\n")

        for a, name in enumerate(sprite.animation_names):
            f.write(f"#define _NPC_ANIM_{sprite_name}_{name} 0x{a:02X}\n")

        f.write("\n")
        f.write("#endif\n")
