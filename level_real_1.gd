extends Node2D
var timer=30
var showDeadMessageSteps=0
var scaleDeadMessage=0.1
var rotationDeadMessage=0


var level_actions =[ "r", "r", "r", "r", "r","r", "r","r"]

			
# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("CanvasLayer/settingCanvas").hide()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_tile_map_ready():
	pass # Replace with function body.
	


	
	
	





func _on_timer_countdown_1_timeout():
	if timer>-1:
		var clock = get_node("CanvasLayer/LBL_Time1")
		clock.set_text(str(timer)+" seconds left")
		if (timer==0):
			Game.level_is_running = true
			clock.set_text("your time is up !")
			Game.level_is_running = true 
					#get_node("CharacterBody2D/CollisionShape2D").emit_signal("renamed")
					
		timer -=1
	
	
	


func _on_animated_sprite_2d_renamed():
	print("renamed")


	
	

		
func _on_back_button_pressed():#restart the game
	get_node("CanvasLayer/settingCanvas").hide()


func _on_quit_button_pressed():
	get_tree().quit()

func _on_settings_button_pressed():
	get_tree().change_scene_to_file("res://levels.tscn")
	

func _on_reset_button_pressed():
	get_tree().change_scene_to_file("res://levels.tscn")


