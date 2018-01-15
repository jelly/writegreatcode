# Numeric Representation

A number is an intangible, abstract concept. It is an intellectual device that we use to denote a
quantity. For example the value 100 can be represented in several different representations:

| Number              | Representation
|---------------------|--------------------------------------
| 100                 | decimal representation
| C                   | Roman numeral representation
| 64<sub>16</sub>     | base 16/hexadecimal representation
| 1100100<sub>2</sub> | base two/binary representation
| one hundred         | English representation

# Numbering Systems

A numbering system is a mechanism we use to represent numeric values. Most often the decimal
numbering system is used (base 10). 

The decimal positional notation (base 10) represents numbers using strings of Arabic numerals.

# Radix (Base)

The radix or base is the number of unique digits, including zero, used to represent numbers in a
positional numering system. The radix is usually written as 100<sub>8</sub> where 8 is the base.

Example converting 123<sub>8</sub> to decimal representation.

1 x 8<sup>2</sup> + 2 x 8<sup>1</sup> + 3 x 8<sup>0</sup>

64 + 16 + 3 = 83

To create a base-n numbering system, you need n unique digits. The smallest possible radix is two.
For bases greater then ten, the conversion is to use the alphabetic digits a..z<sup>1</sup> or A..Z
(ignoring case) for digits greater than nine. This scheme supports numbering systems through base 36
(10 numeric digits and 26 alphabetic digits).

# The Binary Numbering System

The binary numbering system is also known as base-2. Converting binary to decimal:

11001010<sub>2</sub>

1 x 2<sup>7</sup> + 1 x 2<sup>6</sup> + 0 x 2<sup>5</sup> + 0 x 2<sup>4</sup> + 1 x 2<sup>3</sup> +
0 x 2<sup>2</sup> + 1 x 2<sup>1</sup> + 0 x 2<sup>0</sup>

128 + 64 + 8 + 2

Converting decimal to binary:

1. If the number is even, emit a zero. If the number is odd, emit a one.
2. Divide the number by two and throw away any fractional component or remainder
3. If the quotient is zero, the algorithm is complete
4. If the quotient is not zero and the number is odd, insert a one before the curent string. if the
   quotient is not zero and the number is even, prefix your binary string with a zero.
5. Go back to step 2 and repeat.

Python example
```
def tobinary(decimal):
    binary = ''
    while True:
        if decimal % 2 == 0:
            binary = '0' + binary
        else:
            binary = '1' + binary

        decimal = decimal // 2
        if decimal == 0:
            break
    return binary
```

# The Hexadecimal Numbering System

Hexadecimal representation is very compact and it's easy to convert between binary and hexadecimal.
Hexadecimal is base 16. Converting between hexadecimal and binary representation.

| Binary | Hexadecimal
|--------|------------
| 0000   | 0
| 0001   | 1
| 0010   | 2
| 0011   | 3
| 0100   | 4
| 0101   | 5
| 0110   | 5
| 0110   | 6
| 0111   | 7
| 1000   | 8
| 1001   | 9
| 1010   | A
| 1011   | B
| 1100   | C
| 1101   | D
| 1110   | E
| 1111   | F

# The Octal (Base-8) Numbering System

Octal (base-8) representation was common in early computer systems.

| Binary | Octal
|--------|------
| 000    | 0
| 001    | 1
| 010    | 2
| 011    | 3
| 100    | 4
| 101    | 5
| 110    | 6
| 111    | 7

# Numeric/String Conversions
