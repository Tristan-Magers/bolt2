execute if entity @s[tag=aj.shutter.root] run function animated_java:shutter/zzzzzzzz/animations/close_curled/tween_resume_as_root
execute if entity @s[tag=!aj.shutter.root] run tellraw @a ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},{"text":"ERROR ☠","color":"red"},{"text":" > ","color":"gray"},[{"text":"The function","color":"yellow"},{"text":" animated_java:shutter/animations/close_curled/tween_resume ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]