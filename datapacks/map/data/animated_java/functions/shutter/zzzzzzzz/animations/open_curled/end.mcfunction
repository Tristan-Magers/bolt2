execute if score @s aj.shutter.animation.open_curled.loop_mode = $aj.loop_mode.loop aj.i run function animated_java:shutter/zzzzzzzz/animations/open_curled/end_loop
execute if score @s aj.shutter.animation.open_curled.loop_mode = $aj.loop_mode.once aj.i run function animated_java:shutter/animations/open_curled/stop
execute if score @s aj.shutter.animation.open_curled.loop_mode = $aj.loop_mode.hold aj.i run function animated_java:shutter/animations/open_curled/pause