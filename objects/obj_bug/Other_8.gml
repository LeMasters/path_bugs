/// this gets called whenever I "end" a path
// or when the instance itself actually makes
// it to the path end.  That could mean several
// things for us:  In this case, I'm only interested
// in finding out if the path ended WHILE
// I WAS GETTINGINTOFORMATION.  If so,
// then I set a new direction (LEFTWARD)
// and set a new speed (1), and turn off
// isGettingIntoFormation.  

// this means that I'm no longer on a path,
// and I'm just heading east of my own
// volition.  BUT ONCE I PASS THAT 60% marker
// (see the CREATE event), then I WILL get put
// back onto a different path (that is assigned
// in the STEP event, though, not here).

// so this just runs ONCE for each new
// bug:  As soon as they hit the end of their
// "getting into formation" path ("path_formation")
// then it lets them move to the right
// at a speed of one.  They are NOT on any
// path at this point.

if (isGettingIntoFormation == true) {
	direction = 0;
	speed = 1;
	isGettingIntoFormation = false;
}