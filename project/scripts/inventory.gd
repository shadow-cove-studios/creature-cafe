extends Resource

class_name Inventory

@export var slots: Array[InventorySlot]

signal update

#yes, i wrote this
#no, i've yet to document this and add comments
#If you're coming back here to refactor, maintain, or modify this, good luck.

func insert(item: InventoryItem):
	var itemslots = slots.filter(func(slot): return slot.item == item)
	if !itemslots.is_empty():
		itemslots[0].amount += 1
	else:
		var emptyslots = slots.filter(func(slot): return slot.item == null)
		if !emptyslots.is_empty():
			emptyslots[0].item = item
			emptyslots[0].amount = 1
		
	update.emit()
	
	
