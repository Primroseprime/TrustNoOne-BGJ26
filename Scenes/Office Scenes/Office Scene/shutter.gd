extends Area2D

# Button Script

# Var for button
var is_hovering := false

# Get if Hovering
func _on_mouse_entered() -> void:
	is_hovering = true
func _on_mouse_exited() -> void:
	is_hovering = false

# When Clicking Shutter Button -> Switch shutter state (var Shutter_Closed)
func _input(event: InputEvent) -> void:
	if event.is_action_pressed("Left Click") and is_hovering:
		Shutter_closed = !Shutter_closed
		Shutter_Animation()

# Sprite Script

# Var for sprite
var Shutter_closed := false

# Sprite Movement
func Shutter_Animation():
	
	# Close Shutter
	if Shutter_closed:
		$"Shutter Sprite".frame = 1
	
	# Open Shutter
	elif !Shutter_closed:
		$"Shutter Sprite".frame = 0
