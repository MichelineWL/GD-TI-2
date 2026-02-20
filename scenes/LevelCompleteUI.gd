extends CanvasLayer

var next_level_scene = "res://scenes/Level2.tscn"

func _ready():
	# Ensure the UI process mode is set to always so it works when the game is paused
	process_mode = Node.PROCESS_MODE_ALWAYS

func _on_next_level_button_pressed():
	get_tree().paused = false
	get_tree().change_scene_to_file(next_level_scene)
