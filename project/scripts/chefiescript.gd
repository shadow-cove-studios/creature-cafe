extends CharacterBody2D
## Walking script.
##
## A walking script, originally copy and pasted from the tutorial below,
## but it only worked on the x axis, and i then copy and pasted from a commment on the vid.
##
## original tutorial:              https://www.youtube.com/watch?v=KceMokK2qFA
## Commenter that i copied from:   marcosmachado6844

## prototypeBuild

@export var walkSpeed = 230 #self exlpanitory, the speed of wich the character walks.

## These player stat variables can be accessed by other scrips using $Player.hitpoints, or using
## get_node(directory/to/player).hitpoints, for example.
var hitpoints: int  = 20
var mana: int = 20
var hunger: int = 20

func get_input():#this functiun recives input and changes the character's velocity in effect
	var input_direction = Input.get_vector("left", "right", "up", "down") ##This variable recives the input of the keyboard,
	velocity = input_direction * walkSpeed

func _physics_process(_delta): #this function actually makes your guy move :)
	get_input()
	move_and_slide()
	if hitpoints<=0:
		get_tree().change_scene_to_file("res://scenes/menus/menu.tscn")
		
	
	
