extends Sprite

export var missleSpeed = 150

func _process(delta):
	
	self.position.y -= missleSpeed * delta
	