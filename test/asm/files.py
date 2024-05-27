import os
import const


def build_reference_directories():
    if not os.path.exists("test/asm/ref"):
        os.mkdir("test/asm/ref")

    for c in const.COMPILER:
        if not os.path.exists(f"test/asm/ref/{c}"):
            os.mkdir(f"test/asm/ref/{c}")

        for a in const.ARCH:
            if not os.path.exists(f"test/asm/ref/{c}/{a}"):
                os.mkdir(f"test/asm/ref/{c}/{a}")



if __name__ == '__main__':
    build_reference_directories()