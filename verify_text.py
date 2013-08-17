import sys

if len(sys.argv) < 2:
    print "usage: python verify_text.py TEXT"
    sys.exit(1)

counts = {
    "A": 0,
    "B": 0,
    "C": 0,
    "D": 0,
    "E": 0,
    "F": 0,
    "G": 0,
    "H": 0,
    "I": 0,
    "J": 0,
    "K": 0,
    "L": 0,
    "M": 0,
    "N": 0,
    "O": 0,
    "P": 0,
}

expected = {
    "A": 1,
    "B": 1,
    "C": 2,
    "D": 2,
    "E": 2,
    "F": 3,
    "G": 3,
    "H": 5,
    "I": 6,
    "J": 6,
    "K": 7,
    "L": 9,
    "M": 10,
    "N": 12,
    "O": 14,
    "P": 17,
}

for c in sys.argv[1]:
    counts[c] += 1

print counts == expected
