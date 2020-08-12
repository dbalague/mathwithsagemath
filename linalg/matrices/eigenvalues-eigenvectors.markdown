---
layout: page
permalink: /linalg/matrices/eigvvs/
---
**Table of contents**
* Table of contents
{:toc}

## Definition

<div style="border:3px solid; padding:20px">
<b>Definition. (Eigenvalues and Eigenvectors)</b> An <b>eigenvector</b> of an \(n\times n\) matrix \(A\) is a nonzero vector \(\mathbf{x}\) such that \(A\mathbf{x}=\lambda \mathbf{x}\) for some scalar \(\lambda\). A scalar \(\lambda\) is called an <b>eigenvalue</b> of \(A\) if there is a nontrivial solution \mathbf{x} of \(A\mathbf{x}=\lambda\mathbf{x}\); such an \(\mathbf{x}\) is called an <u>eigenvector corresponding to \(\lambda\)</u>.
</div>
<br>

<b><font color="green">EXAMPLE 1.</font></b> The vector $$\mathbf{v}=\begin{bmatrix}1\\1\end{bmatrix}$$ is an eigenvector of eigenvalue $$-2$$ for the matrix $$A=\begin{bmatrix} -1&3\\3&-1\end{bmatrix}$$.

Indeed, if we multiply the matrix and the vector we obtain

$$
A\mathbf{v} = \begin{bmatrix} -1&3\\3&-1\end{bmatrix} \cdot \begin{bmatrix}1\\1\end{bmatrix} = \begin{bmatrix}2\\2\end{bmatrix} = 2 \begin{bmatrix}1\\1\end{bmatrix} = 2\mathbf{v}
$$

<div align="center">
<hr style="width:50%">
</div>
<br>

## Finding Egienvalues and Eigenvectors
### Eigenvectors

We can observe that $$A\mathbf{x}=\lambda\mathbf{x}$$ is equivalent to 

$$
\begin{equation}
(A-\lambda I)\mathbf{x} = \mathbf{0},
\label{eq:eigs}
\end{equation}
$$

where $$I$$ is the identity matrix. Indeed, $$\lambda I \mathbf{x} =\lambda \mathbf{x}$$.

Therefore, finding the eigenvalues and associated eigenvectors of a matrix is equivalent to finding nontrivial solutions to the system of equations described in \eqref{eq:eigs}.

**NOTE:** While a vector solution $$\mathbf{x}$$ cannot be zero, the corresponding eigenvalue $$\lambda$$ could be zero.

<div style="border:3px solid; padding:20px">
<b>Definition. (Eigenspace)</b> The set of <u>all</u> solutions to \eqref{eq:eigs} is just the <i>null space</i> of the matrix \(A-\lambda I\). This set is a subspace of \(\mathbb{R}^n\) and is called the <b>eigenspace</b> of \(A\) corresponding to \(\lambda\). The eigenspace consists of the zero vector and all the eigenvectors corresponding to \(\lambda\).
</div>
<br>

<b><font color="green">EXAMPLE 2.</font></b> The matrix $$A=\begin{bmatrix}
-2 & 3 & -2 \\
1 & 0 & -2 \\
1 & 3 & -5
\end{bmatrix}$$ has $$-3$$ as one of its eigenvalues. Let's find the corresponding eigenspace. First, we calculate $$A-(-3)I$$, 

$$
A-(-3)I = A+3I = \begin{bmatrix} 1 & 3 & -2 \\
1 & 3 & -2 \\
1 & 3 & -2 \end{bmatrix}.
$$

Performing basic row operations (R2-1$$\times$$R1) and (R3-1$$\times$$R1) we obtain the matrix

$$
\begin{bmatrix}1 & 3 & -2 \\
0 & 0 & 0 \\
0 & 0 & 0\end{bmatrix}.
$$

Now, considering $$(A-\lambda I)\mathbf{x}=\mathbf{0}$$, and $$\mathbf{x}=\begin{bmatrix}x_1\\x_2\\x_3\end{bmatrix}$$ we obtain the equation 
\begin{equation}
x_1+3x_2-2x_3=0. 
\label{eq:eigvec_Ex2}
\end{equation}

 Isolating $$x_1$$ in \eqref{eq:eigvec_Ex2}, we obtain

$$
\mathbf{x} = \begin{bmatrix}
-3x_2+2x_3 \\
x_2\\
x_3
\end{bmatrix} = \begin{bmatrix}-3x_2\\x_2\\0\end{bmatrix} + \begin{bmatrix}2x_3\\0\\x_3\end{bmatrix}=x_2\begin{bmatrix}-3\\1\\0\end{bmatrix} + x_3\begin{bmatrix}2\\0\\1\end{bmatrix}
$$

with $$x_2$$ and $$x_3$$ free variables. So the eigenspace for $$\lambda=-3$$ is a subspace of dimension $$2$$ in $$\mathbb{R}^3$$ with basis

$$
\left\lbrace \begin{bmatrix}-3\\1\\0\end{bmatrix}, \begin{bmatrix}2\\0\\1\end{bmatrix} \right\rbrace
$$

<div align="center">
<hr style="width:50%">
</div>
<br>

The method used in the previous example provides a general method for finding eigenvectors and eigenspaces when the eigenvalues are known. But, how do we find eigenvalues?

### Eigenvalues

To find the eigenvalues, we need to find the nontrivial solutions to equation \eqref{eq:eigs}. So we need to determine those values of $$\lambda$$ for which equation \eqref{eq:eigs} has a nontrivial solution.

This problem is equivalent to finding those values of $$\lambda$$ for which the matrix $$(A-\lambda I)$$ is singular (or its inverse does not exist). That is, we need to find those values of $$\lambda$$ such that 

\begin{equation}
\text{det}(A-\lambda I)=0.
\label{eq:charac_eq}
\end{equation}

This scalar equation is called **characteristic equation**.

<div style="border:3px solid; padding:20px">
\(\lambda\) is an eigenvalue of an \(n\times n\) matrix \(A\) if and only if \(\lambda\) satisfies the characteristic equation \(\text{det}(A-\lambda I)=0\).
</div>
<br>



<b><font color="green">EXAMPLE 3.</font></b> In the previous example, we saw that the matrix

$$A=\begin{bmatrix}
-2 & 3 & -2 \\
1 & 0 & -2 \\
1 & 3 & -5
\end{bmatrix}$$ 

has $$-3$$ as one of its eigenvalues. But what are all the eigenvalues of $$A$$?

We will use the characteristic equation \eqref{eq:charac_eq}.

First we compute $$A-\lambda I$$:

$$
A-\lambda I = \begin{bmatrix} -{\lambda} - 2 & 3 & -2 \\
1 & -{\lambda} & -2 \\
1 & 3 & -{\lambda} - 5\end{bmatrix},
$$

and then we find the determinant:

$$
\text{det}(A-\lambda I) = -{\lambda}^{3} - 7 \, {\lambda}^{2} - 15 \, {\lambda} - 9
$$

Since we know that $$-3$$ is a zero of the equation above, we can factor $$\lambda+3$$:

$$
\begin{align*}
\text{det}(A-\lambda I) &= (\lambda+3)(-\lambda^2 - 4\lambda - 3) \\
&= -(\lambda+3)^2(\lambda+1)
\end{align*}
$$

So we can see that the eigenvalues are $$\lambda=-3$$ and $$\lambda=-1$$.

<div align="center">
<hr style="width:50%">
</div>
<br>