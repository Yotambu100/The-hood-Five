extends Node2D

var timer=10
var showDeadMessageSteps=0
var scaleDeadMessage=0.1
var rotationDeadMessage=0

var level_actions =["r","r", "l", "l", "l", "l", "jr","r","r","r","r","r"]
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_timer_countdown_3_timeout():
	if timer>-1:
		var clock = get_node("CanvasLayer/LBL_Time3")
		clock.set_text(str(timer)+" seconds left")
		if (timer==0):
			clock.set_text("your time is up !")
			Game.level_is_running=true
		timer -=1
	


func _on_reset_button_pressed():
	get_tree().change_scene_to_file("res://levels.tscn")


func _on_settings_button_pressed():
	get_tree().change_scene_to_file("res://levels.tscn")
