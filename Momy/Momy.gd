extends CharacterBody2D


@onready var anim = get_node("AnimatedSprite2D")

var endLevel = 5
func _ready():
	anim.play("Idle")

	
func _on_area_2d_body_entered(body):
	if body.name == "Player":
		var current_level = str(get_tree().get_current_scene().get_path())[-1]
		print(current_level)
		if (current_level == str(endLevel)):
			get_tree().change_scene_to_file("res://main.tscn")
		else:
			var next_level = int(current_level)+1
			get_tree().change_scene_to_file("res://level_real_" +str(next_level) + ".tscn")
