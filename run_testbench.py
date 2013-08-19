from subprocess import Popen, PIPE

input_str = ""

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
            stdout, stderr = p.communicate(encoded)

            # print stdout.strip() == input_str
            
            if not stdout.strip() == input_str:
                print "FAIL"
                # print input_str
                # print stdout.strip()

            input_str = ""

    fin.close()
