extends CanvasLayer

#ready function. Make the menu invisible and make sure the game is unpaused.
func ready():
	visible = false
	get_tree().paused = false

func _process(delta):
	if Input.is_action_just_pressed("pause"):
		if get_tree().paused == true:
			visible = false
			get_tree().paused = false
		else:
			
			visible = true
			get_tree().paused = true

func _on_resume_pressed():
	if get_tree().paused == true:
		visible = false
		get_tree().paused = false


func _on_quit_button_pressed():
	get_tree().paused = false
	get_tree().change_scene_to_file("res://scenes/menus/menu.tscn")
