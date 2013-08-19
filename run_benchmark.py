from subprocess import Popen, PIPE
import time

input_str = ""
total_time = 0
cases = 0

for i in range(500):
    fin = open("testbench.txt", "r")

    for line in fin:
        if len(line.strip()) == 0:
            continue

        if input_str == "":
            input_str = line.strip()
        else:
            encoded = line.strip()

            p = Popen(["./dec"], stdin=PIPE, stdout=PIPE, stderr=PIPE)
            start = time.clock()
            stdout, stderr = p.communicate(encoded)
            total_time += time.clock() - start

            # print stdout.strip() == input_str

            if not stdout.strip() == input_str:
                print "FAIL"
            # print input_str
            # print stdout.strip()

            cases += 1

            input_str = ""

    fin.close()

print cases
print total_time
print total_time / cases
