extends Node2D

# Signal Connect
func _ready() -> void:
	pass

# Var 
var Notes_Opened := false

# Signal
signal Game_State_Menu

# Remove Scene
func _input(event: InputEvent) -> void:
	if event.is_action_pressed("ESC"):
		emit_signal("Game_State_Menu")
