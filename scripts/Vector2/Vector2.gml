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
function ClassVector2(_x, _y) constructor {
	x = _x;
	y = _y;
	
	#region Set
	static one = function() {
		x = 1;
		y = 1;
		return self;
	}
	
	static zero = function() {
		x = 0;
		y = 0;
		return self;
	}
	
	static negative = function() {
		x = -x;
		y = -y;
	    return self;
	}
	#endregion
	#region Math - base
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
	static math_length = function() {
		return sqr(x * x + y * y);
	}

	static math_min = function() {
		var vector = argument[0];
		if (argument_count > 1) {
			var _x = argument[0];
			var _y = argument[1];
			vector = new ClassVector2(_x, _y);
		}
		return new ClassVector2(min(x, vector.x), min(y, vector.y));
	}
	
	static math_max = function() {
		var vector = argument[0];
		if (argument_count > 1) {
			var _x = argument[0];
			var _y = argument[1];
			vector = new ClassVector2(_x, _y);
		}
		return new ClassVector2(max(x, vector.x), max(y, vector.y));
	}
	
	static math_clamp = function() {
		var vector_min = argument[0];
		var vector_max = argument[1];
		if (argument_count > 2) {
			var _mix = argument[0];
			var _miy = argument[1];
			var _max = argument[2];
			var _may = argument[3];
			vector_min = new ClassVector2(_mix, _miy);
			vector_max = new ClassVector2(_max, _may);
		}
		return new ClassVector2(clamp(x, vector_min.x, vector_max.x), clamp(y, vector_min.y, vector_max.y));
	}
	
	static math_lerp = function() {
		var vector = argument[0];
		var amount = 0.5;
		
		if (argument_count > 1) {
			amount = argument[1];
		}
		
		if (argument_count > 2) {
			_x = argument[0];
			_y = argument[1];
			amount = argument[2];
			vector = new ClassVector2(_x, _y);
		}
		
		return new ClassVector2(lerp(x, vector.x, amount),  lerp(y, vector.y, amount));
	}
	#endregion
	#region Utils
	static copy = function() {
		return new ClassVector2(x, y);
	}
	#endregion
	#region Convert
	static to_list = function(mirror = false) {
		var list = ds_list_create();
		list[| 0] = mirror ? y : x; 
		list[| 1] = mirror ? x : y;
		return list
	}
	
	static to_array = function(mirror = false) {
		return mirror ? [y, x] : [x, y];
	}
	
	static to_string = function(delimiter = ":") {
		return string(x) + delimiter + string(y);
	}
	#endregion
	#region Dir
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
	
	static dir_set = function(dir, value) {
		__dir_base(dir, value, self);
		return self;
	}
	
	static dir_add = function(dir, value) {
		var vector = new ClassVector2(0, 0);
		__dir_base(dir, value, vector);
		self.add(vector);
		return self;
	}
	
	static dir_multi = function(dir, value) {
		var vector = new ClassVector2(x, y);
		__dir_base(dir, value, vector);
		vector.min(new ClassVector2(1, 1));
		self.multi(vector);
		return self;
	}
	#endregion
}

#region Vector2
/// @param Vector2
/// @param delemiter
function vector2_to_string(vector, delimiter = ":") {
	return vector.to_string(delimiter);
}
#endregion
#region Display
function display_get_gui_size() {
	return new ClassVector2(display_get_gui_width(), display_get_gui_height());
}

/// @param Vector2
function display_set_gui_vsize(_vector2) {
	display_set_gui_size(_vector2.x, _vector2.y)
}
#endregion
#region Position
/// @param object
function position_get(_object = id) {
	return new ClassVector2(_object.x, _object.y);
}

/// @param Vector2
/// @param object
function position_set(_vector2, _object = id) {
	_object.x = _vector2.x;
	_object.y = _vector2.y;
}
	
/// @param Vector2
/// @param object
function position_add(_vector2, _object = id) {
	_object.x += _vector2.x;
	_object.y += _vector2.y;
}
	
/// @param Vector2
/// @param object
function position_multi(_vector2, _object = id) {
	_object.x *= _vector2.x;
	_object.y *= _vector2.y;
}
#endregion
