extends Node2D


#lädt Scene zum instanzieren
var char_scene = load("res://merc.tscn")
var merc_scene = load("res://Mercventory.tscn")
var start_area = 1

func _ready():
	var mercs = merc_scene.instance() #Legt Scene an
	var merc_count = mercs.get_child_count()
	print(str("Merc Number in Mercventory: ", merc_count)) #Zeigt Anzahl der Mercs im Inventory
	for count in merc_count:
		_merc_spawn()
		start_area += 1 

func _merc_spawn():
	var area_pos = get_node(str("MercSpawnPositions/", start_area))
	print(str("Number of Area: ", start_area, " || ",  "Position: ", area_pos.position))
	var combatant = char_scene.instance()
	var combatant_position = area_pos.position
	add_child(combatant)
	combatant.set_position(combatant_position)



		
#		if count / 3 <= 3:
#			for _x in range(3):
#				print(str("Spawned merc on position: "), start_area)
#				start_area += 1
#
#		if count / 3 <= 6:
#			for _x in range(3):
#				print(str("Spawned merc on position: "), start_area)
#				start_area += 11
#
#		if count / 3 <= 6:
#			for _x in range(3):
#				print(str("Spawned merc on position: "), start_area)
#				start_area += 21
		#!!!!!!!!!!!MERC SPAWN 14 (start_area geht auf 14 und stoppt nicht bei 13 -> falscher loop)

#loop for spawning	
#for x in range(3):
#    print(str("x: "), x)
#    x+1
#
#    for y in range(3):
#        print(str("y: "), y)
#        y+1
#x:  0
#y:  0
#y:  1
#y:  2
#x:  1
#y:  0
#y:  1
#y:  2
#x:  2
#y:  0
#y:  1
#y:  2


###########################
"""OLD CODE"""
###########################
	
#	for count in merc_count:
#		print("initialisiere Combatant:")
#		print(count+1)
#		var combatant = char_scene.instance()
#		add_child(combatant)
#		combatant.set_position(Vector2(x,y))
#		x +=50
#		y +=50


	#instanziert Scene in der WorldNode
#	var combatant_1 = char_scene.instance()
#	add_child(combatant_1)
#	combatant_1.set_position(Vector2(50,50))
#	print(combatant_1.get_position())
	
	#for x in combatants:
	#	add_child(combatant+"_"+number)


