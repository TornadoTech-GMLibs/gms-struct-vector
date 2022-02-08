/// @desc Examples

// New Vector2
var vector2 = new Vector2(324, 567);

// Vector2 to_string() 
// returns a document, you can supply your own separator as input, by default ":"
// first x then y
log(vector2.to_string());     // Outuput: 324:567
log(vector2.to_string("][")); // Outuput: 324][567

// Vector2 negative() 
// makes vector values negative
vector2.negative();
log(vector2.to_string()); // Outuput: -324:-567

// Vector2 set()
// sets values for x & y a vector
vector2.set(35, 60); // or vector2.set(new Vector2(35, 60)); 
log(vector2.to_string()); // Outuput: 35:60

// Vector2 add()
// summing one vector by another, or alternatively takes two coordinates
vector2.add(35, 60);
log(vector2.to_string()); // Outuput: 70:120

// I did not create a function for subtraction, 
// you can simply use the negative() function and the vector itself to be subtracted
var some_vector = new Vector2(-35, -60);
vector2.add(some_vector);
log(vector2.to_string()); // Outuput: 35:60

// Vector2 multi()
// multiply one vector by another, or alternatively takes two coordinates
vector2.multi(2, 2);
log(vector2.to_string()); // Outuput: 70:120
vector2.multi(new Vector2(2, 2));
log(vector2.to_string()); // Outuput: 140:240
// Division can be done through multiplication
vector2.multi(0.1, 0.1);
log(vector2.to_string()); // Outuput: 7:12

// Vector2 zero()
// Nullifies the vector
vector2.zero();
log(vector2.to_string()); // Outuput: 0:0

// Vector2 _min() _max() _clamp()
//accepts either a vector or numeric values as input and returns
vector2.set(vector2._max(10, 10));     // Set max to vector
log(vector2.to_string());              // Outuput: 10:10
log((vector2._min(new Vector2(0, 11))).to_string()); // Outuput: 0:10
log((vector2._clamp(4, 10, 3, 5)).to_string());      // Outuput: 3:5

// Vector2 _length()
// returns the length of the vector according to the formula
// sqr(x * x + y * y)
// P.S. the function returns a real number, but the log automatically converts to a string
log(vector2._length()); // Outuput: 4000

// Vector2 _lerp() & not Vector2 fumction vector2_to_string()
// this also works for either numbers or vector
log(vector2_to_string(vector2, " Juju ")); // Outuput: 10 Juju 10
log(vector2_to_string(vector2._lerp(100, 100, 0.5), " - ")); // Outuput: 55 - 55


// ########################### DIR EXAMPLE ##########################
// Vector2 dir_set() 
// for info look: https://tornado-technology.github.io/Vectors/#/latest/methods?id=installed-dir
vector2.dir_set(vector2_dir.down, 13);
log(vector2.to_string()) // Outuput: 10:-13

vector2.dir_add(vector2_dir.right, 100);
log(vector2.to_string()) // Outuput: 110:-13

vector2.dir_multi(vector2_dir.one, 0.1);
log(vector2.to_string()) // Outuput: 11:-1.30