extends Area2D

# on wall collide stay reverse
# get a little faster if it is player
var start_speed := 250
var speed := start_speed
var direction := Vector2(0,0)

func set_speed(new_speed:int) -> void:
    speed = new_speed

func set_direction(new_direction: Vector2) -> void:
    direction = new_direction

func _ready():
    area_entered.connect(_on_area_entered)
    set_direction(Vector2(-1,0))

func _process(delta):
    var velocity = direction * speed
    position += delta * velocity

func _on_area_entered(area_that_entered: Area2D) -> void:
    print('collision')
    set_direction(direction * -1)
    set_speed(speed + 5)
