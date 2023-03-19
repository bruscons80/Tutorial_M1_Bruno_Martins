extends CharacterBody2D

var speed = 65
var screen_size = Vector2()

func _ready():
	screen_size = get_viewport_rect().size

func _process(_delta):
	velocity = Vector2.ZERO

	if Input.is_action_pressed("ui_right"):
		velocity.x += 1
		$AnimationPlayer.play("right")
	if Input.is_action_pressed("ui_left"):
		velocity.x -= 1
		$AnimationPlayer.play("left")
	if Input.is_action_pressed("ui_down"):
		velocity.y += 1
		$AnimationPlayer.play("down")
	if Input.is_action_pressed("ui_up"):
		velocity.y -= 1
		$AnimationPlayer.play("Up")

	velocity = velocity.normalized()

	position += velocity * speed * _delta

	# Clamp the player's position to the screen size
	if $Sprite2D:
		var sprite_size = $Sprite2D.get_texture().get_size() * $Sprite2D.get_scale()
		var half_sprite_size = sprite_size / 2.0
		var min_position = half_sprite_size
		var max_position = screen_size - half_sprite_size
		position.x = clamp(position.x, min_position.x, max_position.x)
		position.y = clamp(position.y, min_position.y, max_position.y)
