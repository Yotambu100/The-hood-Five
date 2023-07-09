extends Node2D


# Called when the node enters the scene tree for the first time.


func _on_level_1_pressed():
	get_tree().change_scene_to_file("res://level_real_1.tscn")
	
func _on_level_2_pressed():
	get_tree().change_scene_to_file("res://level_real_2.tscn")	


func _on_level_3_pressed():
	get_tree().change_scene_to_file("res://level_real_3.tscn")	


func _on_level_4_pressed():
	get_tree().change_scene_to_file("res://level_real_4.tscn")	


func _on_level_5_pressed():
	get_tree().change_scene_to_file("res://level_real_5.tscn")	


func _on_level_6_pressed():
	get_tree().change_scene_to_file("res://level_real_6.tscn")	

func _on_level_7_pressed():
	pass# get_tree().change_scene_to_file("res://level_real_7.tscn")	


func _on_level_8_pressed():
	pass #get_tree().change_scene_to_file("res://level_real_8.tscn")	


func _on_back_button_pressed():
	get_tree().change_scene_to_file("res://main.tscn")
	
