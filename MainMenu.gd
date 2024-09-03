extends Control

func _on_start_button_pressed():
	get_node("buttonClick").play()
	await get_tree().create_timer(0.5).timeout
	TransitionScreen.Transition()
	await TransitionScreen.on_transiton_finished
	get_tree().change_scene_to_file("res://VNintro.tscn")

func _on_quit_button_pressed():
	get_node("buttonClick").play()
	await get_tree().create_timer(0.5).timeout
	get_tree().quit()

func _process(_delta):
	if get_node("bgm").is_playing() == false:
		get_node("bgm").play()
