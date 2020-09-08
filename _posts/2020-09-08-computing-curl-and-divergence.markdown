---
layout: post
title:  "Computing Divergence and Curl using SageMath"
date:   2020-09-07 22:10:59 -0400
author: daniel_balague
categories: Multivariable Calculus Vector Fields
---

## Computing Divergence and Curl using SageMath

If you do not know what a vector field, Divergence, and Curl are, please follow [this link](/mathwithsagemath/multivarcalc/vectorfields/index.html) for a definition and examples.

### Defining a Vector Field

To define a vector field in SageMath, we use a similar definition as for functions of two or more variables. In this case, we will use an array to store the functions.

For example, if we want to store the vector field 

$$
\mathbf{F} (x,y,z) = xy\,\mathbf{i} + yz\,\mathbf{j} + xyz \,\mathbf{k},
$$

in the variable F, we can use the following:

```python
F(x,y,z) = [ x*y , y*z , x*y*z ]
```

One can evaluate ```F``` by substituting `x`, `y`, and `z` by values.

### Computing the Curl 
To calculate the curl, we can just use
```python
F.curl()
```

which will produce the output
```python
(x, y, z) |--> (x*z - y, -y*z, -x)
```

### Computing the Divergence
We can compute the corresponding divergenve using
``` python
F.div()
```

which will return
```python
(x, y, z) |--> x*y + y + z
```