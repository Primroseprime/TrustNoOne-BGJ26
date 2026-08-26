extends Node2D

# Get Scenes
@onready var Credits_Scene = preload("res://Scenes/Menu Scenes/Credits Menu Scene/credits_menu.tscn")
@onready var Options_Scene = preload("res://Scenes/Menu Scenes/Options/options_menu.tscn")

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
var Options_Scene_Instantiated
var Options_Menu_Open := false
func Options():
	Options_Scene_Instantiated = Options_Scene.instantiate()
	add_child(Options_Scene_Instantiated)
	Options_Menu_Open = true
	Disable_Main_Menu()

# Clicked Credits -> Open Credit Scene
var Credits_Scene_Instantiated
var Credits_Menu_Open := false
func Credits():
	Credits_Scene_Instantiated = Credits_Scene.instantiate()
	add_child(Credits_Scene_Instantiated)
	Credits_Menu_Open = true
	Disable_Main_Menu()

# Clicked Quit -> Quit
func Quit():
	get_tree().quit()

func _input(event: InputEvent) -> void:
	# Options Menu Close if 'ESC'
	if Input.is_action_just_pressed("ESC") and Options_Menu_Open:
		Options_Scene_Instantiated.queue_free()
		Options_Menu_Open = false
		Enable_Main_Menu()
	
	# Credits Menu Close if 'ESC'
	if Input.is_action_just_pressed("ESC") and Credits_Menu_Open:
		Credits_Scene_Instantiated.queue_free()
		Credits_Menu_Open = false
		Enable_Main_Menu()

# Disable Main Menu Button while other menu open
func Disable_Main_Menu():
	$"Main Menu/Play Button/Button Area".input_pickable = false
	$"Main Menu/Options Button/Button Area".input_pickable = false
	$"Main Menu/Credits Button/Button Area".input_pickable = false
	$"Main Menu/Quit Button/Button Area".input_pickable = false

# Enable Main Menu Button after closing other menus
func Enable_Main_Menu():
	$"Main Menu/Play Button/Button Area".input_pickable = true
	$"Main Menu/Options Button/Button Area".input_pickable = true
	$"Main Menu/Credits Button/Button Area".input_pickable = true
	$"Main Menu/Quit Button/Button Area".input_pickable = true
