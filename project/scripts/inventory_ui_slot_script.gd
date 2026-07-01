extends Panel


@onready var item_visual: Sprite2D = $Panel/item_display
@onready var amount_text: Label = $Panel/Label
@onready var item_text: Label = $Label

func update(slot: InventorySlot):
	if !slot:
		item_visual.visible = false
		amount_text.visible = false
		item_text.visible = false
	else:
		item_visual.visible = true
		item_visual.texture = slot.item.texture
		amount_text.visible = true
		item_text.visible = true
		item_text.text = slot.item.name
		if slot.amount > 1:
			amount_text.visible = true
			amount_text.text = str(slot.amount)
		else:
			amount_text.visible = false
			amount_text.text = str(slot.amount)
		amount_text.text = str(slot.amount)

	
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
