extends Area2D

var exit = load("res://scene.tscn")
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body. Really only here incase future us needs to refactor this code.


# Called every frame. 'delta' is the elapsed time since the previous frame. Same case as the function above.
func _process(delta):
	pass


func _on_body_entered(body):
	if(body.is_in_group("teleportableObjects")):
		get_tree().change_scene_to_packed(exit)
		
