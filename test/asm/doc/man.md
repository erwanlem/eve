# ATP manual

## Name

atp - Assembly Testing Program

## Description

**ATP** is a testing tool made for checking assembly code efficency. This tool offers two main actions: **generation** and **validation**.
The generation phase will generate assembly code for every compilers and architectures. Then this code is stored in a reference folder.
The validation phase will compare the assembly code generate by the current library version with the assembly code previouly saved (in the reference folder). 


## Options

**-c** *compilers*
$\,\,\,\,\,\,\,\,\,$ The code is only generated and tested for the given compilers.

**-d** $\,\,\,\,$ Deep generation. When generating assembly this option will replace existing files even though they contain already assembly code. Enable this option when new types are append in config files (otherwise reference files are not changed if they already exist).

**-g** $\,\,\,\,$ Generation mode. Generates assembly code and stores it in `ref`. Without this option, the default mode is validation.

**-input** *files*
$\,\,\,\,\,\,\,\,\,$ Define your own input files. Without this option all config files are used. The given file(s) must exist in folder `config`. When generating, it only generates those files. When validating, it only compare those files.

**-l** $\,\,\,\,$ Log. Generates a log file giving details about errors that occured during the validation. Two types of errors can be described: *comparison errors* that occured when assembly code doesn't correspond and *missing reference* that occured when a function doesn't have a reference file.

**-m** *architectures*
$\,\,\,\,\,\,\,\,\,$ The code is only generated and tested for the given architectures.

**-r** $\,\,\,\,$ Raises exception. This option interrupts the testing process if there is an assembly mismatch error. Useless for generation.

**-ref** *reference_path*
$\,\,\,\,\,\,\,\,\,$ Defines a custom path for the reference folder. When generating it changes the location of the stored files. When validating it changes the place we get the reference files.

**-reset** $\,\,\,\,$ Clear the `ref` directory.

**-t** $\,\,\,\,$ Keeps temporary files after the process. Temporary files are files used to produce assembly code:
- tmp.cpp : Contains generated cpp functions
- tmp.o : Compiled file
- tmp.txt : Contains assembly code extracts from tmp.o.

**-v** $\,\,\,\,$ Verbose. Displays information in the command line.