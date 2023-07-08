extends Node2D
var timer=5


var level_actions =["p", "p", "p", "p", "p", "p", "p", "p", "p", "p", "p", "p", "r", "jr", "r", "r", "r", "r", "j", "j"]

			
# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("CanvasLayer/settingCanvas").hide()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_tile_map_ready():
	pass # Replace with function body.
	

func _on_settings_button_pressed():#stop the game 
	get_node("CanvasLayer/settingCanvas").show()


func _on_button_settings_pressed():
	get_tree().change_scene_to_file("res://main.tscn")

func _on_timer_countdown_1_timeout():
	if timer>-1:
		var clock = get_node("CanvasLayer/LBL_Time1")
		clock.set_text(str(timer)+" seconds left")
		if (timer==0):
			clock.set_text("your time is up !")
		timer -=1

		
func _on_back_button_pressed():#restart the game
	get_node("CanvasLayer/settingCanvas").hide()



func _on_quit_button_pressed():
	get_tree().quit()
