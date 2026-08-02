extends Node2D

var target_1 = Vector2(245, 306)
var target_2 = Vector2(843, 323)
var health = 30
var at_target_1 = false
func _ready():
	pass # Replace with function body.

 
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	print(health)
	if at_target_1 == false:
		global_position = global_position.move_toward(target_1, 0.5)
	else:
		global_position = global_position.move_toward(target_2, 0.5)
	if global_position == Vector2(245, 306):
		at_target_1 = true
	if global_position == Vector2(843, 323):
		at_target_1 = false
	if health == 0 or health < 0:
		die()
func change_health(amount: int):
	health = health + amount
func die():
	$Hitbox.area_exited
	queue_free()
