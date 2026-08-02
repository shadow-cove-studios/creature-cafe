extends Area2D

@onready var hotbar = $"../Camera2D/HotbarUI"
var targets_in_area = get_overlapping_areas()
var targets = []
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func _physics_process(delta):
	look_at(get_global_mouse_position())
	targets_in_area = get_overlapping_areas()
	if targets[0] != null:
		targets[0] = targets_in_area[0].get_parent()
	targets[1] = targets_in_area[1].get_parent()
	targets[2] = targets_in_area[2].get_parent()
	targets.change_health(-10)
func _on_area_entered(area):
	if area.is_in_group("Damageable"):
		pass
