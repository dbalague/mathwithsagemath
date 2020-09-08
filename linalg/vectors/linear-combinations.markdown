---
layout: page
permalink: /linalg/vectors/linear-combination/
---

**Table of Contents**

* table of contents
{:toc}

## Linear Combination

<div style="border:3px solid;padding:20px">
  <b> Definition. (Linear combination)</b> Given vectors \(\mathbf{v}_1,\mathbf{v}_2,\dots,\mathbf{v}_k\) in \(\mathbb{R}^n\) and given scalars \(c_1,c_2,\dots,c_k\), the vector \(\mathbf{w}\) defined as 
  
  $$
  \mathbf{w}=c_1\mathbf{v}_1+c_2\mathbf{v}_2+\cdots+c_k\mathbf{v}_k 
  $$

  is called a <u>linear combination</u> of \(\mathbf{v}_1,\mathbf{v}_2,\dots,\mathbf{v}_k\)
  
  the homogeneous equation 


  only has the trivial solution. Otherwise, the set is called <u>linearly dependent</u>.
</div>
<br>
<b><font color="green">EXAMPLE 1.</font></b> The set 
The vector $$\mathbf{v}=\begin{bmatrix}7\\7\\15\end{bmatrix}$$ is a linear combination of the vectors $$\mathbf{v}_1=\begin{bmatrix}2\\3\\4\end{bmatrix}$$ and $$\mathbf{v}_2=\begin{bmatrix}-1\\2\\-3\end{bmatrix}$$ since

$$\mathbf{v} = 3\mathbf{v}_1 -1 \mathbf{v}_2.$$

In this case $$c_1=3$$ and $$c_2=-1$$.

<div align="center">
<hr style="width:50%">
</div>
<br>

## Linear Independence

<div style="border:3px solid;padding:20px">
  <b> Definition. (Linear independence)</b> A set of vectors \(\lbrace\mathbf{v}_1,\mathbf{v}_2,\dots,\mathbf{v}_n\rbrace\) in \(\mathbb{R}^n\) is <u>linearly independent</u> if the homogeneous equation 

  $$
  x_1\mathbf{v}_1+x_2\mathbf{v}_2+\cdots+x_n\mathbf{v}_n = \mathbf{0}
  $$

  only has the trivial solution. Otherwise, the set is called <u>linearly dependent</u>.
</div>
<br>
<b><font color="green">EXAMPLE 2.</font></b> The set 
$$\left\lbrace \begin{bmatrix}2\\0\\-1\end{bmatrix},\begin{bmatrix}-1\\0\\-1\end{bmatrix},\begin{bmatrix}1\\1\\1\end{bmatrix} \right\rbrace$$ is linear independent. We need to check that the system

$$
\begin{align*}
2x_1-x_2+x_3&=0\\
x_3&=0\\
-x_1-x_2+x_3&=0
\end{align*}
$$

has only a trivial solution. Indeed, the second equation provides that $$x_3=0$$. Substituting $$x_3=0$$ into the third and first equation, and isolating $$x_1$$ on the third we have that $$x_1=-x_2$$. Substituting this into the first equation we obtain that $$x_1=0$$ and, from the previous relation, $$x_2=0$$. So the system has a trivial solution.
<div align="center">
<hr style="width:50%">
</div>
<br>