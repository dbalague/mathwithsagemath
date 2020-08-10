---
layout: post
title:  "Finding Eigenvalues and Eigenvectors Example 1"
date:   2020-08-06 11:36:59 -0400
author: daniel_balague
categories: Linear Algebra Eigenvalues Eigenvectors
---

In this example we will find the eigenvalues and a corresponding eigenvector for each eigenvalue for the matrix

$$
A = \begin{pmatrix}
7 & -5 \\
10 & -8
\end{pmatrix}
$$

First we introducte the matrix and we store it in the variable ```A```
``` python 
A = matrix([[ 7, -5], \
            [10, -8]])
```

## Eigenvalues

To find the eigenvalues we will calulate

$$
    A-\lambda I.
$$

However, in SageMath (as well as in Python), `lambda` is a reserved word. So we will use the letter $$l$$ instead. We store the matrix into the variable `AmlI`: 

``` python
l = var('l', latex_name=r'\lambda')
AmlI = A - l*identity_matrix(2)
```

Here, we have used the function `identity_matrix` with argument `2` to create the corresponding identity matrix.

To find the eigenvalues we need to calculate the determinant of $$A-\lambda I$$, which gives us the characteristic equation. We achieve that with the function `determinant` from the matrix class. We will create the characteristic equation $$p(\lambda)$$.

```python
p(l) = AmlI.determinant()
```
We can check the equation by using the function show.

```python
show(p(l).expand())
```
The output is

$$
\lambda^2+\lambda-6
$$

Finding the zeros of this equation will give us the eigenvalues.

In our case:
- $$\lambda=2$$ is a zero since $$p(2) = 0$$.
- $$\lambda=-3$$ is a zero since $$p(-3) = 0$$.  

The eigenvalues are $$\lambda=2$$, $$\lambda=-3$$.

## Eigenvectors
To find the eigenvectors, we need to solve the system 

$$
(A-\lambda I)\begin{pmatrix}x\\y \end{pmatrix}=\begin{pmatrix}0\\0 \end{pmatrix}
$$

Let's do it!
### Eigenvector with associated eigenvalue $$\lambda=2$$.
We substitue $$\lambda=2$$ into $$A-\lambda I$$ and we will store the result into the variable `L1`:
``` python
L1 = AmlI(l=2)
```
Now we multiply the matrix by the column vector $$\begin{pmatrix}x\\y\end{pmatrix}$$. To do that, we need to create the variable `y`

**NOTE:** Although we call it "column vector", it should be a matrix in SageMath.

``` python
y = var('y')
L1xy = L1*matrix([[x],[y]])
```
If we use the function `show`, we can visualize the matrix `L1xy`:

$$
\begin{pmatrix}
5x-5y\\
10x-10y
\end{pmatrix}
$$

Now we can see that one equation is a multiple of the other. Therefore, we could choose, for example, the first equation

$$
5x-5y=0
$$

And we obtain the line $$y=x$$. Now, subsituting $$y=x$$ into the vector $$\begin{pmatrix}x\\y \end{pmatrix}$$ we have

$$
\begin{pmatrix}x\\y \end{pmatrix} = \begin{pmatrix}x\\x \end{pmatrix} = x \begin{pmatrix}1\\1 \end{pmatrix}
$$

And we can choose $$\mathbf{v}_1=\begin{pmatrix}1\\1 \end{pmatrix}$$ as an eigenvector.

### Eigenvector with associated eigenvalue $$\lambda=-3$$.

We repeat the same procedure above.

We substitue $$\lambda=-3$$ into $$A-\lambda I$$ and we will store the result into the variable `L2`:
``` python
L2 = AmlI(l=-3)
```
Now we multiply the matrix by the column vector $$\begin{pmatrix}x\\y\end{pmatrix}$$. To do that, we need to create the variable `y`

``` python
y = var('y')
L2xy = L2*matrix([[x],[y]])
```
If we use the function `show`, we can visualize the matrix `L2xy`:

$$
\begin{pmatrix}
10x-5y\\
10x-5y
\end{pmatrix}
$$

Now we can see that one equation is a multiple of the other. Therefore, we could choose, for example, the first equation

$$
10x-5y=0
$$

And we obtain the line $$y=2x$$. Now, subsituting $$y=2x$$ into the vector $$\begin{pmatrix}x\\y \end{pmatrix}$$ we have

$$
\begin{pmatrix}x\\y \end{pmatrix} = \begin{pmatrix}x\\2x \end{pmatrix} = x \begin{pmatrix}1\\2 \end{pmatrix}
$$

And we can choose $$\mathbf{v}_2=\begin{pmatrix}1\\2 \end{pmatrix}$$ as an eigenvector.