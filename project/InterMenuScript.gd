extends Node2D


var inzone = false
var camerashifted = false
var justleft = false
#this logic scripting is pissing me off. Hard.
func _physics_process(_delta):
	if $Player in $Area2D3.get_overlapping_bodies():
		if inzone == false and camerashifted == false:
			$Camera2D.position.y -= 100
			inzone = true
			camerashifted = true
		if inzone == true:
			return
	if $Player not in $Area2D3.get_overlapping_bodies() and inzone:
		inzone = false
		justleft = true
	if $Player in $Area2D3.get_overlapping_bodies() and inzone:
		camerashifted = false
	if $Player in $Area2D3.get_overlapping_bodies() and justleft == true:
		$Camera2D.position.y +=100
		justleft = false
	if $Player not in $Area2D3.get_overlapping_bodies() and justleft == false:
		inzone = false
		camerashifted = false
	print(camerashifted)
#I just reopened the script after like 2 days and i have no clue where i left off
