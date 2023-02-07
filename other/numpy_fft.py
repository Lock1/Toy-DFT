import numpy

size   = int(input())

matrix = numpy.array([[0 for _ in range(size)] for _ in range(size)])

for i in range(size):
    for j, element in enumerate(input().split(" ")):
        if element != "":
            matrix[i, j] = float(element) 

result = numpy.fft.fft2(matrix) / size**2

print(numpy.average(result))
