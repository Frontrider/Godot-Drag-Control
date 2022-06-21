#Add this node as the child of a Control node, then hook up the gui input signal to the _on_input function.

extends Node
class_name DragController

var target:Control
var clicked = false

func _ready():
    target = get_parent()
    pass

func _on_input(event):
    clicked = Input.is_action_pressed("left_click")
    
    if event is InputEventMouseMotion and clicked:
        target.rect_position +=event.relative
        pass
    pass
