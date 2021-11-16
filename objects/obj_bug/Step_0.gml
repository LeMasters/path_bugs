// ok, so our BUGS get themselves involved
// in lots of HIJINKS.  So we've got to
// account for all those situations.

// I do it using lots of IFs in the
// STEP event.  That's not ideal,
// but here we are.


// Is the BUG ("am I, a bug...") 
// BOTH past the margin on the horizontal
// axis where it knows to begin the dive
// AND is it currently NOT ATTACKING?
// Then let's set it to isAttacking=true,
// and then put it on the "attack path."
// Note the fourth argument, FALSE, means
// the path is relative -- it begins from
// wherever I (the bug) begin the path.
if (x>beginAttackDiveXPosition and isAttacking == false) {
	isAttacking = true;
	path_start(path_attack, 3.5, path_action_stop, false);
}

// Note that the code above will only be true
// ONCE for each bug, because I use that
// isAttacking flag... once it is set to TRUE,
// then that code (line 19) will not run again
// for this particular bug.
// HOWEVER, this series of IF statements
// CAN and WILL run repeatedly, because they
// don't depend on that raised flag.

if (isGettingIntoFormation == true) {
	image_angle = direction;
}

// Pro-tip: 
// if(isAttacking) is exactly the same as
// if(isAttacking == true).  Because of how
// they are compiled, though, there is no
// difference in speed.  They are both
// interpreted the same.  So go with what you like.


// If I (a bug) am attacking, then point
// me in the right direction!  That is, when
// I'm following the path (isAttacking==true)
// I still need to have my sprite turned 
// in the right (wait for it)... direction.

if (isGettingIntoFormation==true) {
	image_angle = direction;
}

if (isAttacking) {
	image_angle = direction;
		
		// NOW:
		// Did my attack get me past the bottom
		// of the screen?
		// then I'll call path_end(), which
		// cancels the bath (even if I'm
		// not done with it.)
		// I then call instance_destroy(),
		// which will FIRST trigger a special
		// event (called "destroy", see code above).
	if (y > room_height+64) {
		path_end();
		instance_destroy();
	}
}

// Did I, a bug, run into another object, a bullet?
// NOTA BENE that I could instead put this code
// inside a COLLISION-->OBJ_BULLET event.  But
// I've put it here.  Ca sera, sera.
if place_meeting(x, y, obj_bullet){
	// then end my path following (stops short of
	// completing the whole path);
	path_end();
	// make a note:  I'm no longer attacking
	// (cuz I'm dead)
	isAttacking = false;
	// and now destroy myself.
	// again:  Note that when I call instance_destroy()
	// from inside myself (a bug), that will
	// destroy me, but FIRST it will
	// run the DESTROY event (attached to this object).
	// that destroy event asks the obj_exMachina to set
	// a timer ... in order to create a new bug,
	// who will carry on our noble struggle.
	instance_destroy();
}
	