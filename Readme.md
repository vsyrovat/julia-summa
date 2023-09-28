# Sum of numbers with extra logic

## The Task

There are list of values of any type. It's necessary to design a function that satisfies the following requirements:

- if all values are numbers (integers of float or string representation of int/float) then the function should return their arithmetic sum;
- values can be nested into tuples or lists;
- if at less one value is not number then the function should return list of error argument positions.

See also [test/runtests.jl](test/runtests.jl).

## The solution

[src/Summa.jl](src/Summa.jl).

## How to run

```bash
make test
```
