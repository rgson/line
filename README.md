# `line`

`line` is a small utility program to extract specific lines from text files.

## Usage
```
Usage: line N[-X][+Y] [FILE...]

N    Extract line number N
X    Include X preceding lines
Y    Include Y following lines
```

If no `FILE` is given, input is read from `stdin`.

## Example
```
> cat foo.txt

Alfa
Bravo
Charlie
Delta
Echo

> line 3 foo.txt

Charlie

> line 3+1 foo.txt

Charlie
Delta

> line 3+1-2 foo.txt

Alfa
Bravo
Charlie
Delta
```
