extends Area2D

@onready var timer = $Timer

func _on_body_entered(body):
	print("You died!")

	#everything slows down when collision happen
	Engine.time_scale = 0.7
	timer.start()
	body.playdead()

	
func _on_timer_timeout():
	Engine.time_scale = 1
	get_tree().reload_current_scene()
