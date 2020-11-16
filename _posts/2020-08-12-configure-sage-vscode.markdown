---
layout: post
title:  "Configure SageMath in Visual Studio Code (Mac)"
date:   2020-08-12 09:29:59 -0400
author: daniel_balague
categories: VSCode configurations
---

Updated in November 16, 2020

In this updated version I simplified the configuration of SageMath with VSCode.

**Table of contents**
* Table of contents
{:toc}

## Introduction ##
It took me some time to find [this post](https://ask.sagemath.org/question/43240/sagemath-and-vscode/) that explains how to configure SageMath with VSCode. So I will share the instructions with you for configuring it with a Mac. However, in our case, <u>this installation does not require installing any additional Python module. This is the main difference between my instructions for Mac, and the instructions for Mac in the link above.</u>

If you follow the link above, you will find the instructions for Windows as well as the ones for Mac.

In a Linux setting, the configurations is similar to the one for Mac. I actually configured my Ubuntu Linux container to be used with VSCode when used as a Dev Container (I might post about it later).

So let's start!

**Important Note 1:** The instructions require to use the BASH terminal. 

**Important Note 2:** Using this configuration makes SageMath's Python the default version.

## Download and install the software ##

If you do not have SageMath or you do not have Visual Studio Code, please visit the "[Getting the Software](/mathwithsagemath/gettingsoftware)" page and you will find links to download them.

Once you have SageMath and VSCode installed, click on the configuration button on the left pane, then extensions, and if it is not installed, install the [Microsoft Python extension](https://marketplace.visualstudio.com/items?itemName=ms-python.python).

**NOTE.** The extension warns you that the system version of Python is not supported. If you installed a different Python distribution (Conda, for example), there should be no problem. However, this will not be an issue since we are going to use the Python version that comes with SageMath.

## Make SageMath visible (and usable) ##

**NOTE:** This step makes SageMath's Python de default Python.

To make SageMath visible and usable within VSCode, we need to modify our bash profile. The configuration file is located in 
```
/Users/<your user>/.bash_profile
```
Use any editor to add the following lines at the end of the file:

```bash
export SAGE_ROOT="/Applications/SageMath-9.0.app/Contents/Resources/sage"
export SAGE_LOCAL="/Applications/SageMath-9.0.app/Contents/Resources/sage/local"
source /Applications/SageMath-9.0.app/Contents/Resources/sage/local/bin/sage-env
```

To make sure it works, in a new terminal, try running the following command

```bash
python --version
```
The output should be ```Python 3.7.3```.

## Installing the SageMath Kernel ##

Open a terminal and execute the following command replacing ```<your user>``` with your Mac user. Run

```
open /Users/<your user>/Library/Jupyter/kernels/
```

In the folder `kernels` from the finder window that we opened in the previous step,  we will create a folder called `sagemath-vscode`.

<center>
<img src="/mathwithsagemath/Images/posts/configure-sagemath/install01.png" alt="" width="80%" class="center">
</center>
<br>

We will copy the `kernel.json` from the `python3` directory into the `sagemath-vscode`, and we will modify it to look like this:

Next, we copy the following content into the file:
```json
{
    "argv": [
        "/Applications/SageMath-9.0.app/Contents/Resources/sage/local/bin/python3",
        "-m",
        "sage.repl.ipython_kernel",
        "-f",
        "{connection_file}"
    ],
    "display_name": "SageMath 9.0 for VSCode",
    "language": "python"
}
```

Save and close the file. The installation should be done.

## Testing the installation

If you used VSCode for editing the files, you need to close all instances and quit. Closing the windows will not work. Then open VSCode and open a directory. In our case it is called `Setting up VSCODE`.

<center>
<img src="/mathwithsagemath/Images/posts/configure-sagemath/test01.png" alt="" width="80%" class="center">
</center>
<br>

Then we create a new Jupyter notebook using the "command palette". We can find it in the top menu bar in `View`. We type Jupyter and then we scroll down until we find `Create New Blank Jupyter Notebook`.

<center>
<img src="/mathwithsagemath/Images/posts/configure-sagemath/test02.png" alt="" width="80%" class="center">
</center>
<br>

Now we can choose the SageMath kernel that we just created.


On the top right of the window you can click on `No Kernel: Not Started` or any other kernel you may have, and choose "SageMath 9.0 for VSCode"

Enjoy working with SageMath and VSCode!

<center>
<img src="/mathwithsagemath/Images/posts/configure-sagemath/test03.png" alt="" width="80%" class="center">
</center>
<br>
