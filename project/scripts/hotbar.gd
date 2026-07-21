extends Control	

#Here is the export for the items in the hotbar
@export var items:Array[EquippableItem]
#Why am i even labeling this. You can read it.
var equipped_item: EquippableItem
var selected_slot = null
@onready var held_item_display = $"../../HeldItemDisplay"
#Anyways here are the onreadys for each item display sprite
@onready var item_display1 = $Sprite2D/displays/display1
@onready var item_display2 = $Sprite2D/displays/display2
@onready var item_display3 = $Sprite2D/displays/display3
@onready var item_display4 = $Sprite2D/displays/display4
@onready var item_display5 = $Sprite2D/displays/display5
@onready var item_display6 = $Sprite2D/displays/display6


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#Every frame the item displays's textures are updated.
	#The is_node_ready is required to avoid returning a error.
	if is_node_ready():
		item_display1.texture = items[0].texture
		item_display2.texture = items[1].texture
		item_display3.texture = items[2].texture
		item_display4.texture = items[3].texture
		item_display5.texture = items[4].texture
		item_display6.texture = items[5].texture
		
		update_equipped_item()
		update_held_item_display()
	#I could probably make this more efficient by not running this every frame.

func update_held_item_display():
	if held_item_display.is_node_ready() and equipped_item != null:
		held_item_display.texture = equipped_item.texture
	elif selected_slot == null:
		held_item_display.texture = null
func update_equipped_item():
	if Input.is_action_just_pressed("1"):
		if selected_slot != 0:
			equipped_item = items[0]
			selected_slot = 0
		else:
			equipped_item = null
			selected_slot = null
	if Input.is_action_just_pressed("2"):
		if selected_slot != 1:
			equipped_item = items[1]
			selected_slot = 1
		else:
			equipped_item = null
			selected_slot = null
	if Input.is_action_just_pressed("3"):
		if selected_slot != 2:
			equipped_item = items[2]
			selected_slot = 2
		else:
			equipped_item = null
			selected_slot = null
	if Input.is_action_just_pressed("4"):
		if selected_slot != 3:
			equipped_item = items[3]
			selected_slot = 3
		else:
			equipped_item = null
			selected_slot = null
	if Input.is_action_just_pressed("5"):
		if selected_slot != 4:
			equipped_item = items[4]
			selected_slot = 4
		else:
			equipped_item = null
			selected_slot = null
	if Input.is_action_just_pressed("6"):
		if selected_slot != 5:
			equipped_item = items[5]
			selected_slot = 5
		else:
			equipped_item = null
			selected_slot = null
