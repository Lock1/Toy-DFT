OUTPUT_FOLDER = bin

all: serial parallel

parallel:
# TODO : Parallel compilation

serial:
	g++ src/serial/serial.cpp -o $(OUTPUT_FOLDER)/serial

test_generate_case:
	python3 other/tc_gen.py > $(OUTPUT_FOLDER)/generated.txt

test_numpy: test_generate_case
	python3 other/numpy_fft.py < $(OUTPUT_FOLDER)/generated.txt > $(OUTPUT_FOLDER)/np_res.txt

test_serial: test_generate_case serial
	./$(OUTPUT_FOLDER)/serial < $(OUTPUT_FOLDER)/generated.txt > $(OUTPUT_FOLDER)/serial_res.txt