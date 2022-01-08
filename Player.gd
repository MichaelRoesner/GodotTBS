extends KinematicBody2D


#Movement
export var ACCELERATION = 500
export var SPEED = 80
export var FRICTION = 500
var velocity = Vector2()

#Stats
export var HEALTH = 50
export var MANA = 50
export var ARMOR = 50
export var MAGIC_ARMOR = 50
export var RESISTS = 10

#Misc
var inventory_scene = load("res://Inventory.tscn")
var inventory_open = false

func _ready():
	print("ready-function")

func _physics_process(_delta):
	get_input()
	velocity = move_and_slide(velocity)
	inventory_call()
	
func get_input():
	if inventory_open == false:
		velocity = Vector2()
		if Input.is_action_pressed("ui_right"):
			velocity.x += 1 
		if Input.is_action_pressed("ui_left"):
			velocity.x -= 1 
		if Input.is_action_pressed("ui_down"):
			velocity.y += 1 
		if Input.is_action_pressed("ui_up"):
			velocity.y -= 1 
		velocity = velocity.normalized() * SPEED
	else:
		velocity = Vector2();

func inventory_call(): ## FUNKTIONIERT NICHT
	var inventory = inventory_scene.instance()
	if Input.is_action_just_pressed("Inventory") && inventory_open == false:
		add_child(inventory)
		inventory.set_position(Vector2(50,50))
		print("Inventory opened")
		inventory_open = true

		


