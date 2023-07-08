extends Node2D


# Called when the node enters the scene tree for the first time.


func _on_button_pressed():
	get_tree().change_scene_to_file("res://level_real_1.tscn")



func _on_button_2_pressed():
	get_tree().change_scene_to_file("res://level_real_2.tscn")


func _on_button_5_pressed():
	get_tree().change_scene_to_file("res://level_real_5.tscn")


func _on_button_4_pressed():
	get_tree().change_scene_to_file("res://level_real_4.tscn")
