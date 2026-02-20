extends Area2D

func _on_ObjectiveArea_body_entered(body: RigidBody2D):
	if (body.name == "BlueShip" or body.name == "RedShip"):
		print("Reached objective!")
		if get_tree().current_scene.name == "MainLevel":
			call_deferred("show_level_complete_ui")

func show_level_complete_ui():
	# Load and instantiate the Level Complete UI
	var level_complete_ui = preload("res://scenes/LevelCompleteUI.tscn").instantiate()
	# Add it to the current scene
	get_tree().current_scene.add_child(level_complete_ui)
	# Pause the game
	get_tree().paused = true
