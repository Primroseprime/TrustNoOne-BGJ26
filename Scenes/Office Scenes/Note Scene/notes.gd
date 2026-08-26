extends Area2D

# Var
var is_hovering := false
# Signal
signal Open_Notes_Scene

# Get if Hovering
func _on_mouse_entered() -> void:
	is_hovering = true
func _on_mouse_exited() -> void:
	is_hovering = false

# When Clicking Notes Board -> Open Notes Scene
func _input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("Left Click") and is_hovering:
		emit_signal("Open_Notes_Scene")
