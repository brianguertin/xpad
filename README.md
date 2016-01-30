# xpad

This is an ever so slightly modified version of the Linux xpad kernel module.

Some games do not go through the Joystick API and so do not respect deadzones set by jscal.

To "fix" this, I simply added a deadzone to the kernel module itself.

You can edit the deadzone by changing the `XPAD_DEADZONE` variable to whatever value you like. The maximum axis value is 32768. Something around 5000 to 8000 usually works well for me.


xpad.c was originally copied from https://github.com/torvalds/linux/blob/master/drivers/input/joystick/xpad.c
