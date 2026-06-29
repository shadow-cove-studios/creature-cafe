extends Area2D
 
const EvilDamage = 5
@onready var Chefie = $"../Player"
var isTouchingChefie = false

func _physics_process(_delta):
	if Chefie in get_overlapping_bodies() and not isTouchingChefie:
		Chefie.hitpoints -= EvilDamage
		isTouchingChefie = true
		print(Chefie.hitpoints)
	elif not Chefie in get_overlapping_bodies():
		isTouchingChefie = false
	
