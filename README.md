# SWT17-Project-08  [![GitHub release](https://img.shields.io/github/release/HPI-SWA-Teaching/SWT17-Project-08.svg?label=small%20release&maxAge=0)](https://github.com/HPI-SWA-Teaching/SWT17-Project-08/releases/latest)  [![Github All Releases](https://img.shields.io/github/downloads/HPI-SWA-Teaching/SWT17-Project-08/total.svg?maxAge=0)](https://github.com/HPI-SWA-Teaching/SWT17-Project-08/releases/latest)  [![Build Status ](https://travis-ci.org/HPI-SWA-Teaching/SWT17-Project-08.svg?branch=master)](https://travis-ci.org/HPI-SWA-Teaching/SWT17-Project-08) [![ Coverage Status](https://coveralls.io/repos/github/HPI-SWA-Teaching/SWT17-Project-08/badge.svg?branch=master)](https://coveralls.io/github/HPI-SWA-Teaching/SWT17-Project-08?branch=master)

# Window Acrobatics

## Beautiful Window Management in Squeak

![Window Acrobatics Title Image](https://user-images.githubusercontent.com/9486619/27054536-8e151cbe-4fc1-11e7-84b3-dae4c9b4b825.png)

Window Acrobatics bundles a number of ways you are used to interacting with your windows and puts them right into your Squeak image.
Current components of Window Acrobatics include

* __The Window Aligner__
  * A tool that lets you align windows to specific parts of your screen easily as well as arrange them into tiles.
* __The Expose View__
  * An overview of all currently open windows that lets you select and thus bring to front a window.
* __The Window Switcher__
  * A switching tool that lets you cycle over your windows and switch between different Spaces.

### Installation
Simply drag and drop the *.sar* into your image.
Then run `WAHandler reset` in your Workspace.

### Usage

You can easily customize all the shortcuts used in Window Acrobatics, as well as disable or enable its components, in the Window Acrobatics section in your Preference Browser -- here are the defaults. 

| Cmd/Alt +     | Action            |
|-------------|-------------------|
| Arrow Right | Align window right    |
| Arrow Left    | Align window left   |
| Arrow Up    | Align window at the top      |
| Arrow down  | Align window at the bottom     |
| l | Align window fullscreen      |
| k | Arrange windows into tiles     | 
| w  | Open Expose View      |
| t       | Switch between last used windows |
| q       | Switch to left Space |
| e       | Switch to right Space |
| u       | Cycle through windows of the same type|

If you are on a Mac, use Cmd and Alt otherwise.

-----

Thanks to [Marcel Taeumel](https://github.com/marceltaeumel) for his work on [Vivide](https://github.com/hpi-swa/vivide) and thus his substantial contributions to our Expose View.
