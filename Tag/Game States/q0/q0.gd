extends Control

var music = AudioServer.get_bus_index("Master")
@onready var sound = $Sound

func _on_play_pressed():
	get_tree().change_scene_to_file("res://Game States/q1/q1.tscn")

func _on_demo_pressed():
	get_tree().change_scene_to_file("res://Game States/q2/q2.tscn")
	
func _on_exit_pressed():
	get_tree().quit()

func _on_sound_pressed():
	var is_muted = AudioServer.is_bus_mute(music)
	AudioServer.set_bus_mute(music, not is_muted)
	if is_muted:
		sound.texture_normal = preload("res://Game States/q0/vfx/Sound Button.png")
	else:
		sound.texture_normal = preload("res://Game States/q0/vfx/Mute Button.png")
