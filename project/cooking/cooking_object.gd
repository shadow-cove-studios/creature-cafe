extends Sprite2D

var dragging = false
var of = Vector2(0,0) # "of" means offset. The name "offset" is already a property of the node.
var mouse_entered = true
var context_menu_open = false
var context_menu_active = false
const CONTEXT_MENU = preload("res://cooking/co_context_menu.tscn")
var context_menu
@export var resource: CookingObject
# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func _process(delta):
	#Ahhh. Some more ridiculous brain hurting logic. It works though.
	if context_menu_open == true and context_menu_active == false:
		context_menu = CONTEXT_MENU.instantiate()
		context_menu.position = Vector2(25,-25)
		add_child(context_menu)
		if resource.context_menu_options[0] != null: context_menu.option_1.text = resource.context_menu_options[0]
		if resource.context_menu_options[1] != null:context_menu.option_2.text = resource.context_menu_options[1]
		if resource.context_menu_options[2]!= null:context_menu.option_3.text = resource.context_menu_options[2]
		if resource.context_menu_options[3] != null:context_menu.option_4.text = resource.context_menu_options[3]
		if resource.context_menu_options[4] != null:context_menu.option_5.text = resource.context_menu_options[4]
		context_menu_active = true
		
	if context_menu_open == false and context_menu_active == true:
		if context_menu!= null: context_menu.queue_free()
		context_menu_active = false
	if dragging:
		position = get_global_mouse_position() - of
	if dragging:
		if Input.is_action_just_pressed("right click"):
			context_menu_open = !context_menu_open
func _on_button_button_down():
	dragging = true
	print("e")
	of = get_global_mouse_position() - global_position


func _on_button_button_up():
	dragging = false


func _on_button_mouse_entered():
	mouse_entered = true

func _on_button_mouse_exited():
	mouse_entered = false
