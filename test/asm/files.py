import os
import const


def build_reference_directories(folder='test/asm/ref'):
    if not os.path.exists(folder):
        os.mkdir(f"{folder}")

    for c in const.COMPILER:
        if not os.path.exists(f"{folder}/{c}"):
            os.mkdir(f"{folder}/{c}")

        for a in const.ARCH:
            if not os.path.exists(f"{folder}/{c}/{a}"):
                os.mkdir(f"{folder}/{c}/{a}")


def remove_reference_directories(folder='test/asm/ref'):
    os.system(f"rm -rf {folder}/*")


def reset(folder='test/asm/ref'):
    os.system(f"rm -rf {folder}/*")



if __name__ == '__main__':
    build_reference_directories()