execute if score @s aj.shutter.animation.close_up.loop_mode = $aj.loop_mode.loop aj.i run function animated_java:shutter/zzzzzzzz/animations/close_up/end_loop
execute if score @s aj.shutter.animation.close_up.loop_mode = $aj.loop_mode.once aj.i run function animated_java:shutter/animations/close_up/stop
execute if score @s aj.shutter.animation.close_up.loop_mode = $aj.loop_mode.hold aj.i run function animated_java:shutter/animations/close_up/pause