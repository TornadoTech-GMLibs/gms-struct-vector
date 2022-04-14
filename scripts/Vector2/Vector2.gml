enum vector2_dir {
	down,
	left,
	one,
	right,
	up,
	negone
}

/// @param x
/// @param y
function Vector2(_x = 0, _y = _x) {
	return new ClassVector2(_x, _y);
}

/// @param x
/// @param y
function ClassVector2(x, y) constructor {
	self.x = x;
	self.y = y;
	
	#region Set
	
	/// @func one
	static one = function() {
		x = 1;
		y = 1;
		return self;
	}
	
	/// @func zero
	static zero = function() {
		x = 0;
		y = 0;
		return self;
	}
	
	/// @func negative
	static negative = function() {
		x = -x;
		y = -y;
	    return self;
	}
		
	#endregion
	#region Math - base
	
	/// @func set()
	static set = function() {
		var vector = argument[0];
		if (argument_count > 1) {
			var _x = argument[0];
			var _y = argument[1];
			vector = new ClassVector2(_x, _y);
		}
		x = vector.x;
		y = vector.y;
		return self;
	}
	
	/// @func add()
	static add = function() {
		var vector = argument[0];
		if (argument_count > 1) {
			var _x = argument[0];
			var _y = argument[1];
			vector = new ClassVector2(_x, _y);
		}
		x += vector.x;
		y += vector.y;
		return self;
	}
	
	/// @func sub()
	static sub = function() {
		var vector = argument[0];
		if (argument_count > 1) {
			var _x = argument[0];
			var _y = argument[1];
			vector = new ClassVector2(_x, _y);
		}
		x -= vector.x;
		y -= vector.y;
		return self;
	}
	
	/// @func multi()
	static multi = function() {
		var vector = argument[0];
		if (argument_count > 1) {
			var _x = argument[0];
			var _y = argument[1];
			vector = new ClassVector2(_x, _y);
		}
		x *= vector.x;
		y *= vector.y;
		return self;
	}
	
	/// @func divis()
	static divis = function() {
		var vector = argument[0];
		if (argument_count > 1) {
			var _x = argument[0];
			var _y = argument[1];
			vector = new ClassVector2(_x, _y);
		}
		x /= vector.x;
		y /= vector.y;
		return self;
	}
	
	#endregion
	#region Math
	
	/// @func distance_to()
	/// @param {Vector2} vector2
	static math_distance_to = function(vector2) {
		return sqrt((x - vector2.x) * (x - vector2.x) + (y - vector2.y) * (y - vector2.y));
	}
	
	/// func dot()
	/// @param {Vector2} vector2
	/// @desc Returns the dot product
	static math_dot = function(vector2) {
		return x * vector2.x + y * vector2.y;
	}
	
	/// @func cross()
	/// @param {Vector2} vector2
	/// @desc Returns the cross product
	static math_cross = function(vector2) {
		return x * vector2.x - y * vector2.y;
	}
	
	/// @func angle()
	/// @param {bool} return_radians
	/// @desc Returns self Vector2 angle with respect to the X axis.
	static math_angle = function(radians) {
		return (radians) ? arctan2(y, x) : darctan2(y, x);
	}
	
	/// @func math_sign()
	static math_sign = function() {
		return Vector2(sign(x), sign(y));
	}
	
	/// @func math_signv()
	static math_signv = function() {
		var value = math_sign();
		set(value);
		delete value;
		return self;
	}
	
	/// @func math_abs()
	/// @desc Returns a new Vector2 with all components in absolute values
	static math_abs = function() {
		return Vector2(abs(x), abs(y));
	}
	
	/// @func math_absv()
	/// @desc Sets self with all components in absolute values
	static math_absv = function() {
		var value = math_abs();
		set(value);
		delete value;
		return self;
	}
	
	/// @func math_power()
	/// @param {Vector2} n
	/// @desc Returns a new Vector2 with all components powered values
	static math_power = function(n) {
		return Vector2(power(x, n.x), power(y, n.y));
	}
	
	/// @func math_power()
	/// @param {Vector2} n
	/// @desc Returns a new Vector2 with all components powered values
	static math_powerv = function(n) {
		var value = math_power(n);
		set(value);
		delete value;
		return self;
	}
		
	/// @func math_round()
	/// @desc Returns a new Vector2 with all components in round values
	static math_round = function() {
		return Vector2(round(x), round(y));
	}
	
	/// @func math_roundv()
	/// @desc Sets self with all components in round values
	static math_roundv = function() {
		var value = math_round();
		set(value);
		delete value;
		return self;
	}

	/// @func math_floor()
	static math_floor = function() {
		return Vector2(floor(x), floor(y));
	}
	
	/// @func math_floorv()
	static math_floorv = function() {
		var value = math_floor();
		set(value);
		delete value;
		return self;
	}
	
	/// @func math_ceil()
	static math_ceil = function() {
		return Vector2(ceil(x), ceil(y));
	}
	
	/// @func math_ceilv()
	static math_ceilv = function() {
		var value = math_ceilv();
		set(value);
		delete value;
		return self;
	}
	
	/// @func math_length()
	/// @desc Returns real vector length
	static math_length = function() {
		return sqr(x * x + y * y);
	}
	
	/// @func math_min()
	/// @param {Vector2} minVector2
	/// @desc Returns a new Vector2 with the minimum value of the Vector2s
	static math_min = function(minVector2) {
		return Vector2(min(x, minVector2.x), min(y, minVector2.y));
	}
	
	/// @func math_minv()
	/// @param minVector2 {Vector2}
	/// @desc Sets self with the minimum value of the Vector2s
	static math_minv = function(minVector2) {
		var value = math_min(minVector2);
		set(value);
		delete value;
		return self;
	}
	
	/// @func math_max()
	/// @param {Vector2} maxVector2
	/// @desc Returns a new Vector2 with the maximum value of the Vector2s
	static math_max = function(maxVector2) {
		return Vector2(max(x, maxVector2.x), max(y, maxVector2.y));
	}
	
	/// @func math_maxv()
	/// @param {Vector2} maxVector2
	/// @desc Sets self with the maximum value of the Vector2s
	static math_maxv = function(maxVector2) {
		var value = math_max(maxVector2);
		set(value);
		delete value;
		return self;
	}
	
	/// @func math_clamp()
	/// @param {Vector2} minVector2
	/// @param {Vector2} maxVector2
	/// @desc Returns a new Vector2 with the clamped value of the Vector2s
	static math_clamp = function(minVector2, maxVector2) {
		var clamp_x = clamp(x, minVector2.x, maxVector2.x);
		var clamp_y = clamp(y, minVector2.y, maxVector2.y);
		return Vector2(clamp_x, clamp_y);
	}
	
	/// @func math_clampv()
	/// @param {Vector2} minVector2
	/// @param {Vector2} maxVector2
	/// @desc Sets self with the clamped value of the Vector2s
	static math_clampv = function(minVector2, maxVector2) {
		var value = math_clamp(minVector2, maxVector2);
		set(value);
		delete value;
		return self;
	}
	
	/// @func math_lerp()
	/// @param {Vector2} targetVector2
	/// @param {Vector2} amountVector2
	/// @desc Returns a new Vector2 with the lerped value of the Vector2s
	static math_lerp = function(targetVector2, amountVector2) {
		var lerp_x = lerp(x, targetVector2.x, amountVector2.x);
		var lerp_y = lerp(y, targetVector2.y, amountVector2.y);
		return Vector2(lerp_x, lerp_y);
	}
	
	/// @func math_lerpv()
	/// @param {Vector2} targetVector2
	/// @param {Vector2} amountVector2
	/// @desc Sets self with the lerped value of the Vector2s
	static math_lerpv = function(targetVector2, amountVector2) {
		var value = math_lerpv(targetVector2, amountVector2);
		set(value);
		delete value;
		return self;
	}
	
	#endregion
	#region Utils
	
	/// @func copy
	static copy = function() {
		return new ClassVector2(x, y);
	}
	
	#endregion
	#region Convert
	
	/// @func to_list()
	/// @param {bool} mirror
	static to_list = function(mirror = false) {
		var list = ds_list_create();
		list[| 0] = mirror ? y : x; 
		list[| 1] = mirror ? x : y;
		return list;
	}
	
	/// @func to_array()
	/// @param {bool} mirror
	static to_array = function(mirror = false) {
		return mirror ? [y, x] : [x, y];
	}
	
	/// @func to_array()
	/// @param {string} delimiter
	static to_string = function(delimiter = ":") {
		return string(x) + delimiter + string(y);
	}
	
	#endregion
	#region Dir
	
	/// @func __dir_base()
	/// @param {vector2_dir} direction
	/// @param {real} value
	/// @param {Vector2} Vector2
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
	}
	
	/// @func dir_set()
	/// @param {vector2_dir} direction
	/// @param {real} value
	static dir_set = function(dir, value) {
		__dir_base(dir, value, self);
		return self;
	}
	
	/// @func dir_add()
	/// @param {vector2_dir} direction
	/// @param {real} value
	static dir_add = function(dir, value) {
		var vector = Vector2();
		__dir_base(dir, value, vector);
		add(vector);
		delete vector;
		return self;
	}
	
	/// @func dir_multi()
	/// @param {vector2_dir} direction
	/// @param {real} value
	static dir_multi = function(dir, value) {
		var vector = copy();
		__dir_base(dir, value, vector);
		multi(vector);
		delete vector;
		return self;
	}
	
	#endregion
}

#region Vector2

/// @func vector2_to_string()
/// @param {Vector2} Vector2
/// @param {string} delemiter
function vector2_to_string(vector, delimiter = ":") {
	return vector.to_string(delimiter);
}
	
#endregion
#region Display

/// @func display_get_gui_size()
function display_get_gui_size() {
	return Vector2(display_get_gui_width(), display_get_gui_height());
}

/// @func display_set_gui_vsize()
/// @param {Vector2} Vector2
function display_set_gui_vsize(_vector2) {
	display_set_gui_size(_vector2.x, _vector2.y)
}
	
#endregion
#region Position

/// @func position_get()
/// @param {object} obj
function position_get(_object = id) {
	return new ClassVector2(_object.x, _object.y);
}

/// @func position_set()
/// @param {Vector2} Vector2
/// @param {object} obj
function position_set(_vector2, _object = id) {
	_object.x = _vector2.x;
	_object.y = _vector2.y;
}
	
/// @func position_add()
/// @param {Vector2} Vector2
/// @param {object} obj
function position_add(_vector2, _object = id) {
	_object.x += _vector2.x;
	_object.y += _vector2.y;
}
	
/// @func position_multi()
/// @param {Vector2} Vector2
/// @param {object} obj
function position_multi(_vector2, _object = id) {
	_object.x *= _vector2.x;
	_object.y *= _vector2.y;
}
	
#endregion
