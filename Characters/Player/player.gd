class_name Player
extends CharacterBody2D

@export var speed : float = 500.0
@export var gravity : float = 1500.0
@export var jump_power : float = 500.0

@onready var sprite_anim : AnimatedSprite2D = $Knight
@onready var animation : AnimationPlayer = $AnimationPlayer
