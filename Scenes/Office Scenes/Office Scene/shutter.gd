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
	
	# Move shutter to close (pos.y = 125.0)
	if Shutter_closed:
		print($"Shutter Sprite".global_position.y)
		$"Shutter Sprite".global_position.y += 225.0
		print($"Shutter Sprite".global_position.y)
	
	# Move shutter to open (pos.y = 350.0)
	elif !Shutter_closed:
		print($"Shutter Sprite".global_position.y)
		$"Shutter Sprite".global_position.y -= 225.0
		print($"Shutter Sprite".global_position.y)
