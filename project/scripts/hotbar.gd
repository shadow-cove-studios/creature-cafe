extends Control

@export var items:Array[EquippableItem]
@onready var itemdisplay1 = $Sprite2D/displays/display1
@onready var itemdisplay2 = $Sprite2D/displays/display2
@onready var itemdisplay3 = $Sprite2D/displays/display3
@onready var itemdisplay4 = $Sprite2D/displays/display4
@onready var itemdisplay5 = $Sprite2D/displays/display5
@onready var itemdisplay6 = $Sprite2D/displays/display6
 

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if is_node_ready():
		itemdisplay1.texture = items[0].texture
		itemdisplay2.texture = items[1].texture
		itemdisplay3.texture = items[2].texture
		itemdisplay4.texture = items[3].texture
		itemdisplay5.texture = items[4].texture
		itemdisplay6.texture = items[5].texture
