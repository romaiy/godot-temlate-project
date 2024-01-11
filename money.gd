extends StaticBody2D


# Called when the node enters the scene tree for the first time.
func _ready():
	hide()
	name = 'Money'
	position.x = randf_range(10.0, 470.0)
	position.y = randf_range(10.0, 710.0)
	$MoneyTimer.start()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func respawn_money():
	$RespawnMoneyTimer.start()

func _on_money_timer_timeout():
	show()

func _on_player_money_hit():
	hide()
	respawn_money()

func _on_respawn_money_timer_timeout():
	position.x = randf_range(10.0, 470.0)
	position.y = randf_range(10.0, 710.0)
	show()
	$RespawnMoneyTimer.stop()
