scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.shutter.animation.open_flat.local_anim_time 0
scoreboard players set @s aj.shutter.animation.open_flat.loop_mode 2
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:shutter/zzzzzzzz/animations/open_flat/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.shutter.animation.open_flat