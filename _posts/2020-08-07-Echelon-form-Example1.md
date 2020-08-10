---
layout: post
title:  "Finding the Echelon Form of a Matrix Example 1"
date:   2020-08-07 13:43:59 -0400
author: daniel_balague
categories: Linear Algebra Matrix Echelon
---
# Example 1

In this example we will find the echelon form of the matrix

$$A = \begin{bmatrix}
1 & 2 & 3 & 1\\
2 & 3 & 3 & 3\\
3 & 10 & 12 & 12
\end{bmatrix}$$


```python
A = matrix([[1, 2, 3, 1],\
            [2, 3, 3, 3],\
            [3,10,12,12]])
```

The first step will subtracting twice the first row to the second (R2 - 2$$\times$$ R1).

**IMPORTANT NOTE 1:** When performing row operations, the original matrix is lost.

**IMPORTANT NOTE 2:** Remember that indexing starts at 0.


```python
A.add_multiple_of_row(1,0,-2)
```


```python
A
```




    [ 1  2  3  1]
    [ 0 -1 -3  1]
    [ 3 10 12 12]



Then we subtract three times the first row to the third (R3-3$$\times$$R1)


```python
A.add_multiple_of_row(2,0,-3)
```
If we look at the matrix `A` we can see how it changed:

```python
A
```




    [ 1  2  3  1]
    [ 0 -1 -3  1]
    [ 0  4  3  9]




```python
A.add_multiple_of_row(2,1,4)
```
Inspecting the matrix `A` we can see the final result.

```python
A
```




    [ 1  2  3  1]
    [ 0 -1 -3  1]
    [ 0  0 -9 13]


