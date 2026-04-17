extends Node

#Global game variables/data. ALL of this will be saved to file.
var playerData = {"player":{"position":Vector2(1185.0,376.0)},"name":""}

func playerSave():
	if not FileAccess.file_exists("user://players"):
		DirAccess.make_dir_recursive_absolute("user://players")
	var save = FileAccess.open("user://players/"+playerData.name+".plr.json",FileAccess.WRITE)
	var saveData = JSON.stringify(playerData)
	save.store_line(saveData)
	print("Save Complete")
	print(FileAccess.get_open_error())

func _ready():
	playerSave()
