extends Node

#var arrow = load("res://assets/Cursor Pack/PNG/Basic/Default/cursor_none.png")

var arrow = [load("res://assets/Cursor Pack/Vector/Outline/cursor_none.svg"),Input.CURSOR_ARROW]
var hand_point = [load("res://assets/Cursor Pack/Vector/Outline/hand_point.svg"),Input.CURSOR_POINTING_HAND]
var hand_open = [load("res://assets/Cursor Pack/Vector/Outline/hand_open.svg"),Input.CURSOR_MOVE]
var hand_closed = [load("res://assets/Cursor Pack/Vector/Outline/hand_closed.svg"),Input.CURSOR_DRAG]

var grab = load("res://assets/Cursor Pack/Vector/Outline/hand_point.svg")
func setCursor(string) -> void:

	match string:
		"arrow":
			Input.set_custom_mouse_cursor(arrow[0], arrow[1])
		"hand_point":
			Input.set_custom_mouse_cursor(hand_point[0], hand_point[1])
		"hand_open":
			Input.set_custom_mouse_cursor(hand_open[0], hand_open[1])
		"hand_closed":
			Input.set_custom_mouse_cursor(hand_closed[0], hand_closed[1])
		_:
			Input.set_custom_mouse_cursor(arrow[0], arrow[1])

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass
	#Input.set_custom_mouse_cursor(arrow, Input.CURSOR_ARROW)
	#Input.set_custom_mouse_cursor(hand, Input.CURSOR_POINTING_HAND)
	 # Replace with function body.

func change_mouse():
	if Input.is_key_pressed(KEY_1):
		print("arrow")
		setCursor("arrow")
	if Input.is_key_pressed(KEY_2):
		print("hand_point")
		setCursor("hand_point")
	if Input.is_key_pressed(KEY_3):
		print("hand_open")
		setCursor("hand_open")
	if Input.is_key_pressed(KEY_4):
		print("hand_closed")
		setCursor("hand_closed")
	if Input.is_key_pressed(KEY_5):
		print("asdf")
		setCursor("asdf")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	change_mouse()
	#print("hi")	
	pass
