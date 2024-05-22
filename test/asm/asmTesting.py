import sys
import generation
import validation


if __name__ == '__main__':
    argv = sys.argv
    if '-g' in argv:
        deep = '-d' in argv
        tmp = '-t' in argv
        generation.update(deep=deep, keep_tmp=tmp)
    else:
        validation.validate()
