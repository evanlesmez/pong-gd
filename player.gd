extends Area2D 

var speed := 1000
@export var move_up_action := "move_up_p1"
@export var move_down_action := "move_down_p1"
var screen_size: Vector2

# Called when the node enters the scene tree for the first time.
func _ready():
    pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
    screen_size = get_viewport_rect().size
    var eff_speed : float = speed * delta
    if Input.is_action_pressed(move_down_action):
        position.y += eff_speed

    if Input.is_action_pressed(move_up_action):
        position.y -= eff_speed

    position.y = clamp(position.y, 0, screen_size.y)
