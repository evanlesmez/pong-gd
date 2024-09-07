extends Node2D

var speed = 1000
# Called when the node enters the scene tree for the first time.
func _ready():
    pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
    var eff_speed = speed * delta
    if Input.is_action_pressed("move_down_p1"):
        position.y += eff_speed

    if Input.is_action_pressed("move_up_p1"):
        position.y -= eff_speed
