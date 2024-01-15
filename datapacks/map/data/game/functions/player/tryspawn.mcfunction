function game:id/spawn

execute as @s at @s if entity @e[tag=spawn,tag=id_share,limit=1] run effect give @s resistance 1 200 true
execute as @s at @s if entity @e[tag=spawn,tag=id_share,limit=1] run scoreboard players set @s invul 19
execute as @s at @s if entity @e[tag=spawn,tag=id_share,limit=1] run scoreboard players set @s removeBlind 3
execute as @s at @s if entity @e[tag=spawn,tag=id_share,limit=1] run scoreboard players set @s arrowReload 33
execute as @s at @s if entity @e[tag=spawn,tag=id_share,limit=1] run scoreboard players set @s fog_remove 4
execute as @s at @s if entity @e[tag=spawn,tag=id_share,limit=1] run effect give @s blindness 1 20 true
execute as @s at @s if entity @e[tag=spawn,tag=id_share,limit=1] run effect clear @s darkness
#execute as @s at @s if entity @e[tag=spawn,tag=id_share,limit=1] run item replace entity @s armor.chest with air
#execute as @s at @s if entity @e[tag=spawn,tag=id_share,limit=1] run item replace entity @s armor.head with air
execute as @s at @s if entity @e[tag=spawn,tag=id_share,limit=1] run tag @s add clear_invis
execute as @s at @s if entity @e[tag=spawn,tag=id_share,limit=1] run tag @s remove hasspawn
execute as @s at @s if entity @e[tag=spawn,tag=id_share,limit=1] run tag @s add used_spawn
execute as @s at @s if entity @e[tag=spawn,tag=id_share,limit=1] run scoreboard players set @s respawn 0

execute as @s at @s run tp @e[tag=spawn,tag=id_share,limit=1]
execute as @s at @s if entity @e[tag=spawn,tag=id_share,limit=1] run gamemode spectator
execute as @s at @s if entity @e[tag=spawn,tag=id_share,limit=1] run tp @s ~ ~50 ~
execute as @s at @s if entity @e[tag=spawn,tag=id_share,limit=1] run tag @s add teleport_down

execute as @e[tag=spawn,tag=id_share] at @s run particle minecraft:ash ~ ~0.8 ~ 0.12 0.39 0.12 1.1 20 force

execute as @s at @s run tag @e[tag=spawn,tag=id_share] add kill