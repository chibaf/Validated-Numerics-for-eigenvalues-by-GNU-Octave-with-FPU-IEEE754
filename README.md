# Validated-Numerics-for-eigenvalues-by-GNU-Octave-with-FPU-IEEE754
Validated-Numerics-for-eigenvalues-by-GNU-Octave-with-FPU-IEEE754


## change rounding mode on GNU Octave

build:

% mkoctfile --mex setround.c

usage:
<pre>
setround(-1): round toward downward

setround(0): round to nearest

setround(1): round toward upward

setround(2): round Round toward zero
</pre>

## example

p106 (*)

## Refferences

Using directed rounding in Octave/Matlab (Kai Torben Ohlhus) 

https://siko1056.github.io/blog/2021/12/23/octave-matlab-directed-rounding.html

Linux 数値計算ツール、大石進一、コロナ社、2000年, in japanese   (*)

https://www.coronasha.co.jp/np/isbn/9784339023787/

