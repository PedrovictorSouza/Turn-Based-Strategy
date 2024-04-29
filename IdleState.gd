extends PlayerStates


func enter(_player):
	#player.set_animation("Idle")
	super.enter(_player)
	print("macetei")

func update(player, _delta):
	if Input.is_action_pressed("ui_right") or Input.is_action_pressed("ui_left"):
		player.state_machine.transition_to("RunState")

func exit(_player):
	pass

func _ready():
	enter(self)
