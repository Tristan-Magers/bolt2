#
effect clear @s minecraft:poison

#
tag @s remove exploded
tag @s remove killed
scoreboard players set @s KILL_ID -1
#
effect clear @s speed
effect clear @s jump_boost

#
scoreboard players set @a item_acid 120
scoreboard players set @a item_minion 120
scoreboard players set @a item_boost 120

tag @s remove dark

function game:game/infected/zombie_bonuses

#execute if score .mode .data = .1 .num run clear @s[scores={kills=0,respawn=2}] written_book
execute as @s[scores={respawn=2}] if score .mode .data = .1 .num if score .tmi .data matches 1 run loot give @s mine 226 -60 -240 air{drop_contents:1b}
execute as @s[scores={respawn=2}] if score .mode .data = .1 .num if score .tmi .data matches 1 run loot give @s mine 226 -60 -242 air{drop_contents:1b}
execute as @s[scores={respawn=2}] if score .mode .data = .1 .num if score .tmi .data matches 1 run loot give @s mine 226 -60 -244 air{drop_contents:1b}

execute as @s[scores={respawn=2}] if score .mode .data = .1 .num if score .tmi .data matches 1 run execute store result score @s[team=red] drop_magma run clear @s panda_spawn_egg{custom_model_data=3}
execute as @s[scores={respawn=2}] if score .mode .data = .1 .num if score .tmi .data matches 1 run execute as @s[team=red,scores={drop_magma=1..}] run function game:player/give/red_spawn

execute as @s[scores={respawn=2}] if score .mode .data = .1 .num if score .tmi .data matches 0 run item replace entity @s[scores={kills=0},nbt=!{Inventory:[{id:"minecraft:written_book"}]}] hotbar.7 with written_book{title:"Item Book",author:"Bleps",generation:0,resolved:1b,pages:['[{"text":"_ How To Get Items _"},{"text":"\\n\\nKill Streak"},{"text":"\\n2 - Spawn point"},{"text":"\\n3 - Traps"},{"text":"\\n5 - Reveal"},{"text":"\\n\\nKills"},{"text":"\\n4 - Grenade"},{"text":"\\n5 - Walls"},{"text":"\\n15 - Crossbow"},{"text":"\\n\\nFlag Capture"},{"text":"\\nArmor"}]']} 1

execute if score .mode .data = .6 .num run tag @s[tag=!dark_immune] add dark

execute if score .mode .data = .6 .num run clear @s[scores={respawn=2},team=red] snowball
execute if score .mode .data = .6 .num run clear @s[scores={respawn=2},team=red] panda_spawn_egg
execute if score .mode .data = .6 .num run clear @s[scores={respawn=2},team=red] creeper_spawn_egg
execute if score .mode .data = .6 .num run clear @s[scores={respawn=2},team=red] silverfish_spawn_egg
execute if score .mode .data = .6 .num run clear @s[scores={respawn=2},team=red] netherite_sword

execute if score .mode .data = .6 .num run clear @s[scores={respawn=2},team=red] iron_ingot
#execute if score .mode .data = .6 .num run give @s[scores={respawn=2},team=red] iron_ingot{custom_name='{"text":"Armor","color":"gray","italic":false}',lore=['{"text":"Survive one arrow hit","color":"white","italic":false}','{"text":"Doesn\'t block explosions","color":"white","italic":false}','{"text":"Drops the flag","color":"white","italic":false}']}} 1
#execute if score .mode .data = .6 .num run give @s[scores={respawn=2},team=red,tag=more_armor] iron_ingot{custom_name='{"text":"Armor","color":"gray","italic":false}',lore=['{"text":"Survive one arrow hit","color":"white","italic":false}','{"text":"Doesn\'t block explosions","color":"white","italic":false}','{"text":"Drops the flag","color":"white","italic":false}']}} 1
execute if score .mode .data = .6 .num if score .zombie_evolve_type_2 .data = .1 .num run give @s[scores={respawn=2},team=red] minecraft:netherite_sword{custom_name='{"text":"Claws","italic":false,"color":"gray"}',lore=['{"text":"Claw players, items, and walls","color":"white","italic":false}']},Damage:2031,CanDestroy:["minecraft:gravel"],enchantments={levels:{"minecraft:knockback":3},show_in_tooltip:false},AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:100,Operation:0,UUID:[I;-1269594486,-1448851549,-1210703323,1523703223]}]} 1

#
#clear @s crossbow{Charged:1b}
scoreboard players set @a[scores={crossbowTime=3..}] crossbowReload 2

scoreboard players set @s killStreak 0
scoreboard players set @s arrowReload 20
#set 1 seconds before reload
clear @s arrow
#clear @s iron_ingot

execute if score .map .data = .1 .num run tp @s[team=blue] -83.5 -50.00 51.5 -135 0
execute if score .map .data = .1 .num run tp @s[team=red] -83.5 -50.00 -8.5 -45 0

execute if score .map .data = .2 .num run tp @s[team=red] -188.5 -54.00 -91.5 -135 0
execute if score .map .data = .2 .num run tp @s[team=blue] -188.5 -54.00 -151.5 -45 0

execute if score .map .data = .3 .num run tp @s[team=red] -211 -53.00 -12.5 0 0
execute if score .map .data = .3 .num run tp @s[team=blue] -211 -53.00 39.5 180 0

execute if score .map .data = .4 .num run tp @s[team=red] -306.5 -51.00 27.5 180 0
execute if score .map .data = .4 .num run tp @s[team=blue] -306.5 -51.00 -3 0 0

execute if score .map .data = .5 .num run tp @s[team=red] -350.50 -55.00 -52.50 -135 0
execute if score .map .data = .5 .num run tp @s[team=blue] -329.5 -55.00 -90.5 45 0

execute if score .map .data = .6 .num run tp @s[team=red] -395.5 -49.00 62.5 160 0
execute if score .map .data = .6 .num run tp @s[team=blue] -395.5 -49.00 -29.5 20 0

execute if score .map .data = .7 .num run tp @s[team=red] -351 -54.00 -18.5 0 0
execute if score .map .data = .7 .num run tp @s[team=blue] -351 -54.00 37.5 180 0

execute if score .map .data = .8 .num run tp @s[team=red] -81.5 -55.00 112.5 -45 0
execute if score .map .data = .8 .num run tp @s[team=blue] -27.5 -55.00 134.5 135 0

execute if score .map .data = .9 .num run tp @s[team=red] -314.50 -48.00 105.5 0 0
execute if score .map .data = .9 .num run tp @s[team=blue] -320.5 -48.00 161.5 180 0

execute if score .map .data = .10 .num run tp @s[team=red] -228.5 -45.00 -454.5 0 0
execute if score .map .data = .10 .num run tp @s[team=blue] -228.5 -45.00 -408.5 180 0

execute if score .map .data = .11 .num run tp @s[team=red] 93.5 -55.00 -44.5 -90 0
execute if score .map .data = .11 .num run tp @s[team=blue] 165.5 -55.00 -44.5 90 0

execute if score .map .data = .12 .num run tp @s[team=red] -16.5 -53.00 -255.5 -135 0
execute if score .map .data = .12 .num run tp @s[team=blue] 15.5 -53.00 -343.5 45 0

execute if score .map .data = .13 .num run tp @s[team=red] 1.5 -34.00 241.5 90 0
execute if score .map .data = .13 .num run tp @s[team=blue] -80.5 -34.00 241.5 -90 0

execute if score .map .data = .14 .num run tp @s[team=red] -525.5 -19.00 -262.5 -135 0
execute if score .map .data = .14 .num run tp @s[team=blue] -489.5 -19.00 -342.5 45 0

execute if score .map .data = .15 .num run tp @s[team=red] -407.5 -38.50 203.5 90 8.3
execute if score .map .data = .15 .num run tp @s[team=blue] -483.5 -38.50 191.5 -90 8.3

effect give @s[scores={respawn=45..}] blindness 2 1 true
effect clear @s[scores={respawn=31}] blindness
execute unless score .mode .data = .6 .num unless entity @s[tag=dark_immune] run effect give @s[scores={respawn=25..}] darkness 4 1 true
execute unless score .mode .data = .6 .num unless entity @s[tag=dark_immune] run scoreboard players set @s[scores={respawn=25..}] fog_remove 64

scoreboard players set @s[scores={respawn=10..}] invul 60

effect give @s[scores={respawn=2..}] minecraft:invisibility 1 50 true
effect clear @s[scores={respawn=1}] minecraft:invisibility

execute if score .end_countdown .data matches ..1 run function game:player/dead_subtitle

execute as @s[scores={respawn=170}] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 0
execute as @s[scores={respawn=150}] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 0
execute as @s[scores={respawn=130}] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 0
execute as @s[scores={respawn=110}] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 0
execute as @s[scores={respawn=90}] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 0
execute as @s[scores={respawn=70}] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 0
execute as @s[scores={respawn=50}] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 0
execute as @s[scores={respawn=30}] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 0
execute as @s[scores={respawn=10}] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1.4

scoreboard players set @s[scores={crossbowTime=3..}] crossbowTime 2

scoreboard players remove @s respawn 1

#
execute if score .mode .data = .7 .num run item replace entity @s[scores={respawn=0},team=blue] hotbar.8 with minecraft:arrow 2

tag @s remove hasflag

execute as @s[scores={respawn=30}] at @s run function game:player/tryspawn

scoreboard players set @s speedrun 0