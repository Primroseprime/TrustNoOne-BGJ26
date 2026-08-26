extends Node2D

@onready var Main_Menu_Scene = preload("res://Scenes/Menu Scenes/Main Menu Scene/main_menu.tscn").instantiate()

func _ready() -> void:
	add_child(Main_Menu_Scene)
