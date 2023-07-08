extends Node2D

var level_is_running = false
var Number_OF_LEVELS=5
#array to collect number of retries in each level, -2=done, -1 not started 
#var level_scores = Array[5]

# player stats
var JUMP_VELOCITY = -400.0
var JUMP_VELOCITY_SPRING = -1000.0

var cur_jump_velocity = JUMP_VELOCITY
