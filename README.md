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

  ## code: veig.m

  <pre>
function veig
	format long
	N=4
	A=[1 2 1 2;2 2 -1 1;1 -1 1 1;2 1 1 1]
	[P,D]=eig(A)
	display("down:\n")
	setround(-1)
	V=P*D
	display("up:\n")
	setround(1)
	VV=P*D
	mV=V+0.5*(VV-V)
	rV=mV-V
	display("down:\n")
	setround(-1)
	E=mV*P'+(-rV)*abs(P')-A
	F=P*P'-eye(N)
	display("up:\n")
	setround(1)
	EE=mV*P'+rV*abs(P')-A
	FF=P*P'-eye(N)
	k=max(abs(E),abs(EE))
	k2=max(abs(F),abs(FF))
	e1=norm(k,inf)
	e2=norm(k2,inf)
	e=diag(abs(D)*e2+e1*eye(N))
endfunction
  </pre>
### execution
  <pre>
octave:4> veig
A =

   1   2   1   2
   2   2  -1   1
   1  -1   1   1
   2   1   1   1

P =

   0.748923357994254   0.210979228698070  -0.121260703728667   0.616358183720965
  -0.469640845723899   0.322803962051720   0.586503760643544   0.575541846317392
  -0.389059769133782   0.522902152730568  -0.743965109143618   0.147383008139437
  -0.259198333173496  -0.760170182137799  -0.296352993673307   0.516848547845046

D =

Diagonal Matrix

  -1.465857296632406                   0                   0                   0
                   0  -0.667606283389613                   0                   0
                   0                   0   2.349683534489092                   0
                   0                   0                   0   4.783780045532938

e1 = 1.121325254871409e-14
e2 = 4.262909171870657e-15
e =

   1.746206906318190e-14
   1.405919749737415e-14
   2.122974003888110e-14
   3.160607238102828e-14
  </pre>

## Refferences

Using directed rounding in Octave/Matlab (Kai Torben Ohlhus) 

https://siko1056.github.io/blog/2021/12/23/octave-matlab-directed-rounding.html

Linux 数値計算ツール、大石進一、コロナ社、2000年, in japanese   (*)

https://www.coronasha.co.jp/np/isbn/9784339023787/

