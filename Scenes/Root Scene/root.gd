extends Node2D

# Get Secnes
@onready var Main_Menu_Scene = preload("res://Scenes/Menu Scenes/Main Menu Scene/main_menu.tscn").instantiate()
@onready var Office_Scene = preload("res://Scenes/Office Scenes/Office Scene/office.tscn").instantiate()

func _ready() -> void:
	Main_Menu_Scene.connect("Game_State_Play", Play)
	Office_Scene.connect("Game_State_Menu", Menu)
	Menu()

func Menu():
	remove_child(Office_Scene)
	add_child(Main_Menu_Scene)
	Main_Menu_Scene.Reset_Buttons()


func Play():
	remove_child(Main_Menu_Scene)
	add_child(Office_Scene)
