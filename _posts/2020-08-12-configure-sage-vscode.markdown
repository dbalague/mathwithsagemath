---
layout: post
title:  "Configure SageMath in Visual Studio Code (Mac)"
date:   2020-08-12 09:29:59 -0400
author: daniel_balague
categories: VSCode configurations
---

**Table of contents**
* Table of contents
{:toc}

## Introduction ##
It took me some time to find [this post](https://ask.sagemath.org/question/43240/sagemath-and-vscode/) explaining how to configure SageMath with VSCode. So I will share the instructions with you for configuring it with a Mac. However, in our case, <u>this installation does not require any additional Python installation</u> (like Conda, for example). <u>This is the main difference between my instructions for Mac, and the instructions for Mac in the link above.</u>

If you follow the link above, you will find the instructions for Windows as well as the ones for Mac.

In a Linux setting, the configurations is similar to the one for Mac. I actually configured my Ubuntu Linux container to be used with VSCode when used as a Dev Container (I might post about it later).

So let's start!

## Download and install the software ##

If you do not have SageMath or you do not have Visual Studio Code, please visit the "[Getting the Software](/gettingsoftware)" page and you will find links to download them.

Once you have SageMath and VSCode installed, click on the configuration button on the left pane, then extensions, and if it is not installed, install the [Microsoft Python extension](https://marketplace.visualstudio.com/items?itemName=ms-python.python).

**NOTE.** The extension warns you that the system version of Python is not supported. If you installed a different Python distribution (Conda, for example), there should be no problem. However, this will not be an issue since we are going to use the Python version that comes with SageMath.

## Install required packages ##

The following step is crucial if you want the VSCode to work properly with Jupyter:

Now we open a Terminal (the command line). It comes with your Mac. If you don't know what it is or where to find it, you can search for it in your Launchpad.

Then, copy the following commands (one by one) and press enter/return after each one

```bash
python3 -m pip install notebook --user
python3 -m ipykernel install --user
python3 -m pip install jupyter --user
```

This will produce a lot of output, but you should not worry about it. If the first command works, at the end of the execution you will read `Successfully installed` followed by a lot of package names with the form `package-x.y.z`.

If the second one works, you will read the output
`Installed kernelspec python3 in /Users/<your user>/Library/Jupyter/kernels/python3`. Take note of this directory!

In the same terminal we will open the directory above replaceing `<your user>` with your Mac user and removing the `python3` like in the command below. Run

```bash
open /Users/<your user>/Library/Jupyter/kernels/
```

A finder window will open in this location. Do not close the terminal yet since we will need to run one more step in it.

## Installing the SageMath Kernel ##

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

To conclude the installation, we go back to the terminal and we will run the following command:

```bash
echo "export PATH=\"/Applications/SageMath-9.0.app/Contents/Resources/sage/local/bin:$PATH\"" >> ~/.bash_profile
```

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
