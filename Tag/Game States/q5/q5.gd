extends Control

var music = AudioServer.get_bus_index("Master")
@onready var sound = $Sound

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass



func _on_resume_pressed():
	get_tree().change_scene_to_file("res://Game States/q4/q4.tscn")



func _on_exit_pressed():
	get_tree().change_scene_to_file("res://Game States/q0/q0.tscn")



func _on_sound_pressed():
	var is_muted = AudioServer.is_bus_mute(music)
	AudioServer.set_bus_mute(music, not is_muted)
	if is_muted:
		sound.texture_normal = preload("res://Game States/q5/vfx/Sound Button.png")
	else:
		sound.texture_normal = preload("res://Game States/q5/vfx/Mute Button.png")
