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

p111 (*)

  Theorem - S. Oish
  
  Let $A$ be a $n\times n$ real symmetric matrix.
  
  WE have a $n\times n$ real symmetric matrix $D$ and a $n\times n$ real matrix $P$ as results.

  We suppose

  $P^t D P = A + E$. $\quad$ $P' P = I + F$

  $E$ and $F$ are real real symmetric matrices.

  If $\| F \|_2 \lt 1$ and $P$ is invertible, $\tilde{\lambda}_i$ and $\lambda_i$ are eigenvalues of $D$ and $A$ respectively that satisfy

  $\tilde{\lambda}_1 \le \cdots \tilde{\lambda}_n$ and $\lambda_1 \le \cdots \le \lambda_n$

  THen we have the following estimation

  $\|\lambda_i - \tilde{\lambda}_i\| \le \|\tilde{\lambda}_i\|\|F\|_2+\|E\|_2$

## Refferences

Using directed rounding in Octave/Matlab (Kai Torben Ohlhus) 

https://siko1056.github.io/blog/2021/12/23/octave-matlab-directed-rounding.html

Linux 数値計算ツール、大石進一、コロナ社、2000年, in japanese   (*)

https://www.coronasha.co.jp/np/isbn/9784339023787/

