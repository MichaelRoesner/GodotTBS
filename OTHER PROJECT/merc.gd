extends KinematicBody2D

export var health = 10
export var mana = 5
export var armor = 1
export var damage = 2

onready var select_shape = $CollisionShape2D
onready var select_sprite = $Sprite2



func _ready():
	return
	#set_process_input(true)
	
	
#func button_click():
#	if InputEventMouseButton.pressed("select"):
#		print("selected")
#		#select_shape.set_disabled(false)
#

#func _input(event):
#	if event is InputEventMouseButton and Input.is_action_pressed("select"):
#		if !check_visibility():
#			print("switching sprite on")
#			select_sprite.set_visible(true)
#		else:
#			print("switching sprite off")
#			select_sprite.set_visible(false)

#BEISPIEL AUS ANDEREM PROJEKT			
#func _unhandled_input(event):
#	if event.is_echo():
#		return
#	if event is InputEventMouseButton and event.is_pressed():
#		if event.button_index == BUTTON_LEFT:
#			if !check_visibility():
#				print("switching sprite on")
#				select_sprite.set_visible(true)
#			else:
#				print("switching sprite off")
#				select_sprite.set_visible(false)		
			
		

func check_visibility():
	if select_sprite.is_visible():
		return true
