extends Sprite

const laser_missle = preload("res://Missle.tscn")

export var MovingSpeed = 100

func _process(delta):
	
	if Input.is_key_pressed(KEY_LEFT):
		self.position.x -= MovingSpeed * delta
		
	if Input.is_key_pressed(KEY_RIGHT):
		self.position.x += MovingSpeed * delta
		
	if Input.is_key_pressed(KEY_UP):
			self.position.y -= MovingSpeed * delta
			
	if Input.is_key_pressed(KEY_DOWN):
		self.position.y += MovingSpeed * delta
		
		
func _input(event):
	if event is InputEventKey:
		if event.pressed && event.scancode == KEY_SPACE && event.echo == false:
			create_laser(self.position)
			
		
func create_laser(pos):
	var laser = laser_missle.instance()
	laser.set_position(pos)
	get_tree().get_root().add_child(laser)