// canon creates bullet, and we're OFF!
var tempBullet = instance_create_layer(x,y,"Instances",obj_bullet);
// set my bullet's speed to 3 and dir to straight up.
tempBullet.speed = 5;
tempBullet.direction = 90;

// the code to destroy the bullet is in
// the bullet itself.  After the canon creates
// the bullet, it will pretend it has never
// heard of him.  Even if they run into each
// other at a party, like at Dennis'.  Just pretend
// like she has NO IDEA who he is.
// That's the way it goes.