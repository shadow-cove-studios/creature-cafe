extends Control

var is_open = false
@onready var inv: Inventory = preload("res://inventory/inventories/player_inventory.tres")
@onready var slots: Array = $NinePatchRect/GridContainer.get_children()

func _ready():
	inv.update.connect(update_slots)
	update_slots()
	close()
func update_slots():
	for i in range(min(inv.slots.size(), slots.size())):
		slots[i].update(inv.slots[i])

# I feel like im lost in an endless maze of .gd files. There has to be a 
# better way to navigate a codebase. Or or is it called a game? I don't even know.
# i'd creat a diagram to put in the documentation, but i barely even remember my way around.
func _process(delta):
	if Input.is_action_just_pressed("open inventory"):
		if is_open:
			close()
		else:
			open()

func open():
	visible = true
	is_open = true

func close():
	visible = false
	is_open = false
