extends Area2D

@onready var hotbar = $"../Camera2D/HotbarUI"
var slash_damage = 10
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass
	
func _physics_process(_delta):
	look_at(get_global_mouse_position())
	var targets_in_area = get_overlapping_areas()
	var targets = targets_in_area.map(_get_target_area_parents)
	if (Input.is_action_just_pressed("click") and 
	hotbar.equipped_item_name() == "Chefie's diamond sword"
	and targets.size() >1):
		_apply_damage_to_targets(targets, slash_damage)
	
func _on_area_entered(area):
	if area.is_in_group("Damageable"):
		pass
	
func _get_target_area_parents(targets):
	return targets.get_parent()

func _apply_damage_to_targets(targets: Array, damage: int):
	#Welcome to code hell. For loops weren't working, soo.....
	#Yeah. I did this.
	#You might have noticed that if there are more than 10 areas
	#in the slash area(not including the player),the game will just crash.
	#Don't let that happen.
	#Yeah this looks like some crap straight out of a Toby Fox game
	if targets.size() == 11:
		if targets[1].has_method("take_damage"):
			targets[1].take_damage(damage);
		if targets[2].has_method("take_damage"):
			targets[2].take_damage(damage)
		if targets[3].has_method("take_damage"):
			targets[3].take_damage(damage)
		if targets[4].has_method("take_damage"):
			targets[4].take_damage(damage)
		if targets[5].has_method("take_damage"):
			targets[5].take_damage(damage)
		if targets[6].has_method("take_damage"):
			targets[6].take_damage(damage)
		if targets[7].has_method("take_damage"):
			targets[7].take_damage(damage)
		if targets[8].has_method("take_damage"):
			targets[8].take_damage(damage)
		if targets[9].has_method("take_damage"):
			targets[9].take_damage(damage)
		if targets[10].has_method("take_damage"):
			targets[10].take_damage(damage)

	elif targets.size() == 10:
		if targets[1].has_method("take_damage"):
			targets[1].take_damage(damage);
		if targets[2].has_method("take_damage"):
			targets[2].take_damage(damage)
		if targets[3].has_method("take_damage"):
			targets[3].take_damage(damage)
		if targets[4].has_method("take_damage"):
			targets[4].take_damage(damage)
		if targets[5].has_method("take_damage"):
			targets[5].take_damage(damage)
		if targets[6].has_method("take_damage"):
			targets[6].take_damage(damage)
		if targets[7].has_method("take_damage"):
			targets[7].take_damage(damage)
		if targets[8].has_method("take_damage"):
			targets[8].take_damage(damage)
		if targets[9].has_method("take_damage"):
			targets[9].take_damage(damage)

	elif targets.size() == 9:
		if targets[1].has_method("take_damage"):
			targets[1].take_damage(damage);
		if targets[2].has_method("take_damage"):
			targets[2].take_damage(damage)
		if targets[3].has_method("take_damage"):
			targets[3].take_damage(damage)
		if targets[4].has_method("take_damage"):
			targets[4].take_damage(damage)
		if targets[5].has_method("take_damage"):
			targets[5].take_damage(damage)
		if targets[6].has_method("take_damage"):
			targets[6].take_damage(damage)
		if targets[7].has_method("take_damage"):
			targets[7].take_damage(damage)
		if targets[8].has_method("take_damage"):
			targets[8].take_damage(damage)
	
	elif targets.size() == 8:
		if targets[1].has_method("take_damage"):
			targets[1].take_damage(damage);
		if targets[2].has_method("take_damage"):
			targets[2].take_damage(damage)
		if targets[3].has_method("take_damage"):
			targets[3].take_damage(damage)
		if targets[4].has_method("take_damage"):
			targets[4].take_damage(damage)
		if targets[5].has_method("take_damage"):
			targets[5].take_damage(damage)
		if targets[6].has_method("take_damage"):
			targets[6].take_damage(damage)
		if targets[7].has_method("take_damage"):
			targets[7].take_damage(damage)

	elif targets.size() == 7:
		if targets[1].has_method("take_damage"):
			targets[1].take_damage(damage);
		if targets[2].has_method("take_damage"):
			targets[2].take_damage(damage)
		if targets[3].has_method("take_damage"):
			targets[3].take_damage(damage)
		if targets[4].has_method("take_damage"):
			targets[4].take_damage(damage)
		if targets[5].has_method("take_damage"):
			targets[5].take_damage(damage)
		if targets[6].has_method("take_damage"):
			targets[6].take_damage(damage)

	elif targets.size() == 6:
		if targets[1].has_method("take_damage"):
			targets[1].take_damage(damage);
		if targets[2].has_method("take_damage"):
			targets[2].take_damage(damage)
		if targets[3].has_method("take_damage"):
			targets[3].take_damage(damage)
		if targets[4].has_method("take_damage"):
			targets[4].take_damage(damage)
		if targets[5].has_method("take_damage"):
			targets[5].take_damage(damage)

	elif targets.size() == 5:
		if targets[1].has_method("take_damage"):
			targets[1].take_damage(damage);
		if targets[2].has_method("take_damage"):
			targets[2].take_damage(damage)
		if targets[3].has_method("take_damage"):
			targets[3].take_damage(damage)
		if targets[4].has_method("take_damage"):
			targets[4].take_damage(damage)

	elif targets.size() == 4:
		if targets[1].has_method("take_damage"):
			targets[1].take_damage(damage);
		if targets[2].has_method("take_damage"):
			targets[2].take_damage(damage)
		if targets[3].has_method("take_damage"):
			targets[3].take_damage(damage)

	elif targets.size() == 3:
		if targets[1].has_method("take_damage"):
			targets[1].take_damage(damage);
		if targets[2].has_method("take_damage"):
			targets[2].take_damage(damage)

	elif targets.size() == 2:
		if targets[1].has_method("take_damage"):
			targets[1].take_damage(damage)
	else:
		return
