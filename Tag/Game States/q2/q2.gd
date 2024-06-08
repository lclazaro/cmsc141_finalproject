extends Node2D

var music = AudioServer.get_bus_index("Master")
@onready var sound = $Sound

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass



func _on_pause_pressed():
	get_tree().change_scene_to_file("res://Game States/q3/q3.tscn")
		
func _on_sound_pressed():
	var is_muted = AudioServer.is_bus_mute(music)
	AudioServer.set_bus_mute(music, not is_muted)
	if is_muted:
		sound.texture_normal = preload("res://Game States/q2/vfx/Sound Button.png")
	else:
		sound.texture_normal = preload("res://Game States/q2/vfx/Mute Button.png")

func _on_start_pressed():
	get_tree().change_scene_to_file("res://Game States/q1/q1.tscn")
