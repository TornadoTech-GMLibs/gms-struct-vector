enum vector2_dir {
	down,
	left,
	one,
	right,
	up,
	negone
}

#macro vector2_zero new Vector2(0, 0)
#macro vector2_one new Vector2(1, 1)
#macro vector2_up new Vector2(0, -1)
#macro vector2_down new Vector2(0, 1)
#macro vector2_left new Vector2(-1, 0)
#macro vector2_right new Vector2(1, 0)

/// @param {Real} x
/// @param {Real} y
function Vector2(x = 0, y = 0) constructor {
	self.x = x;
	self.y = y;

	/// @return {Id.Instance<Struct.Vector2>}
	static set_one = function() {
		x = 1;
		y = 1;
		return self;
	}

	/// @return {Id.Instance<Struct.Vector2>}
	static set_zero = function() {
		x = 0;
		y = 0;
		return self;
	}

	/// @return {Struct.Vector2}
	static get_negative = function() {
	    return new Vector2(-x, -y);
	}

	/// @return {Id.Instance<Struct.Vector2>}
	static set_negative = function() {
		x = -x;
		y = -y;
	    return self;
	}
	
	/// @param {Real} x
	/// @param {Real} y
	/// @return {Id.Instance<Struct.Vector2>}
	static sset = function(x, y) {
		self.x = x;
		self.y = y;
		return self;
	}
	
	/// @param {Struct.Vector2} vector
	/// @return {Id.Instance<Struct.Vector2>}
	static set = function(vector) {
		x = vector.x;
		y = vector.y;
		return self;
	}
	
	/// @param {Real} x
	/// @param {Real} y
	/// @return {Id.Instance<Struct.Vector2>}
	static sadd = function(x, y) {
		self.x += x;
		self.y += y;
		return self;
	}
	
	/// @param {Struct.Vector2} vector
	/// @return {Id.Instance<Struct.Vector2>}
	static add = function(vector) {
		x += vector.x;
		y += vector.y;
		return self;
	}
	
	/// @param {Real} x
	/// @param {Real} y
	/// @return {Id.Instance<Struct.Vector2>}
	static ssub = function(x, y) {
		self.x -= x;
		self.y -= y;
		return self;
	}

	/// @param {Struct.Vector2} vector
	/// @return {Id.Instance<Struct.Vector2>}
	static sub = function(vector) {
		x -= vector.x;
		y -= vector.y;
		return self;
	}

	/// @param {Real} x
	/// @param {Real} y
	/// @return {Id.Instance<Struct.Vector2>}
	static smulti = function(x, y) {
		self.x *= x;
		self.y *= y;
		return self;
	}

	/// @param {Struct.Vector2} vector
	/// @return {Id.Instance<Struct.Vector2>}
	static multi = function(vector) {
		x *= vector.x;
		y *= vector.y;
		return self;
	}

	/// @param {Real} x
	/// @param {Real} y
	/// @return {Id.Instance<Struct.Vector2>}
	static sdivis = function(x, y) {
		self.x /= x;
		self.y /= y;
		return self;
	}
	
	/// @param {Struct.Vector2} vector
	/// @return {Id.Instance<Struct.Vector2>}
	static divis = function(vector) {
		x /= vector.x;
		y /= vector.y;
		return self;
	}

	/// @param {Struct.Vector2} vector
	/// @return {Real}
	static distance_to = function(vector) {
		return sqrt((x - vector.x) * (x - vector.x) + (y - vector.y) * (y - vector.y));
	}
	
	/// @param {Struct.Vector2} vector
	/// @return {Real}
	static dot = function(vector) {
		return x * vector.x + y * vector.y;
	}
	
	/// @param {Struct.Vector2} vector
	/// @return {Real}
	static cross = function(vector) {
		return x * vector.x - y * vector.y;
	}
	
	/// @param {Real} angle
	/// @param {Bool} radians
	/// @return {Id.Instance<Struct.Vector2>}
	static set_angle = function(angle, radians = false) {
		x = radians ? arccos(angle) : darccos(angle);
		y = radians ? arcsin(angle) : darcsin(angle);
		return self;
	}
	
	/// @param {Bool} radians
	/// @return {Real}
	static get_angle = function(radians = false) {
		return radians ? arctan2(y, x) : darctan2(y, x);
	}
	
	/// @return {Id.Instance<Struct.Vector2>}
	static set_sign = function() {
		set(get_sign());
		return self;
	}
	
	/// @return {Struct.Vector2}
	static get_abs = function() {
		return new Vector2(abs(x), abs(y));
	}
	
	/// @return {Id.Instance<Struct.Vector2>}
	static set_abs = function() {
		set(get_abs());
		return self;
	}
	
	/// @param {Real} n
	/// @return {Struct.Vector2}
	static get_spower = function(n) {
		return new Vector2(power(x, n), power(y, n));
	}
	
	/// @param {Real} n
	/// @return {Id.Instance<Struct.Vector2>}
	static set_spower = function(n) {
		set(get_spower(n));
		return self;
	}
	
	/// @param {Struct.Vector2} n
	/// @return {Struct.Vector2}
	static get_power = function(n) {
		return new Vector2(power(x, n.x), power(y, n.y));
	}
	
	/// @param {Struct.Vector2} n
	/// @return {Id.Instance<Struct.Vector2>}
	static set_power = function(n) {
		set(get_power(n));
		return self;
	}
		
	/// @return {Struct.Vector2}
	static get_round = function() {
		return new Vector2(round(x), round(y));
	}
	
	/// @return {Id.Instance<Struct.Vector2>}
	static set_round = function() {
		set(get_round())
		return self;
	}
	
	/// @return {Struct.Vector2}
	static get_floor = function() {
		return new Vector2(floor(x), floor(y));
	}
	
	/// @return {Id.Instance<Struct.Vector2>}
	static set_floor = function() {
		set(get_floor());
		return self;
	}
	
	/// @return {Struct.Vector2}
	static get_ceil = function() {
		return new Vector2(ceil(x), ceil(y));
	}
	
	/// @return {Id.Instance<Struct.Vector2>}
	static set_ceil = function() {
		set(get_ceil());
		return self;
	}
	
	/// @return {Real}
	static length = function() {
		return sqr(x * x + y * y);
	}
	
	/// @param {Real} min
	/// @return {Struct.Vector2}
	static get_smin = function(_min) {
		return new Vector2(min(x, _min), min(y, _min));
	}
	
	/// @param {Real} min
	/// @return {Id.Instance<Struct.Vector2>}
	static set_smin = function(_min) {
		set(get_smin(_min));
		return self;
	}
	
	/// @param {Struct.Vector2} min
	/// @return {Struct.Vector2}
	static get_min = function(_min) {
		return new Vector2(min(x, _min.x), min(y, _min.y));
	}
	
	/// @param {Struct.Vector2} min
	/// @return {Id.Instance<Struct.Vector2>}
	static set_min = function(_min) {
		set(get_min(_min));
		return self;
	}
	
	/// @param {Real} max
	/// @return {Struct.Vector2}
	static get_smax = function(_max) {
		return new Vector2(max(x, _max), max(y, _max));
	}
	
	/// @param {Real} min
	/// @return {Id.Instance<Struct.Vector2>}
	static set_smax = function(_max) {
		set(get_smax(_max));
		return self;
	}

	/// @param {Struct.Vector2} max
	/// @return {Struct.Vector2}
	static get_max = function(_max) {
		return new Vector2(max(x, _max.x), max(y, _max.y));
	}
	
	/// @param {Struct.Vector2} max
	/// @return {Id.Instance<Struct.Vector2>}
	static set_max = function(_max) {
		set(get_max(_max));
		return self;
	}
	
	/// @param {Real} min
	/// @param {Real} max
	/// @return {Struct.Vector2}
	static get_sclamp = function(_min, _max) {
		return new Vector2(clamp(x, _min, _max),  clamp(y, _min, _max));
	}
	
	/// @param {Real} min
	/// @param {Real} max
	/// @return {Id.Instance<Struct.Vector2>}
	static set_sclamp = function(_min, _max) {
		set(get_sclamp(_min, _max));
		return self;
	}
	
	/// @param {Struct.Vector2} min
	/// @param {Struct.Vector2} max
	/// @return {Struct.Vector2}
	static get_clamp = function(_min, _max) {
		return new Vector2(clamp(x, _min.x, _max.x),  clamp(y, _min.y, _max.y));
	}
	
	/// @param {Struct.Vector2} min
	/// @param {Struct.Vector2} max
	/// @return {Id.Instance<Struct.Vector2>}
	static set_clamp = function(_min, _max) {
		set(get_clamp(_min, _max));
		return self;
	}
	
	/// @param {Struct.Vector2} target
	/// @param {Real} amount
	/// @return {Id.Instance<Struct.Vector2>}
	static set_slerp = function(target, amount) {
		set(get_slerp(target, amount));
		return self;
	}
	
	/// @param {Struct.Vector2} target
	/// @param {Real} amount
	/// @return {Struct.Vector2}
	static get_slerp = function(target, amount) {
		var lerp_x = lerp(x, target.x, amount);
		var lerp_y = lerp(y, target.y, amount);
		return new Vector2(lerp_x, lerp_y);
	}
	
	/// @param {Struct.Vector2} target
	/// @param {Struct.Vector2} amount
	/// @return {Struct.Vector2}
	static get_lerp = function(target, amount) {
		var lerp_x = lerp(x, target.x, amount.x);
		var lerp_y = lerp(y, target.y, amount.y);
		return new Vector2(lerp_x, lerp_y);
	}
	
	/// @param {Struct.Vector2} target
	/// @param {Struct.Vector2} amount
	/// @return {Id.Instance<Struct.Vector2>}
	static set_lerp = function(target, amount) {
		set(get_lerp(target, amount));
		return self;
	}

	/// @retunr {Struct.Vector2}
	static copy = function() {
		return new Vector2(x, y);
	}
	
	/// @return {Id.DsMap<Real>}
	static to_ds_map = function() {
		var map = ds_map_create();
		map[? "x"] = x; 
		map[? "y"] = y;
		return map;
	}
	
	/// @return {Id.DsList<Real>}
	static to_ds_list = function() {
		var list = ds_list_create();
		list[| 0] = x; 
		list[| 1] = y;
		return list;
	}
	
	/// @return {Array<Real>}
	static to_array = function() {
		return [x, y];
	}
	
	/// @param {String} delimiter
	/// @return {String}
	static to_string = function(delimiter = ":") {
		return $"{x}{delimiter}{y}";
	}
	
	/// @param {Real} dir
	/// @param {Real} value
	/// @param {Struct.Vector2} vector
	/// @return {Struct.Vector2}
	static __dir_base = function(dir, value, vector) {
		switch (dir) {
			case vector2_dir.down:
				vector.y = -value;
				break;

			case vector2_dir.left:
				vector.y = -value;
				break;

			case vector2_dir.one:
				vector.x = value;
				vector.y = value;
				break;

			case vector2_dir.right:
				vector.x = value;
				break;

			case vector2_dir.up:
				vector.y = value;
				break;

			case vector2_dir.negone:
				vector.x = -value;
				vector.y = -value;
				break;
		}
		
		return vector;
	}
	
	/// @param {Real} dir
	/// @param {Real} value
	/// @return {Struct.Vector2}
	static dir_set = function(dir, value) {
		return __dir_base(dir, value, self);
	}
	
	/// @param {Real} dir
	/// @param {Real} value
	/// @return {Struct.Vector2}
	static dir_add = function(dir, value) {
		return add(__dir_base(dir, value, copy()));
	}
	
	/// @param {Real} dir
	/// @param {Real} value
	/// @return {Struct.Vector2}
	static dir_multi = function(dir, value) {
		return multi(__dir_base(dir, value, copy()));
	}
	
	/// @param {Real} dir
	/// @param {Real} value
	/// @return {Struct.Vector2}
	static dir_divis = function(dir, value) {
		return divis(__dir_base(dir, value, copy()));
	}
	
	/// @return {Struct.Vector2}
	static toString = function() {
		return to_string();
	}
}

/// @param {Any} struct
/// @return {Bool}
function is_vector2(struct) {
	return is_struct(struct) ? instanceof(struct) == "Vector2" : false;
}
