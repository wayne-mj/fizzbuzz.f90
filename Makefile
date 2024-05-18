FC=gfortran
MODULES=./Modules
FIZZ=fizzbuzz
#FIZZ_MOD=fizzbuzz_mod


all: clean fizz

fizz: $(FIZZ).f90 
	[ ! -e $(MODULES) ] && mkdir -p $(MODULES)
# $(FC) -c -J$(MODULES) $(FIZZ_MOD).f90
	$(FC) -c -I$(MODULES) $(FIZZ).f90	 
	$(FC) -o $(FIZZ) $(FIZZ).o 

clean:
	rm -rf $(FIZZ) $(FIZZ).o  $(MODULES) *.mod

