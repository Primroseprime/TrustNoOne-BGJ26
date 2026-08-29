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
signal Game_State_Play
func Play():
	emit_signal("Game_State_Play")

# Var for menus
var Current_Menu = null

# Clicked Options -> Open Options Scene
func Options():
	if Current_Menu != null:
		return
	Current_Menu = Options_Scene.instantiate()
	add_child(Current_Menu)
	Disable_Main_Menu()

# Clicked Credits -> Open Credit Scene
func Credits():
	if Current_Menu != null:
		return
	Current_Menu = Credits_Scene.instantiate()
	add_child(Current_Menu)
	Disable_Main_Menu()

# Clicked Quit -> Quit
func Quit():
	get_tree().quit()
	
	# Menu Close if 'ESC'
func _input(event: InputEvent) -> void:
	if event.is_action_pressed("ESC") and Current_Menu != null:
		Current_Menu.queue_free()
		Current_Menu = null
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

func Reset_Buttons():
	$"Main Menu/Play Button/Button Area".is_hovering = false
	$"Main Menu/Options Button/Button Area".is_hovering = false
	$"Main Menu/Credits Button/Button Area".is_hovering = false
	$"Main Menu/Quit Button/Button Area".is_hovering = false
