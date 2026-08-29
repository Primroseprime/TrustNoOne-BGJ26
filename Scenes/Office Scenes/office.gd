extends Node2D

# Scene Script

# Signal
signal Game_State_Menu

# Remove Scene
func _input(event: InputEvent) -> void:
	if event.is_action_pressed("ESC"):
		emit_signal("Game_State_Menu")

# Notes Script

# Var
var Note_Amount := 0

func Add_Note():
	if Note_Amount < 3:
		Note_Amount += 1
		$"Notes Board/Notes".Add_Note()
