extends Node2D

# Scenes
@onready var Notes_Scene = preload("res://Scenes/Office Scenes/Note Scene/notes_root.tscn").instantiate()

# Signal Connect
func _ready() -> void:
	$"Notes/Notes area".connect("Open_Notes_Scene", Open_Notes)

# Var 
var Notes_Opened := false

# Add Scene
func Open_Notes():
	add_child(Notes_Scene)
	Notes_Opened = true

# Remove Scene
func _input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("ESC") and Notes_Opened:
		remove_child(Notes_Scene)
		Notes_Opened = false
