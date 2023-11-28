Vector structures is a package for your project that contains a handy implementation of 2D vectors for GameMaker Studio 2 using constructors.
The package was originally written for personal work on TornadoTech projects, but has been posted on GitHub for the convenience of all developers.

You can convert vectors to other data types such as `DsMap`, `DsList`, `Array` to work and also `String`.

```js
var vector = new Vector2(10, 15);
show_debug_message(vector); // 10:15
show_debug_message(vector.to_string(" - ")); // 10 - 15
show_debug_message(vector.to_array()); // [ 10,15 ]

// Console can't normaly print list
show_debug_message(vector.to_ds_list()); // ref ds_list 0
```

You can different `set_` method to affect the vector. There are also different operators to work between vectors.
Also the prefix `s` before the method name means that the function accepts several numbers instead of a vector.

```js
var vector = new Vector2(10, 10);
show_debug_message(vector.set_zero()); // 0:0
show_debug_message(vector.set_one()); // 1:1
show_debug_message(vector.set_negative()); //-1:-1

show_debug_message(vector.sset(70, 70)); // 70:70
show_debug_message(vector.sadd(10, 10)); // 80:80
show_debug_message(vector.ssub(20, 20)); // 60:60
show_debug_message(vector.smulti(10, 10)); // 600:600
show_debug_message(vector.sdivis(20, 20)); // 30:30

// Same
// show_debug_message(vector.set(new Vector2(70, 70)));
// show_debug_message(vector.add(new Vector2(10, 10)));
// show_debug_message(vector.sub(new Vector2(20, 20)));
// show_debug_message(vector.multi(new Vector2(10, 10)));
// show_debug_message(vector.divis(new Vector2(20, 20)));
```

```js
var vector = new Vector2(10, 30);
show_debug_message(vector.length()); // 1000000
show_debug_message(vector.dot(new Vector2(17, 6))); // 350
show_debug_message(vector.get_abs()); // 10:30
show_debug_message(vector.cross(new Vector2(23, 50))); // -1270
show_debug_message(vector.get_min(new Vector2(100, 100))); // 10:30
show_debug_message(vector.get_smax(2)); // 10:30
show_debug_message(vector.get_clamp(new Vector2(2, 50), new Vector2(2, 50))); // 2:50
show_debug_message(vector.get_lerp(new Vector2(60, 60), new Vector2(0.2))); // 20:30
```

```js
var vector = new Vetor2(15, 35);
show_debug_message(vector); // 15:35
show_debug_message(vector.copy().sadd(1, 1)); // 16:36
show_debug_message(vector); // 15:35
```

```js
var vector = new Vector2(17, 17);
show_debug_message(vector.dir_set(vector2_dir.down, 13)); // 17:-13
show_debug_message(vector.dir_add(vector2_dir.right, 100)); // 117:-26
show_debug_message(vector.dir_multi(vector2_dir.one, 0.1)); // 11.70:-2.60
```
