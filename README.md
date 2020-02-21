# Window Acrobatics  [![GitHub release](https://img.shields.io/github/release/hpi-swa-teaching/WindowAcrobatics.svg?label=small%20release&maxAge=0)](https://github.com/hpi-swa-teaching/WindowAcrobatics/releases/latest)  [![Github All Releases](https://img.shields.io/github/downloads/hpi-swa-teaching/WindowAcrobatics/total.svg?maxAge=0)](https://github.com/hpi-swa-teaching/WindowAcrobatics/releases/latest)  [![Build Status ](https://travis-ci.org/hpi-swa-teaching/WindowAcrobatics.svg?branch=master)](https://travis-ci.org/hpi-swa-teaching/WindowAcrobatics) [![ Coverage Status](https://coveralls.io/repos/github/hpi-swa-teaching/WindowAcrobatics/badge.svg?branch=master)](https://coveralls.io/github/hpi-swa-teaching/WindowAcrobatics?branch=master)

## Beautiful Window Management in Squeak

![Window Acrobatics Title Image](https://user-images.githubusercontent.com/15236859/28661227-4b0bef3e-72b6-11e7-919f-e0f99490d8e4.png)

Window Acrobatics bundles a number of ways you are used to interacting with your windows and puts them right into your Squeak image.
Current components of Window Acrobatics include

* __The Window Aligner__
  * A tool that lets you align windows to specific parts of your screen easily as well as arrange them into tiles.
* __The Expose View__
  * An overview of all currently open windows that lets you select and thus bring to front a window.
* __The Window Switcher__
  * A switching tool that lets you cycle over your windows and switch between different Spaces.

### Installation
#### Stable release
Simply download the newest *.sar* file from the releases section and drag it into your image.
#### Latest version
Do the following in a workspace:
```smalltalk
Metacello new
	baseline: #WindowAcrobatics;
	repository: 'github://hpi-swa-teaching/WindowAcrobatics/packages';
	load.
```
You may need to activate WindowAcrobatics explicitly -- just follow the post-install instructions in your image!

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
| shift+u       | Cycle through windows of the same type|

If you are on a Mac, use Cmd and Alt otherwise.

-----

Thanks to [Marcel Taeumel](https://github.com/marceltaeumel) for his work on [Vivide](https://github.com/hpi-swa/vivide) and thus his substantial contributions to our Expose View.
