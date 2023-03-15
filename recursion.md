# Recursive Definition

## Mathematical Symbols

$x \in X$

$X \cap Y$

$X \cup Y$

$ \frac{x + y}{2} $

## Example 1. Recursive Definition of Factorial

I. **Basis:** f(0)=1

II. **Recursive Step:** If f(n)=x then f(n+1)=f(n)*(n+1)

III. **Closure:** f(n)=x only if it can be obtained from the base case using a finite number of applications of the recursive step

## Example 2: Set $X = \{3, 6, 12, 24...\}$

I. **Basis:** $3 \in X$

II. **Recursive Step:** If $n \in X$ then $2n \in X$

III. **Closure:** $n \in X$ only if it can be obtained from the base case using a finite number of applications of the recursive step

# Inductive Demonstrations

## Example 1: Proof that in the LT relation: [i,j], the property i < j always applies

I. **Basis:** [0,1] 0 < 1

II. **Inductive Hypothesis:** Assume that $x < y$ for all elements [x,y]$\in LT_n$

III. **Inductive Step:** For values [i,j] $\in LT_{n+1}$

[i,j] = [x,s(y)]

[i,j] = [s(x),s(y)]

$\square$ 

## Example 2: Proof of addition function

I. **Basis:** m + 0 = m

II. **Inductive Hypothesis:** Assume that for any number k, it holds that m+s(k)=s(m + k)

III. **Inductive Step:** Demonstrate that the same works for (k+1) 

m + s(k + 1) =s(m + (k + 1))

m + s(s(k)) = s(m + k (k + 1))

s(m + s(k)) = s(m + (k + 1))

s(m + (k + 1)) = s(m + (k + 1))

$\square$  

## Example: Gauss 

Demonstrate $ \sum_{i = 0}^{n}i = \frac{n(n+1)}{2}$

I. **Basis:** If $n = 0$ then $\frac{0(0+1)}{2} = \frac{0}{2} = 0$

II. **Inductive Hypothesis:** If $n = k$ then it holds that

 $ \sum_{i = 0}^{n}i = \frac{n(n+1)}{2}$

III. **Inductive Step:** For $n = (k+1)$

$ \sum_{i = 0}^{(k+1)}i = \frac{(k+1)((k+1)+1)}{2}$

$ \sum_{i = 0}^{(k+1)}i + (k+1) = \frac{(k+1)((k+1)+1)}{2}$

$ \frac{k(k+1)}{2} + (k+1) = \frac{(k+1)((k+1)+1)}{2}$

$ \frac{k(k+1)}{2} + \frac{2(k+1)}{2} = \frac{(k+1)((k+1)+1)}{2}$

$ \frac{k(k+1)}{2} + \frac{2(k+1)}{2} = \frac{(k+1)((k+1)+1)}{2}$

$ \frac{k(k+1)+2(k+1)}{2} = \frac{(k+1)((k+1)+1)}{2}$

$ \frac{(k+1)(k+2)}{2} = \frac{(k+1)((k+1)+1)}{2}$

$ \frac{(k+1)(k+1+1)}{2} = \frac{(k+1)((k+1)+1)}{2}$

$ \frac{(k+1)((k+1)+1)}{2} = \frac{(k+1)((k+1)+1)}{2}$


