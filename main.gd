extends Node2D





func _on_quit_pressed():
	get_tree().quit()


func _on_play_pressed():
	get_tree().change_scene_to_file("res://level1_screen.tscn")

var color = Color.hex64(0x9A6447)
var size = Vector2(100, 100)

func _draw():
	draw_rect(Rect2(0, 0, size.x, size.y), color)
