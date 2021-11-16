// if there are less than 4 noble bugs,
// doing noble-bug things, then create
// a new noble bug, and then create a timer:
// in 120 frames, we'll run this alarm again, 
// and if there aren't enough bugs, we'll create
// another!  And another!
if (instance_number(obj_bug)<4) {
	var tempBug = instance_create_layer(insertX, insertY, "Instances", obj_bug);
	alarm_set(0,120);
}