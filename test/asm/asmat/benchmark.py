import test.asm.asmat as asmat

options = [ "", "-g", "-v", "-d"]



for i in [1, 2, 4, 8, 16, 24, 32]:
    asmat.run(options + ["-j", f"{i}"])


# Generation
{
    1: 35.33,
    2: 18.31,
    4: 11.83,
    8: 11.07,
    16: 11.92,
    24: 11.51,
    32: 10.53
}

# Validation
{
    1: 34.02,
    2: 18.92,
    4: 12.02,
    8: 11.11,
    16: 10.73,
    24: 10.09,
    32: 10.36
}