// positions from whence I will create
// more bug warriors.
insertX = 60;
// this is -60 because I'm swooping in using
// path_formation.  by making it happen above
// the top of the screen, it doesn't just
// materialize out of nowhere, but seems to,
// you know, swoop in.
insertY = -60;

// alarm that I set so that I can create a new one
// in 120 frames...
alarm_set(0,120);