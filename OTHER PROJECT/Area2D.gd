extends Area2D


onready var select_sprite = $Sprite


func _ready():
	pass # Replace with function body.


func _input(event):
	if event is InputEventMouseButton and Input.is_action_pressed("select"):
		if !check_visibility():
			print("switching sprite on")
			select_sprite.set_visible(true)
		else:
			print("switching sprite off")
			select_sprite.set_visible(false)

func check_visibility():
	if select_sprite.is_visible():
		return true

