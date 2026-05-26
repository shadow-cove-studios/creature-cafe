extends Node

#Welcome to the recipe book. This is going to be many, MANY lines long.
#The recipe book is a global script(singleton), that contains every ingredient in the game,
#every recipe and every subrecipe. This could've been a json. or a spreadsheet.

#Here are the ingredients. The ingredients will probably be objects or nodes/scenes.
#For now, their placeholders are numbers. There will be hundreds of these ingredients in the full release.
var salt = 0
var black_pepper = 1
var cardamom = 2
var bone_dust = 3
var chicken_wing = 4
var corn_tortilla = 5
var baked_cod = 6 #Baked cod has to be cooked, but it is not a subrecipe/recipe. This is because it only has
#one ingredient. So instead of having a recipe, you just put raw cod in the oven and it turns baked.
var carne_asada = 7 #This would be a subrecipe, as it has multiple ingredients but i'm too lazy,
#so it will be an ingredient for now.
var tomato = 8
var onion = 9
var cilantro = 10
var lime = 11
var jalapeno = 12

#Here are the subrecipes.
var seasoning_1 = {
	"name": "Lacosian spice mix",
	"ingredients": [salt, black_pepper, cardamom, bone_dust],
	#This is made by prepare_in_bowl()
}
var pico_de_gallo = {
	"name": "Pico de Gallo",
	"ingredients":[tomato, cilantro, lime, jalapeno, salt, onion],
	#This is a prepare_in_bowl() subrecipe, too.
}
#and here are the full dish recipes.
var chicken_wings_1 = {
	"name": "Lacos style wings",
	"base item": chicken_wing,
	"contents": [seasoning_1],
	#Notice how there are no ingredients list here. That's because this is a base item recipe.
	#Instead of being created with a mix of items in a container, this will be created in a prepare_in_oven
	#function, which will check if the oven contains RecipeBook.chicken_wings_1["base item"], which
	#is chicken wing, and if oven.chicken_wing.contents == RecipeBook.chicken_wings_1["contents"],
	#which is seasoning_1. Then, prepare_in_oven() will transform it into lacos style wings. But
	#if it stays in the oven for too long, it'll be transformed into burnt mush.
}
var taco_1 = { #This is also a base item recipe, instead of a mix recipe
	"name": "Lacosian taco",
	"base item": corn_tortilla,
	"contents": [baked_cod, carne_asada, pico_de_gallo], 
	#This is made with prepare_baseitem_recipe(). We really should make these irl.
	#Carne Asada will have a different name in game, and it'll be made of a fantasy monster. Not a cow.
}
