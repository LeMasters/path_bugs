
// the BUGS need to know when to begin their divebombing
beginAttackDiveXPosition = room_width * 0.6;

// this just gets them on their way, and only applies
// when they are not currently on a path
direction = 0;
speed = 0.95;

// I use this flag to signal "you are now attacking" etc.
isAttacking = false;

// the moment the bugs are created, each is set
// onto a path to follow, "path_formation" (to fly
// into formation), at a speed of 2.25.  The
// third argument means "what should I do when
// I hit the end?" -- in this case, stop moving
// along the path (returns control to us!)
// The fourth argument, FALSE, is a way of saying
// THE PATH SHOULD BE RELATIVE to wherever I started
// from, NOT ABSOLUTE.  99% of the time, I use
// RELATIVE -- it makes the path RELATIVE to my
// starting X,Y, rather than using tthe ABSOLUTE
// values of WHERE I DREW THE PATH.

// IF you have designed the layout of a village,
// and you are drawing paths for NPCs to follow
// between huts, chances are you want ABSOLUTE
// (true).  If you have a fancy loop-de-loop
// that a plane performs once in a while, from
// random positions on screen, then you want
// RELATIVE (false), mos def.

path_start(path_formation, 2.25, path_action_stop, false);

// this is a flag I raise so that I can tell when
// he's flying into formation, since I treat him
// differently when he is not.
isGettingIntoFormation = true;
