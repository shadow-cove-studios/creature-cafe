extends Node2D

var inzone_top = false
var camerashifted_top = false
var justleft_top = false

var inzone_left = false
var camerashifted_left = false
var justleft_left = false

var inzone_right = false
var camerashifted_right = false
var justleft_right = false
#this logic scripting is pissing me off. Hard.

#I barely even have a clue how this works. And good luck figuring out how.
func _physics_process(_delta):
	
	##One more time. Before changing this, remember
	##              ##If it works, DON'T CHANGE IT##
	if $Player in $Area2D3.get_overlapping_bodies() and camerashifted_left == false and camerashifted_right == false:
		if inzone_top == false and camerashifted_top == false:
			$Camera2D.position.y -= 648
			$Player.position.y -= 45
			inzone_top = true
			camerashifted_top = true
		if inzone_top == true:
			return
	if $Player not in $Area2D3.get_overlapping_bodies() and inzone_top:
		inzone_top = false
		justleft_top = true
	if $Player in $Area2D3.get_overlapping_bodies() and inzone_top:
		camerashifted_top = false
	if $Player in $Area2D3.get_overlapping_bodies() and justleft_top == true:
		$Camera2D.position.y +=648
		$Player.position.y +=45
		justleft_top = false
	if $Player not in $Area2D3.get_overlapping_bodies() and justleft_top == false:
		inzone_top = false
		camerashifted_top = false
	#This is the lowkirkenuintologicalowstate. Peak coding. Or scripting, or whatever.
	if $Player in $Area2D.get_overlapping_bodies() and camerashifted_top == false and camerashifted_right == false:
		if inzone_left == false and camerashifted_left == false:
			$Camera2D.position.x -= 1152
			$Player.position.x -= 45
			inzone_left = true
			camerashifted_left = true
		if inzone_left == true:
			return
	if $Player not in $Area2D.get_overlapping_bodies() and inzone_left:
		inzone_left = false
		justleft_left = true
	if $Player in $Area2D.get_overlapping_bodies() and inzone_left:
		camerashifted_left = false
	if $Player in $Area2D.get_overlapping_bodies() and justleft_left == true:
		$Camera2D.position.x +=1152
		$Player.position.x +=45
		justleft_left = false
	if $Player not in $Area2D.get_overlapping_bodies() and justleft_left == false:
		inzone_left = false
		camerashifted_left = false
	
	if $Player in $Area2D2.get_overlapping_bodies() and camerashifted_top == false and camerashifted_left == false:
		if inzone_right == false and camerashifted_right == false:
			$Camera2D.position.x += 1152
			$Player.position.x += 45
			inzone_right = true
			camerashifted_right = true
		if inzone_right == true:
			return
	if $Player not in $Area2D2.get_overlapping_bodies() and inzone_right:
		inzone_right = false
		justleft_right = true
	if $Player in $Area2D2.get_overlapping_bodies() and inzone_right:
		camerashifted_right = false
	if $Player in $Area2D2.get_overlapping_bodies() and justleft_right == true:
		$Camera2D.position.x -=1152
		$Player.position.x -=45
		justleft_right = false
	if $Player not in $Area2D2.get_overlapping_bodies() and justleft_right == false:
		inzone_right = false
		camerashifted_right = false
#I just reopened the script after like 2 days and i have no clue where i left off
