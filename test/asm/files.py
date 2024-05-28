import os
import const


def build_reference_directories(folder='ref'):
    if not os.path.exists(f"test/asm/{folder}"):
        os.mkdir(f"test/asm/{folder}")

    for c in const.COMPILER:
        if not os.path.exists(f"test/asm/{folder}/{c}"):
            os.mkdir(f"test/asm/{folder}/{c}")

        for a in const.ARCH:
            if not os.path.exists(f"test/asm/{folder}/{c}/{a}"):
                os.mkdir(f"test/asm/{folder}/{c}/{a}")



if __name__ == '__main__':
    build_reference_directories()