#region FUCKING SHIT (System)
#region Draw text
/// @function draw_text((x, y) or vector2, string)
function __v_draw_text() {
	if (argument_count > 2) {
		var position = Vector2(argument[0], argument[1]);
		var text = argument[2];
	} else {
		var position = argument[0];
		var text = argument[1];
	}
	
	var px = position.x;
	var py = position.y;
	delete position;
	__draw_text(px, py, text);
}

/// @function draw_text_color((x, y) or vector2, string, c1, c2, c3, c4, alpha)
function __v_draw_text_color() {
	var arg_offset = 1
	var vector = argument[0];
	if (argument_count > 7) {
		arg_offset = 2;
		vector = Vector2(argument[0], argument[1]);
	}
	var st = argument[arg_offset];
	var c1 = argument[arg_offset + 1];
	var c2 = argument[arg_offset + 2];
	var c3 = argument[arg_offset + 3];
	var c4 = argument[arg_offset + 4];
	var al = argument[arg_offset + 5];
	
	var px = vector.x;
	var py = vector.y;
	delete vector;
	__draw_text_color(px, py, st, c1, c2, c3, c4, al);
}
	
/// @function draw_text_ext((x, y) or vector2, string, sep, w)
function __v_draw_text_ext() {
	var arg_offset = 1
	var vector = argument[0];
	if (argument_count > 4) {
		arg_offset = 2;
		vector = Vector2(argument[0], argument[1]);
	}
	var st = argument[arg_offset];
	var sp = argument[arg_offset + 1];
	var wd = argument[arg_offset + 2];
	
	var px = vector.x;
	var py = vector.y;
	delete vector;
	__draw_text_ext(px, py, st, sp, wd);
}
	
/// @function draw_text_ext_color((x, y) or vector2, string, sep, w, c1, c2, c3, c4, alpha)
function __v_draw_text_ext_color() {
	var arg_offset = 1
	var vector = argument[0];
	if (argument_count > 9) {
		arg_offset = 2;
		vector = Vector2(argument[0], argument[1]);
	}
	var st = argument[arg_offset];
	var sp = argument[arg_offset + 1];
	var wd = argument[arg_offset + 2];
	var c1 = argument[arg_offset + 3];
	var c2 = argument[arg_offset + 4];
	var c3 = argument[arg_offset + 5];
	var c4 = argument[arg_offset + 6];
	var al = argument[arg_offset + 7];
	
	var px = vector.x;
	var py = vector.y;
	delete vector;
	__draw_text_ext_color(px, py, st, sp, wd, c1, c2, c3, c4, al);
}
	
/// @function draw_text_ext_transformed((x, y) or vector2, string, sep, w, xscale, yscale, angle)	
function __v_draw_text_ext_transformed() {
	var arg_offset = 1
	var vector = argument[0];
	if (argument_count > 7) {
		arg_offset = 2;
		vector = Vector2(argument[0], argument[1]);
	}
	var st = argument[arg_offset];
	var sp = argument[arg_offset + 1];
	var wd = argument[arg_offset + 2];
	var xs = argument[arg_offset + 3];
	var ys = argument[arg_offset + 4];
	var an = argument[arg_offset + 5];
	
	var px = vector.x;
	var py = vector.y;
	delete vector;
	__draw_text_ext_transformed(px, py, st, sp, wd, xs, ys, an);
}
	
/// @function draw_text_ext_transformed_color((x, y) or vector2, string, sep, w, xscale, yscale, angle, c1, c2, c3, c4, alpha)	
function __v_draw_text_ext_transformed_color() {
	var arg_offset = 1
	var vector = argument[0];
	if (argument_count > 12) {
		arg_offset = 2;
		vector = Vector2(argument[0], argument[1]);
	}
	var st = argument[arg_offset];
	var sp = argument[arg_offset + 1];
	var wd = argument[arg_offset + 2];
	var xs = argument[arg_offset + 3];
	var ys = argument[arg_offset + 4];
	var an = argument[arg_offset + 5];
	var c1 = argument[arg_offset + 6];
	var c2 = argument[arg_offset + 7];
	var c3 = argument[arg_offset + 8];
	var c4 = argument[arg_offset + 9];
	var al = argument[arg_offset + 10];
	
	var px = vector.x;
	var py = vector.y;
	delete vector;
	__draw_text_ext_transformed_color(px, py, st, sp, wd, xs, ys, an, c1, c2, c3, c4, al);
}
	
/// @function raw_text_transformed((x, y) or vector2, string, xscale, yscale, angle)	
function __v_draw_text_transformed() {
	var arg_offset = 1
	var vector = argument[0];
	if (argument_count > 5){
		arg_offset = 2;
		vector = Vector2(argument[0], argument[1]);
	}
	var st = argument[arg_offset];
	var xs = argument[arg_offset + 1];
	var ys = argument[arg_offset + 2];
	var an = argument[arg_offset + 3];
	
	var px = vector.x;
	var py = vector.y;
	delete vector;
	__draw_text_transformed(px, py, st, xs, ys, an);
}
	
/// @function draw_text_transformed_color((x, y) or vector2, string, xscale, yscale, angle, c1, c2, c3, c4, alpha)	
function __v_draw_text_transformed_color() {
	var arg_offset = 1
	var vector = argument[0];
	if (argument_count > 10) {
		arg_offset = 2;
		vector = Vector2(argument[0], argument[1]);
	}
	var st = argument[arg_offset];
	var xs = argument[arg_offset + 1];
	var ys = argument[arg_offset + 2];
	var an = argument[arg_offset + 3];
	var c1 = argument[arg_offset + 5];
	var c2 = argument[arg_offset + 6];
	var c3 = argument[arg_offset + 7];
	var c4 = argument[arg_offset + 8];
	var al = argument[arg_offset + 9];
	
	var px = vector.x;
	var py = vector.y;
	delete vector;
	__draw_text_transformed_color(px, py, st, xs, ys, an, c1, c2, c3, c4, al);
}
#endregion
#region Place
/// @function place_empty((x, y) or vector2, [object_id])
function __v_place_empty() {
	var obj_id = id;
	var position = argument[0];
	if (is_vector2(argument[0])) {
		if (argument_count > 1) {
			obj_id = argument[1];
		}
	} else {
		position = Vector2(argument[0], argument[1]);
		if (argument_count > 2) {
			obj_id = argument[3];
		}
	}
	
	var px = position.x;
	var py = position.y;
	delete position;
	return __place_empty(px, py, obj_id);
}
	
/// @function place_free((x, y) or vector2)
function __v_place_free() {
	var position = argument[0];
	if (argument_count > 1) {
		position = Vector2(argument[0], argument[1]);
	}
	
	var px = position.x;
	var py = position.y;
	delete position;
	return __place_free(px, py);
}
#endregion
#endregion

#region Macros
#region Draw text
// draw_text
#macro __draw_text draw_text
#macro draw_text __v_draw_text

// draw_text_color
#macro __draw_text_color draw_text_color
#macro draw_text_color __v_draw_text_color

// draw_text_ext
#macro __draw_text_ext draw_text_ext
#macro draw_text_ext __v_draw_text_ext

// draw_text_ext_color
#macro __draw_text_ext_color draw_text_ext_color 
#macro draw_text_ext_color __v_draw_text_ext_color 

// draw_text_ext_transformed
#macro __draw_text_ext_transformed draw_text_ext_transformed
#macro draw_text_ext_transformed __v_draw_text_ext_transformed

// draw_text_ext_transformed_color
#macro __draw_text_ext_transformed_color draw_text_ext_transformed_color
#macro draw_text_ext_transformed_color __v_draw_text_ext_transformed_color

// draw_text_transformed
#macro __draw_text_transformed draw_text_transformed
#macro draw_text_transformed __v_draw_text_transformed

// draw_text_transformed_color
#macro __draw_text_transformed_color draw_text_transformed_color
#macro draw_text_transformed_color __v_draw_text_transformed_color
#endregion
#region Collision
// place_empty
#macro __place_empty place_empty
#macro place_empty __v_place_empty

// place_free
#macro __place_free place_free
#macro place_free __v_place_free
#endregion
#endregion
