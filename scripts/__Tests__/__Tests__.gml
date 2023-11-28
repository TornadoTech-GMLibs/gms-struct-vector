// Converts
show_debug_message("===== Converts =====");
var vector = new Vector2(10, 15);
show_debug_message(vector);
show_debug_message(vector.to_string(" - "));
show_debug_message(vector.to_array());
show_debug_message(vector.to_ds_list()); // Console can't normaly print list

// Set
show_debug_message("===== Sets =====");
// If you do not write a Y value, it will default to the X value, 
// And if you do not write anything, the vector will take on the value 0, 0
vector.sset(10, 10);

// Zero - x: 0, y: 0
// One  - x: 1, y: 1
// Negative - x: -x, y: -y
show_debug_message(vector.set_zero());
show_debug_message(vector.set_one());
show_debug_message(vector.set_negative());

// Math - Base
vector.set_zero();
show_debug_message("===== Operators =====");
// I will say once all these functions
// Can take as input both a vector and two numbers separated by a comma
show_debug_message(vector.sset(70, 70));
show_debug_message(vector.sadd(10, 10));
show_debug_message(vector.ssub(20, 20));
show_debug_message(vector.smulti(10, 10));
show_debug_message(vector.sdivis(20, 20));

// Math - Base
vector.sset(10, 30);
show_debug_message("===== Math =====");
show_debug_message(vector.length());
show_debug_message(vector.dot(new Vector2(17, 6)));
show_debug_message(vector.get_abs());
show_debug_message(vector.cross(new Vector2(23, 50)));
show_debug_message(vector.get_min(new Vector2(100, 100)));
show_debug_message(vector.get_smax(2));
show_debug_message(vector.get_clamp(new Vector2(2, 50), new Vector2(2, 50)));
show_debug_message(vector.get_lerp(new Vector2(60, 60), new Vector2(0.2)));

// Utils
vector.sset(15, 35);
show_debug_message("===== Utils ====");
show_debug_message(vector);
show_debug_message(vector.copy().sadd(1, 1));
show_debug_message(vector);

// Directions
vector.sset(17, 17);
show_debug_message("===== Dirs =====");
show_debug_message(vector.dir_set(vector2_dir.down, 13));
show_debug_message(vector.dir_add(vector2_dir.right, 100));
show_debug_message(vector.dir_multi(vector2_dir.one, 0.1));
show_debug_message("==========");
