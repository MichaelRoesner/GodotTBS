#Ausgestellt, da scrollen einfach weiter rollt und nicht stoppt.

extends Camera2D
#
#var zoom_min = Vector2(.200001, .200001)
#var zoom_max = Vector2(2,2)
#var zoom_speed = Vector2(.2,.2)
#var des_zoom = zoom
#
func _process(delta):
	return
#	zoom = lerp(zoom, des_zoom, .2 * delta)
#
#func _input(event):
#	if event is InputEventMouseButton:
#		if event.is_pressed():
#			if event.button_index == BUTTON_WHEEL_UP:
#				if des_zoom > zoom_min:
#					des_zoom -= zoom_speed
#				print(des_zoom)
#			if event.button_index == BUTTON_WHEEL_DOWN:
#				if des_zoom < zoom_max:
#					des_zoom += zoom_speed
#				print(des_zoom)
