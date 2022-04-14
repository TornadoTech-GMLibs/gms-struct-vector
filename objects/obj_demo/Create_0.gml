var vector = Vector2(10, 15);

// Converts
log("Converts");

log(vector.to_string());
log(vector.to_string(" - "));

log(vector.to_array());
log(vector.to_array(true));

// Console can't normaly print list
log(vector.to_list());
log(vector.to_list(true));

delete vector;
log("==========");

// Set
log("Sets");

// If you do not write a Y value, it will default to the X value, 
// And if you do not write anything, the vector will take on the value 0, 0
var shortVector = Vector2(10);

// Zero - x: 0, y: 0
// One  - x: 1, y: 1
// Negative - x: -x, y: -y
log(shortVector.zero().to_string());
log(shortVector.one().to_string());
log(shortVector.negative().to_string());

delete shortVector;
log("==========");

// Math - Base
var mathBaseVector = Vector2();
log("Math - Base");

// I will say once all these functions
// Can take as input both a vector and two numbers separated by a comma
log(mathBaseVector.set(70, 70).to_string());
log(mathBaseVector.add(10, 10).to_string());
log(mathBaseVector.sub(20, 20).to_string());
log(mathBaseVector.multi(10, 10).to_string());
log(mathBaseVector.divis(20, 20).to_string());

delete mathBaseVector;
log("==========");

// Math - Base
var mathVector = Vector2(10, 30);
log("Math");

log(mathVector.math_length());
log(mathVector.math_dot(Vector2(17, 6)));
log(mathVector.math_abs());
log(mathVector.math_cross(Vector2(23, 50)));
log(mathVector.math_min(Vector2(100, 100)));
log(mathVector.math_max(Vector2(2, 2)));
log(mathVector.math_clamp(Vector2(2, 50), Vector2(2, 50)));
log(mathVector.math_lerp(Vector2(60, 60), Vector2(0.2)));
// And more!

delete mathVector;
log("==========");

// Utils
var utilsVector = Vector2(15, 35);
log("Utils");

log(utilsVector.to_string());
log(utilsVector.copy().add(1, 1).to_string());
log(utilsVector.to_string());

delete utilsVector;
log("==========");

var dirVector = Vector2(17);
log("Dirs");

// For more info look: https://tornado-technology.github.io/Vectors/#/latest/methods?id=installed-dir
log(dirVector.dir_set(vector2_dir.down, 13).to_string());
log(dirVector.dir_add(vector2_dir.right, 100).to_string());
log(dirVector.dir_multi(vector2_dir.one, 0.1).to_string());

delete dirVector;
log("==========");

// Look to Draw event and obj_square for more functionality!
