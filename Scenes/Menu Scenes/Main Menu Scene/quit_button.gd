extends Area2D

# Var
var is_hovering := false

# Get if hovering
func _on_mouse_entered() -> void:
	is_hovering = true
func _on_mouse_exited() -> void:
	is_hovering = false

# When Clicked Quit -> Quit Game
func _input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("Left Click") and is_hovering:
		get_tree().quit()
