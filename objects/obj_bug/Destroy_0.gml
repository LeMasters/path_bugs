// NOBLE BUG BROTHERS, I have died, but
// I ask the great SUN in the upper left-hand
// corner of the screen to schedule one of his
// divine timers, and in 120 frames, I ask
// the great SUN in the upper left-hand corner
// of the screen to birth a NEW bug brother
// or sister, as the case may be.

// first, are we not already counting down?
// if I didn't check first, it would just keep
// resetting the timer.
if (obj_exMachina.alarm[0]<1) {
	obj_exMachina.alarm[0] = 120;
}