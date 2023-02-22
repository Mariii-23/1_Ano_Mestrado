# Skeleton Benchmark

This is a minimal skeleton benchmark for use in labs in
a database systems course at the U. Minho.

## Workload

Edit Workload.java and add your workload.

## Usage with an IDE

Run Benchmark.main() with arguments such as:

    -d jdbc:postgresql://localhost/mydb -U myuser -P mypass -p -x
    
See Options.java for all options and defaults.

## Usage from the command line

Build with Maven:
    
    $ mvn package
    
Run self-contained jar file with arguments such as:

    java -jar target/benchmark-1.0-SNAPSHOT.jar -d jdbc:posgtresql://localhost/mydb -U myuser -P mypass -p -x
 
Use `--help` to list all options and defaults.
