extends Light2D

var new_color: Color

# Called when the node enters the scene tree for the first time.
func _ready():
	$Timer.start()
	$CryingAtTheClub.play()

func randomColor():
	randomize()
	return (Color(randf(), randf(), randf(), 1.0))

func _on_Timer_timeout():
	self.color = randomColor()
