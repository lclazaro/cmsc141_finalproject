extends Control

func _on_resume_pressed():
	get_tree().change_scene_to_file("res://Game States/q2/q2.tscn")



func _on_start_pressed():
	get_tree().change_scene_to_file("res://Game States/q1/q1.tscn")
	
	
func _on_exit_pressed():
	get_tree().change_scene_to_file("res://Game States/q0/q0.tscn")
