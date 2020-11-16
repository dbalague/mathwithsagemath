---
layout: post
title:  "Configure SageMath in Visual Studio Code (Mac)"
date:   2020-08-12 09:29:59 -0400
author: daniel_balague
categories: VSCode configurations
---

Updated in November 16, 2020

After upgrading to Big Sur, I figured out a way to run the SageMath kernel without too many complications.

In this updated version I simplified the configuration of SageMath with VSCode. At the time of this update, I am still using SageMath 9.0 and the VSCode is Version: 1.51.1

**Table of contents**
* Table of contents
{:toc}

## Introduction ##
It took me some time to find [this post](https://ask.sagemath.org/question/43240/sagemath-and-vscode/) that explains how to configure SageMath with VSCode. 

However, the instructions mentioned in the link above require the installation of additional Python modules and the creation of a specific SageMath Kernel for VSCode. <u>My instructions, do not require any additional packages nor kernels</u>.

Again, if you follow the link above you will find the instructions for Windows as well as the ones for Mac.

In a Linux setting, the configuration is similar to the one for Mac. I actually configured my Ubuntu Linux container to be used with VSCode when used as a Dev Container (I might post about it later).

So let's start!

**Important Note 1:** The instructions require to use the BASH terminal. 

**Important Note 2:** Using this configuration makes SageMath's Python the default version of Python. I have been using Python mostly when coding in SageMath, so this is not an issue for me. 

## Download and install the software ##

If you do not have SageMath or you do not have Visual Studio Code, please visit the "[Getting the Software](/mathwithsagemath/gettingsoftware)" page and you will find links to download them.

Once you have SageMath and VSCode installed, click on the configuration button on the left pane, then extensions, and if they are not installed, install the [Microsoft Python extension](https://marketplace.visualstudio.com/items?itemName=ms-python.python), and the [Microsoft Jupyter extension](https://marketplace.visualstudio.com/items?itemName=ms-toolsai.jupyter).

**NOTE.** The Python extension warns you that the system version of Python is not supported. If you installed a different Python distribution (Conda, for example), there should be no problem. However, this will not be an issue since we are going to use the Python version that comes with SageMath.

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

## Configure the Python path in VSCode ##

Configure VSCode to recognize SageMath's Python by follwing these steps:

1. Open VSCode
2. Click on Code -> Preferences -> Settings (in the top menu).
3. Make sure you have the User settings selected. 
4. In the search bar type "default interpreter".
5. Click on "Python(1)".
6. Add ```/Applications/SageMath-9.0.app/Contents/Resources/sage/local/bin/python3``` to the box.

**NOTE:** If you prefer to not modify the default python interpreter globally (for all instances of VSCode), choose "Workspace" in Step 3 above.

The installation should be done!

## Testing the installation

You need to close all instances of VSCode and quit. Closing the windows will not work. Then open VSCode and open a directory. In our case it is called `Setting up VSCODE`.

<center>
<img src="/mathwithsagemath/Images/posts/configure-sagemath/test01.png" alt="" width="80%" class="center">
</center>
<br>

Then we create a new Jupyter notebook using the "command palette". We can find it in the top menu bar in `View`. We type Jupyter and then we scroll down until we find `Create New Blank Jupyter Notebook`.

<center>
<img src="/mathwithsagemath/Images/posts/configure-sagemath/test02.png" alt="" width="80%" class="center">
</center>
<br>

Most likely, you will run into these errors 
```
Python 3.8.2 64-bit requires ipykernel to be installed.
```
```
IPyKernel not installed into interpreter Python 3.8.2 64-bit
```

After *dismissing the errors*, we choose the `SageMath 9.0` kernel in the top right box with text `:busy`.

**Note:** In the previous instructions the box had text `No Kernel: Not Started` (or any other kernel you had).

Type a SageMath command into a cell and run it to connect to the Kernel.

Enjoy working with SageMath and VSCode!

<center>
<img src="/mathwithsagemath/Images/posts/configure-sagemath/test03.png" alt="" width="80%" class="center">
</center>
<br>
