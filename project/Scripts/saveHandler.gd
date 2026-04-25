extends Node

#Global game variables/data. ALL of this will be saved to file. PRIMITIVES ONLY.
var playerData = {"player":{"position":{"x":1185.0,"y":376.0}},"name":""}

func playerSave():
	if not FileAccess.file_exists("user://players"):
		DirAccess.make_dir_recursive_absolute("user://players")
	var save = FileAccess.open_compressed("user://players/"+playerData.name+".plr.json",FileAccess.WRITE,FileAccess.COMPRESSION_ZSTD)
	var saveData = JSON.stringify(playerData)
	save.store_line(saveData)
	save.close()

func playerLoadIteration(obj:Dictionary):
	for i in obj.keys():
		if playerData.has(i):
			if not typeof(obj[i]) == TYPE_DICTIONARY:
				playerData[i] = obj[i]
			else:
				playerLoadIteration(obj[i])

func playerLoad(n=playerData.name):
	if FileAccess.file_exists("user://players/"+n+".plr.json"):
		var save = FileAccess.open_compressed("user://players/"+n+".plr.json",FileAccess.READ,FileAccess.COMPRESSION_ZSTD)
		save = JSON.parse_string(save.get_as_text())
		playerLoadIteration(save)
