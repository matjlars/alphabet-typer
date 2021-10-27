extends Node

var current

func _ready():
	for c in get_children():
		c.hide()

func _input(event):
	if event is InputEventKey and event.pressed:
		show_letter(event.as_text())

func show_letter(letter : String):
	letter = letter.to_lower()
	var letter_node = get_node_or_null(letter)
	
	if letter_node:
		if current: current.hide()
		current = letter_node
		current.show()
