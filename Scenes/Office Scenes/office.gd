extends Node2D

# Scenes
@onready var Notes_Scene = preload("res://Scenes/Office Scenes/Note Scene/notes_root.tscn").instantiate()

# Signal Connect
func _ready() -> void:
	$"Notes/Notes area".connect("Open_Notes_Scene", Open_Notes)

# Var 
var Notes_Opened := false

# Signal
signal Game_State_Menu

# Add Scene
func Open_Notes():
	add_child(Notes_Scene)
	Notes_Opened = true

# Remove Scene
func _input(event: InputEvent) -> void:
	if event.is_action_pressed("ESC"):
		if Notes_Opened:
			remove_child(Notes_Scene)
			Notes_Opened = false
		else:
			emit_signal("Game_State_Menu")
