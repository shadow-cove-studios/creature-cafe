extends Node2D

class_name Interior2D
@onready var room1 = $room
@onready var room2 = $room2
@onready var player = $Player
func _physics_process(delta):
	if room1.RoomArea.overlaps_area(player.loader_area):
		pass
		
