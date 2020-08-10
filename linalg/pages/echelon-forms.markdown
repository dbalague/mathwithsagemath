---
layout: page
permalink: /linalg/echelon/
---

**Table of contents**
* Table of contents
{:toc}

# Row Echelon Form of a Matrix

<div style="border:3px solid;padding:20px">
  <b> Definition.</b> A matrix is in row echelon form if it has the following three properties:
  <ol type="a">
    <li> All nonzero rows are above any row of all zeros</li>
    <li> Each leading entry (pivot) is in a column to the right of the leading entry in previous row.</li>
    <li> All entries below a leading entry are zero.</li>
  </ol>
</div>
<br>
The following are two examples of row echelon marices:

$$
  \left[\begin{array}{rrr|r}
    \blacksquare & \ast & \ast & \ast\\
    0 & \blacksquare & \ast & \ast \\
    0 & 0 & 0 & 0 \\
    0 & 0 & 0 & 0 
  \end{array}\right]\qquad\qquad
  \left[\begin{array}{rrrrrrr|r}
    0 & \blacksquare & \ast & \ast & \ast & \ast & \ast & \ast\\
    0 & 0 & 0 & \blacksquare & \ast & \ast & \ast & \ast\\
    0 & 0 & 0 & 0 & \blacksquare & \ast & \ast & \ast \\
    0 & 0 & 0 & 0 & 0 & 0 & \blacksquare & \ast
  \end{array}\right]
$$

# Reduced Row Echelon Forms

<div style="border:3px solid;padding:20px">
  <b> Definition.</b> A matrix is in <u>reduced row echelon form</u> if it has the following three properties:
  <ol type="a">
    <li> It is in echelon form.</li>
    <li> The pivot of each nonzero row is \(1\).</li>
    <li> Each leading \(1\) is the only entry in its column.</li>
  </ol>
</div>
<br>

The following are two examples of reduced row echelon forms:

$$
  \left[\begin{array}{rrr|r}
    1 & \ast & \ast & \ast\\
    0 & 1 & \ast & \ast \\
    0 & 0 & 0 & 0 \\
    0 & 0 & 0 & 0 
  \end{array}\right]\qquad\qquad
  \left[\begin{array}{rrrrrrr|r}
    0 & 1 & \ast & \ast & \ast & \ast & \ast & \ast\\
    0 & 0 & 0 & 1 & \ast & \ast & \ast & \ast\\
    0 & 0 & 0 & 0 & 1 & \ast & \ast & \ast \\
    0 & 0 & 0 & 0 & 0 & 0 & 1 & \ast
  \end{array}\right]
$$

# Echelon Forms in SageMath

To obtain a row echelon form of a matrix using SageMath, we will perform row operations. The matrix class has a specific function for it.

Supose that we have a matrix stored in the variable `A`. Then we can use the following operation:

``` python
A.add_multiple_of_row(i,j,a)
```

This means `a*(row j) + row i`.

**IMPORTANT NOTE:** Remember that in SageMath (and Python) indexing starts at 0.

For example, if we want to add 3 times the first row to the third (R3+3$$\times$$R1) we would use the command

```python
A.add_multiple_row(2,0,3)
```
So `i=2` corresponds to the third row, `j=0` corresponds to the first row, and `a=3` is the multiplier.

### The `echelon_form()` function in SageMath

One can also use
``` python
A.echelon_form()
```
However, this function does not return the echelon form but the reduced echelon form.

Be careful!!

# SageMath Examples

Check the following examples on how to perform the operations and obtain the echelon forms.

- [Example 1](mathwithsagemath/linear/algebra/matrix/echelon/2020/08/07/Echelon-form-Example1.html)