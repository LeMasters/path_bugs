// did I hit a bug?  Then destroy myself, and destroy the bug, TOO!
// eventually, the obj_exMachina will notice that there aren't
// enough bugs on the screen, and he'll generate more.

instance_destroy();
instance_destroy(other);