# General Review of the Course

## Recursive Definitions
### a. Recursive defintiion of palindromes on sigma
1. Base:<br> $\lambda \in P$ | $i \in \Sigma, i \in P$, <br> donde P es el conjunto de palindromos <br> ** if base con lambda, puede ser dq 1881; if base con i entonces 18381

2. Recursive step: Para $ u \in P$ y $i \in \Sigma, i u i \in P$
3. Closure: $u \in P$ solo si se puede obtener aplicando el paso recursivo n veces al caso base

** u es la variable que representa lo que ya tengo

### **b. Recursive definition of multiplication, using addition and the succesor operator**

1. **Base:** <br> Si $n = 1$ entonces $m * n = m$, <br> $n = 0$ entonces $m * n = 0$ <br> S(R) donde S es el sucesor y R es cualquier número, o sea --> S(n) = n + 1 <br>
** Ejemplo: <br>
5 x 3 <br>
5 + 5 x 2 <br>
5 + 5 + 5 x 1 <br>
5 + 5 + 5 <br>
2. **Recursive step:** <br>
Si $n > 1$ entonces $m * S(n) = m + (m * n)$

3. **Closure:** <br>
$m * n = t$ solo si puede obtenerse con un número finito de aplicaciones del paso recursivo sobre el caso base


### c. Recursive definition of the strings in $\Sigma = {a,b}$ that contains twice as many $b's$ as $a's$
1. Base: $\lambda \in P$
2. Recursive step: Para $u \in P$ y $u = xyzw$ (u se parte en xyzw; como metemos 3 letras se necesitan 4 espacios)

$ xaybzbw \in P $

$ xbybzaw \in P$

$ xbyazbw \in P$ 

** se parte el string y se meten las combinaciones válidas (abb, bba, bab)

3. Closure: $u \in P$ solo si se puede obtener aplicando el paso recursivo n veces al caso base

## Inductive Hypothesis
### a. Demonstrate that $P = W$ where P is the set of palindromes, and $W = {w \in \Sigma * | w = w^R}$
1. **Base**: <br>
Si $w = \lambda$, $w \in P$, $w^r = \lambda$ $a \in \Sigma$ <br>
$w = a$, $w \in P$, $w^r = a$
$u \in P \rightarrow$ para $a \in \Sigma, aua \in P$
2. **Inductive hypothesis**: <br>
$
### b. Prove that $1 + 2 + 2^2 + ... + 2^n = 2^{n+1} - 1$ for all $n < 0$

## Languages
1. Define a language that begins and ends with $a$ and always alternates between $a$