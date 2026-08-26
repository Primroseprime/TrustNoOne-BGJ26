extends Node2D

# Get Secnes
@onready var Main_Menu_Scene = preload("res://Scenes/Menu Scenes/Main Menu Scene/main_menu.tscn")
@onready var Office_Scene = preload("res://Scenes/Office Scenes/Office Scene/office.tscn")

# Var
var Game_State = null

func _ready() -> void:
	Menu()

func Menu():
	if Game_State != null:
		Game_State.queue_free()
	Game_State = Main_Menu_Scene.instantiate()
	add_child(Game_State)
	Game_State.connect("Game_State_Play", Play)

func Play():
	if Game_State != null:
		Game_State.queue_free()
	Game_State = Office_Scene.instantiate()
	add_child(Game_State)
	Game_State.connect("Game_State_Menu", Menu)
