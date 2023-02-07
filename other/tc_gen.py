import random
size = 64

print(size)
for i in range(size):
    line = ""
    for j in range(size):
        line += f"{random.randint(0, 1 << 24)} "
    print(line)