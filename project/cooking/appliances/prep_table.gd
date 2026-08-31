extends Node2D

const RED_INGREDIENT = preload("res://cooking/cooking_objects/red_ingredient.tscn")
const DEFAULT_CO = preload("res://cooking/cooking_object.tscn")
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed():
	var red_ingredient = RED_INGREDIENT.instantiate()
	red_ingredient.global_position = Vector2(152,320)
	add_child(red_ingredient)


func _on_whitebutton_pressed():
	var default_CO = DEFAULT_CO.instantiate()
	default_CO.global_position = Vector2(200,320)
	add_child(default_CO)
