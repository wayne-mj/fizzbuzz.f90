FC=gfortran
FFLAGS=-O3 -Wall -Wextra
SRC=fizzbuzz.f90
OBJ=${SRC:.f90=.o}

%.o: %.f90
	$(FC) $(FFLAGS) -o $@ -c $<

fizzbuzz: $(OBJ)
	$(FC) $(FFLAGS) -o $@ $(OBJ)

clean:
	rm -f *.o *.mod fizzbuzz
