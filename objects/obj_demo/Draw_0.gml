draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_font(font_russian_pank);

draw_text_transformed(room_width / 2, room_height / 2, "It simple text!\nFor examples see in output and obj_demo", wave(2.25, 2.75, 3, 0), wave(2.25, 2.75, 3, 1), wave(-10, 10, 3, 2));

draw_set_halign(fa_left);
draw_set_valign(fa_center);
draw_set_font(noone);

draw_text_color(Vector2(5, 15), "Display Size: " + display_get_gui_size().to_string("x"), c_yellow, c_yellow, c_orange, c_orange, 1);
