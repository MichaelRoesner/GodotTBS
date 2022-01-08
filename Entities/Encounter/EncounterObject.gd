extends Node

func _on_Area2D_body_entered(_area):
	print("entered")
	if randf() < 0.3:
		print("encounter HIT")
