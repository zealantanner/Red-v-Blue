extends AnimatableBody2D

var CurrentMouseLocation: Vector2


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	CurrentMouseLocation = get_global_mouse_position()
 # Replace with function body.



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	CurrentMouseLocation = get_global_mouse_position()
	#position = get_global_mouse_position()
	
	self.position = CurrentMouseLocation
	
	if $RayCast2D.is_colliding():
		print("collide")
		
		
	
	if Input.is_key_pressed(KEY_0):
		print(self.position)
	if Input.is_key_pressed(KEY_1):
		print("interpolation on")
		self.position = CurrentMouseLocation
	else:
		print("interpolation off")
		self.position = CurrentMouseLocation
