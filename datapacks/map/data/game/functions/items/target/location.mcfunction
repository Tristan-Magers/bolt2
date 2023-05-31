execute as @s at @s run function game:algor/random_64
execute as @s at @s run function game:map/towers/target

scoreboard players add @s timer 1

tag @s remove valid
tag @s remove bad

execute at @s unless entity @a[distance=..18,gamemode=!spectator] if entity @a[distance=18..44,gamemode=!spectator] run tag @s add valid

execute at @s if entity @a[distance=..10,gamemode=!spectator] run tag @s add bad
execute at @s if block ~ ~ ~ target run tag @s add bad

execute as @s[tag=!valid,scores={timer=..100}] at @s run function game:items/target/location
execute as @s[tag=bad,scores={timer=..150}] at @s run function game:items/target/location