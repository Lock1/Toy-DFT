import random
import sys
size = int(sys.argv[1])

print(size)
for i in range(size):
    line = ""
    for j in range(size):
        line += f"{random.randint(0, 1 << 8)} "
    print(line)