extends Node2D
var timer=5

var level_actions =["jr","r", "jr", "r", "r", "r", "j"]
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed():
	get_tree().change_scene_to_file("res://main.gd")


func _on_timer_countdown_3_timeout():
	if timer>-1:
		var clock = get_node("CanvasLayer/LBL_Time3")
		clock.set_text(str(timer)+" seconds left")
		if (timer==0):
			clock.set_text("your time is up !")
		timer -=1
	
