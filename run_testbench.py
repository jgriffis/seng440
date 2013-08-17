from subprocess import Popen, PIPE

fin = open("testbench.txt", "r")

input_str = ""

for line in fin:
    if len(line.strip()) == 0:
        continue

    if input_str == "":
        input_str = line.strip()
    else:
        p = Popen(["./enc"], stdin=PIPE, stdout=PIPE, stderr=PIPE)
        stdout, stderr = p.communicate(input_str + "\n")

        encoded = stdout.strip()

        p = Popen(["./dec"], stdin=PIPE, stdout=PIPE, stderr=PIPE)
        stdout, stderr = p.communicate(encoded)

        print stdout.strip() == input_str

        input_str = ""
