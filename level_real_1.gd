extends Node2D
var timer=5
var showDeadMessageSteps=0
var scaleDeadMessage=0.1
var rotationDeadMessage=0


var level_actions =["jr","r", "jr", "r", "r", "r", "j"]

			
# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	# Create a texture from an image file.



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass



func _on_tile_map_ready():
	pass # Replace with function body.
	

func show_Dead_Message():
	get_node("CanvasLayer/SpriteDeadMessage2D").show()
	get_node("CanvasLayer/SpriteDeadMessage2D").set_scale(Vector2(0.1,0.1))
	get_node("CanvasLayer/SpriteDeadMessage2D").set_rotation(rotationDeadMessage)
	
	
	

func _on_button_settings_pressed():
	get_tree().change_scene_to_file("res://main.tscn")

func _on_timer_countdown_1_timeout():
	if timer>-1:
		var clock = get_node("CanvasLayer/LBL_Time1")
		clock.set_text(str(timer)+" seconds left")
		if (timer==0):
			clock.set_text("your time is up !")
			Game.level_is_running = true 
			show_Dead_Message()
					#get_node("CharacterBody2D/CollisionShape2D").emit_signal("renamed")
					
		timer -=1
	if showDeadMessageSteps<7:
		if showDeadMessageSteps>-1:
			showDeadMessageSteps+=1
			scaleDeadMessage+=0.1
			rotationDeadMessage-=0.2
			print(scaleDeadMessage)
			get_node("CanvasLayer/SpriteDeadMessage2D").set_scale(Vector2(scaleDeadMessage,scaleDeadMessage))
			get_node("CanvasLayer/SpriteDeadMessage2D").set_rotation(0)
	
	


func _on_animated_sprite_2d_renamed():
	print("renamed")
