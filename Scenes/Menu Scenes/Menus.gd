extends Node2D

@onready var Credits_Menu_Scene = preload("res://Scenes/Menu Scenes/Credits Menu Scene/credits_menu.tscn").instantiate()

# Signal Connect
func _ready() -> void:
	$"Main Menu/Credits Button/Credits area".connect("Show_Credits_Scene", Show_Credits)

# Var
var Credits_Opened := false

# Show Credit Scene
func Show_Credits():
	add_child(Credits_Menu_Scene)
	Credits_Opened = true

# Remove Credit Scene
func _input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("ESC") and Credits_Opened:
		remove_child(Credits_Menu_Scene)
		Credits_Opened = false
