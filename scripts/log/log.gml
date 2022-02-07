function log(msg) {
	var time = date_datetime_string(date_current_datetime());
	var add = "[" + time + "]";
	show_debug_message(add + " " + string(msg));
}