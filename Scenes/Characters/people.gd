extends Node2D

# Spawn Annie
var Tutorial_Complete := false
func _ready() -> void:
	Choose_Character()

#
# Character Spawning
#

@onready var Annie_Scene = preload("res://Scenes/Characters/annie.tscn")
@onready var Rick_Scene = preload("res://Scenes/Characters/rick.tscn")

var Current_Character = null

# Character Picker
func Choose_Character():
	if Tutorial_Complete == false:
		Spawn_Annie()
	else:
		Spawn_Rick()

# Characters Spawns

func Spawn_Annie():
	Current_Character = Annie_Scene.instantiate()
	add_child(Current_Character)

func Spawn_Rick():
	Current_Character = Rick_Scene.instantiate()
	add_child(Current_Character)

# Info 

var Jacket_Color = null
var Hair_Color = null
