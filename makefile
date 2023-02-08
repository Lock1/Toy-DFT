OUTPUT_FOLDER = bin

all: serial parallel

parallel:
# TODO : Parallel compilation

serial:
	gcc src/serial/serial.c -o $(OUTPUT_FOLDER)/serial -lm

test_generate_case:
	python3 other/tc_gen.py 128 > $(OUTPUT_FOLDER)/generated.txt

test_numpy: 
	python3 other/numpy_fft.py < $(OUTPUT_FOLDER)/generated.txt > $(OUTPUT_FOLDER)/np_res.txt

test_serial: serial
	./$(OUTPUT_FOLDER)/serial < $(OUTPUT_FOLDER)/generated.txt > $(OUTPUT_FOLDER)/serial_res.txt