#!/bin/bash
#SBATCH --time=1:00
#SBATCH --partition=cpar
###SBATCH --constraint=k20

module load java/17.0.2
LD_LIBRARY_PATH=$LD_LIBRARY_PATH:`pwd`
perf record /share/apps6/java/jdk1.8.0_20/bin/java -Djava.library.path=. -XX:+UnlockDiagnosticVMOptions -XX:+PrintAssembly MULT > MULT.s 
#perf record java -Djava.library.path=. -XX:+UnlockDiagnosticVMOptions -XX:+PrintAssembly MULT > MULT.s 
