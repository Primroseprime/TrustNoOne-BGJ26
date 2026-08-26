extends Node2D

# Get Scenes
@onready var Credits_Scene = preload("res://Scenes/Menu Scenes/Credits Menu Scene/credits_menu.tscn")

# Connect Buttons
func _ready() -> void:
	$"Main Menu/Play Button/Button Area".connect("Clicked", Play)
	$"Main Menu/Options Button/Button Area".connect("Clicked", Options)
	$"Main Menu/Credits Button/Button Area".connect("Clicked", Credits)
	$"Main Menu/Quit Button/Button Area".connect("Clicked", Quit)

#Clicked Play -> Start Game
func Play():
	pass

# Clicked Options -> Open Options Scene
func Options():
	pass

# Clicked Credits -> Open Credit Scene
var Credits_Scene_Instantiated
func Credits():
	Credits_Scene_Instantiated = Credits_Scene.instantiate()
	add_child(Credits_Scene_Instantiated)
	Credit_Menu_Open = true
	
# Close Credit Scene if open and pressed 'ESC'
var Credit_Menu_Open := false
func _input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("ESC"):
		Credits_Scene_Instantiated.queue_free()

# Clicked Quit -> Quit
func Quit():
	get_tree().quit()
