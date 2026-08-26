extends Area2D

# Checking is mouse is over button
var is_hovering := false

func _on_mouse_entered() -> void:
	is_hovering = true
func _on_mouse_exited() -> void:
	is_hovering = false

# If clicked -> send signal
signal Clicked

func _input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("Left Click") and is_hovering:
		emit_signal("Clicked")
