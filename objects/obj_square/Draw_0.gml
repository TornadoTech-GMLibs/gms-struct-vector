draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_font(noone);

draw_text(x, y - 48, position_get().to_string(" - "));
draw_self();
