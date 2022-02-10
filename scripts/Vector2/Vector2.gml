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
function Vector2(_x, _y) constructor {
	x = _x;
	y = _y;
	
	static set = function() {
		var vector = argument[0];
		
		if (argument_count > 1) {
			var _x = argument[0];
			var _y = argument[1];
			vector = new Vector2(_x, _y);
		}
		
		x = vector.x;
		y = vector.y;
	}
	
	static negative = function() {
		x = -x;
		y = -y;
	}
	
	static add = function() {
		var vector = argument[0];
		
		if (argument_count > 1) {
			var _x = argument[0];
			var _y = argument[1];
			vector = new Vector2(_x, _y);
		}
		
		x += vector.x;
		y += vector.y;
	}

	static multi = function() {
		var vector = argument[0];
		
		if (argument_count > 1) {
			var _x = argument[0];
			var _y = argument[1];
			vector = new Vector2(_x, _y);
		}
		
		x *= vector.x;
		y *= vector.y;
	}
	
	static zero = function() {
		x = 0;
		y = 0;
	}

	static to_string = function(delimiter = ":") {
		return string(x) + delimiter + string(y);
	}
	
	static _length = function() {
		return sqr(x * x + y * y);
	}

	static _min = function() {
		var vector = argument[0];
		
		if (argument_count > 1) {
			var _x = argument[0];
			var _y = argument[1];
			vector = new Vector2(_x, _y);
		}
		
		return new Vector2(min(x, vector.x), min(y, vector.y));
	}
	
	static _max = function() {
		var vector = argument[0];
		
		if (argument_count > 1) {
			var _x = argument[0];
			var _y = argument[1];
			vector = new Vector2(_x, _y);
		}
		
		return new Vector2(max(x, vector.x), max(y, vector.y));
	}
	
	static _clamp = function() {
		var vector_min = argument[0];
		var vector_max = argument[1];
		
		if (argument_count > 2) {
			var _mix = argument[0];
			var _miy = argument[1];
			var _max = argument[2];
			var _may = argument[3];
			vector_min = new Vector2(_mix, _miy);
			vector_max = new Vector2(_max, _may);
		}
		
		return new Vector2(clamp(x, vector_min.x, vector_max.x), clamp(y, vector_min.y, vector_max.y));
	}
	
	static _lerp = function() {
		var vector = argument[0];
		var amount = "0.5";
		
		if (argument_count > 1) {
			amount = argument[1];
		}
		
		if (argument_count > 2) {
			_x = argument[0];
			_y = argument[1];
			amount = argument[2];
			vector = new Vector2(_x, _y);
		}
		
		return new Vector2(lerp(x, vector.x, amount),  lerp(y, vector.y, amount));
	}

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
	}
	
	static dir_add = function(dir, value) {
		var vector = new Vector2(0, 0);
		__dir_base(dir, value, vector);
		self.add(vector);
	}
	
	static dir_multi = function(dir, value) {
		var vector = new Vector2(x, y);
		__dir_base(dir, value, vector);
		vector.min(new Vector2(1, 1));
		self.multi(vector);
	}
	#endregion
}

function vector2_to_string(vector, delimiter = ":") {
	return vector.to_string(delimiter);
}