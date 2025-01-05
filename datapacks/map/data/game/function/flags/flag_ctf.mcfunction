#
execute at @s positioned ~-1 ~ ~-1 as @s[tag=redflag,tag=flag] if entity @a[gamemode=adventure,team=blue,distance=..10,dx=1,dy=1.5,dz=1] run execute as @a[team=blue] at @s run playsound minecraft:item.goat_horn.sound.1 master @s ~ ~ ~ 0.4 2
execute at @s positioned ~-1 ~ ~-1 as @s[tag=redflag,tag=flag] if entity @a[gamemode=adventure,team=blue,distance=..10,dx=1,dy=1.5,dz=1] run execute as @a[team=red] at @s run playsound minecraft:item.goat_horn.sound.2 master @s ~ ~ ~ 0.4 2
execute at @s positioned ~-1 ~ ~-1 as @s[tag=redflag,tag=flag] if entity @a[gamemode=adventure,team=blue,distance=..10,dx=1,dy=1.5,dz=1] run execute as @a[team=red] at @s run playsound minecraft:entity.wither.hurt master @s ~ ~ ~ 0.23 0

execute at @s positioned ~-1 ~ ~-1 as @s[tag=redflag,tag=flag] if entity @a[gamemode=adventure,team=blue,distance=..10,dx=1,dy=1.5,dz=1] run scoreboard players add .TIME .data 6
execute at @s positioned ~-1 ~ ~-1 as @s[tag=redflag,tag=flag] if entity @a[gamemode=adventure,team=blue,distance=..10,dx=1,dy=1.5,dz=1] run scoreboard players set .time_tick .data 19
execute at @s positioned ~-1 ~ ~-1 as @s[tag=redflag,tag=flag] if entity @a[gamemode=adventure,team=blue,distance=..10,dx=1,dy=1.5,dz=1] run title @a[tag=!lobby] times 2 16 8
execute at @s positioned ~-1 ~ ~-1 as @s[tag=redflag,tag=flag] if entity @a[gamemode=adventure,team=blue,distance=..10,dx=1,dy=1.5,dz=1] run title @a[tag=!lobby] subtitle {"text":"+5 Seconds","color":"white","font":"fancy"}
execute at @s positioned ~-1 ~ ~-1 as @s[tag=redflag,tag=flag] if entity @a[gamemode=adventure,team=blue,distance=..10,dx=1,dy=1.5,dz=1] run title @a[tag=!lobby] title {"text":"Red Flag Taken!","color":"red","font":"fancy"}
execute at @s positioned ~-1 ~ ~-1 as @s[tag=redflag,tag=flag] if entity @a[gamemode=adventure,team=blue,distance=..10,dx=1,dy=1.5,dz=1] run scoreboard players add @p[team=blue,distance=..10,dx=1,dy=1.5,dz=1] stats_attempts 1
execute at @s positioned ~-1 ~ ~-1 as @s[tag=redflag,tag=flag] if entity @a[gamemode=adventure,team=blue,distance=..10,dx=1,dy=1.5,dz=1] run tag @p[team=blue,distance=..10,dx=1,dy=1.5,dz=1] add hasflag
execute at @s positioned ~-1 ~ ~-1 as @s[tag=redflag,tag=flag] if entity @a[gamemode=adventure,team=blue,distance=..10,dx=1,dy=1.5,dz=1] run tag @s remove flag

execute at @s positioned ~-1 ~ ~-1 as @s[tag=blueflag,tag=flag] if entity @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1] run execute as @a[team=red] at @s run playsound minecraft:item.goat_horn.sound.1 master @s ~ ~ ~ 0.4 2
execute at @s positioned ~-1 ~ ~-1 as @s[tag=blueflag,tag=flag] if entity @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1] run execute as @a[team=blue] at @s run playsound minecraft:item.goat_horn.sound.2 master @s ~ ~ ~ 0.4 2
execute at @s positioned ~-1 ~ ~-1 as @s[tag=blueflag,tag=flag] if entity @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1] run execute as @a[team=blue] at @s run playsound minecraft:entity.wither.hurt master @s ~ ~ ~ 0.23 0

execute at @s positioned ~-1 ~ ~-1 as @s[tag=blueflag,tag=flag] if entity @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1] run scoreboard players add .TIME .data 6
execute at @s positioned ~-1 ~ ~-1 as @s[tag=blueflag,tag=flag] if entity @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1] run scoreboard players set .time_tick .data 19
execute at @s positioned ~-1 ~ ~-1 as @s[tag=blueflag,tag=flag] if entity @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1] run title @a[tag=!lobby] times 2 16 8
execute at @s positioned ~-1 ~ ~-1 as @s[tag=blueflag,tag=flag] if entity @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1] run title @a[tag=!lobby] subtitle {"text":"+5 Seconds","color":"white","font":"fancy"}
execute at @s positioned ~-1 ~ ~-1 as @s[tag=blueflag,tag=flag] if entity @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1] run title @a[tag=!lobby] title {"text":"Blue Flag Taken!","color":"dark_aqua","font":"fancy"}
execute at @s positioned ~-1 ~ ~-1 as @s[tag=blueflag,tag=flag] if entity @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1] run scoreboard players add @p[team=red,distance=..10,dx=1,dy=1.5,dz=1] stats_attempts 1
execute at @s positioned ~-1 ~ ~-1 as @s[tag=blueflag,tag=flag] if entity @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1] run tag @p[team=red,distance=..10,dx=1,dy=1.5,dz=1] add hasflag
execute at @s positioned ~-1 ~ ~-1 as @s[tag=blueflag,tag=flag] if entity @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1] run tag @s remove flag

execute at @s positioned ~-1 ~ ~-1 as @s[tag=redflag] if entity @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] run scoreboard players add .TIME .data 16
execute at @s positioned ~-1 ~ ~-1 as @s[tag=redflag] if entity @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] run scoreboard players set .time_tick .data 19
execute at @s positioned ~-1 ~ ~-1 as @s[tag=redflag] if entity @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] run scoreboard players add @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] stats_captures 1
execute at @s positioned ~-1 ~ ~-1 as @s[tag=redflag] if entity @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] if score .tmi .data = .0 .num run give @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] iron_ingot[custom_name='{"text":"Armor","color":"gray","italic":false}',lore=['{"text":"Survive one arrow hit","color":"white","italic":false}','{"text":"Doesn\'t block explosions","color":"white","italic":false}','{"text":"Drops the flag","color":"white","italic":false}']] 1
execute at @s positioned ~-1 ~ ~-1 as @s[tag=redflag] if entity @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] run execute as @a[team=red] at @s run playsound minecraft:block.conduit.deactivate master @a ~ ~ ~ 1 1
execute at @s positioned ~-1 ~ ~-1 as @s[tag=redflag] if entity @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] run execute as @a[team=red] at @s run playsound minecraft:block.conduit.activate master @s ~ ~ ~ 1 2
execute at @s positioned ~-1 ~ ~-1 as @s[tag=redflag] if entity @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] run execute as @a[team=blue] at @s run playsound minecraft:entity.ender_dragon.growl master @a ~ ~ ~ 1 2
execute at @s positioned ~-1 ~ ~-1 as @s[tag=redflag] if entity @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] run execute as @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] at @s run function game:player/killspawn
execute at @s positioned ~-1 ~ ~-1 as @s[tag=redflag] if entity @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] run tag @e[tag=blueflag] add flag
execute at @s positioned ~-1 ~ ~-1 as @s[tag=redflag] if entity @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] run tag @e[tag=blueflag] add scored
execute at @s positioned ~-1 ~ ~-1 as @s[tag=redflag] if entity @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] run scoreboard players add Red Scores 1
execute at @s positioned ~-1 ~ ~-1 as @s[tag=redflag] if entity @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] if score .TIME .data >= .0 .num if score .TIME_sec .data >= .10 .num run bossbar set minecraft:time name [{"text":"҂"},{"translate":"space.-128","font":"space"},{"font":"fancy_score","color":"red","score":{"name":"Red","objective":"Scores"}},{"text":"          ","color":"white"},{"font":"fancy_low","color":"white","score":{"name":".TIME_min","objective":".data"}},{"font":"fancy_low","color":"white","text":":"},{"font":"fancy_low","color":"white","score":{"name":".TIME_sec","objective":".data"}},{"text":"          "},{"font":"fancy_score","color":"aqua","score":{"name":"Blue","objective":"Scores"}},{"translate":"space.4","font":"space"}]
execute at @s positioned ~-1 ~ ~-1 as @s[tag=redflag] if entity @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] if score .TIME .data >= .0 .num if score .TIME_sec .data < .10 .num run bossbar set minecraft:time name [{"text":"҂"},{"translate":"space.-128","font":"space"},{"font":"fancy_score","color":"red","score":{"name":"Red","objective":"Scores"}},{"text":"          ","color":"white"},{"font":"fancy_low","color":"white","score":{"name":".TIME_min","objective":".data"}},{"font":"fancy_low","color":"white","text":":0"},{"font":"fancy_low","color":"white","score":{"name":".TIME_sec","objective":".data"}},{"text":"          "},{"font":"fancy_score","color":"aqua","score":{"name":"Blue","objective":"Scores"}},{"translate":"space.4","font":"space"}]
execute at @s positioned ~-1 ~ ~-1 as @s[tag=redflag] if entity @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] run title @a[tag=!lobby] times 5 15 10
execute at @s positioned ~-1 ~ ~-1 as @s[tag=redflag] if entity @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] run title @a[tag=!lobby] subtitle {"text":"+15 Seconds","color":"white","font":"fancy"}
execute at @s positioned ~-1 ~ ~-1 as @s[tag=redflag] if entity @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] run title @a[tag=!lobby] title {"text":"RED SCORES!","color":"red","font":"fancy"}
execute at @s positioned ~-1 ~ ~-1 as @s[tag=redflag] if entity @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] run clear @a[team=red] blue_banner
execute at @s positioned ~-1 ~ ~-1 as @s[tag=redflag] if entity @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] run tag @a[team=red] remove hasflag

execute at @s positioned ~-1 ~ ~-1 as @s[tag=blueflag] if entity @a[gamemode=adventure,team=blue,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] run scoreboard players add .TIME .data 16
execute at @s positioned ~-1 ~ ~-1 as @s[tag=blueflag] if entity @a[gamemode=adventure,team=blue,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] run scoreboard players set .time_tick .data 19
execute at @s positioned ~-1 ~ ~-1 as @s[tag=blueflag] if entity @a[gamemode=adventure,team=blue,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] run scoreboard players add @a[team=blue,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] stats_captures 1
execute at @s positioned ~-1 ~ ~-1 as @s[tag=blueflag] if entity @a[gamemode=adventure,team=blue,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] if score .tmi .data = .0 .num run give @a[team=blue,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] iron_ingot[custom_name='{"text":"Armor","color":"gray","italic":false}',lore=['{"text":"Survive one arrow hit","color":"white","italic":false}','{"text":"Doesn\'t block explosions","color":"white","italic":false}','{"text":"Drops the flag","color":"white","italic":false}']] 1
execute at @s positioned ~-1 ~ ~-1 as @s[tag=blueflag] if entity @a[gamemode=adventure,team=blue,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] run execute as @a[team=blue] at @s run playsound minecraft:block.conduit.deactivate master @a ~ ~ ~ 1 1
execute at @s positioned ~-1 ~ ~-1 as @s[tag=blueflag] if entity @a[gamemode=adventure,team=blue,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] run execute as @a[team=blue] at @s run playsound minecraft:block.conduit.activate master @s ~ ~ ~ 1 2
execute at @s positioned ~-1 ~ ~-1 as @s[tag=blueflag] if entity @a[gamemode=adventure,team=blue,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] run execute as @a[team=red] at @s run playsound minecraft:entity.ender_dragon.growl master @a ~ ~ ~ 1 2
execute at @s positioned ~-1 ~ ~-1 as @s[tag=blueflag] if entity @a[gamemode=adventure,team=blue,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] run execute as @a[team=blue,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] at @s run function game:player/killspawn
execute at @s positioned ~-1 ~ ~-1 as @s[tag=blueflag] if entity @a[gamemode=adventure,team=blue,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] run tag @e[tag=redflag] add flag
execute at @s positioned ~-1 ~ ~-1 as @s[tag=blueflag] if entity @a[gamemode=adventure,team=blue,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] run tag @e[tag=redflag] add scored
execute at @s positioned ~-1 ~ ~-1 as @s[tag=blueflag] if entity @a[gamemode=adventure,team=blue,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] run scoreboard players add Blue Scores 1
execute at @s positioned ~-1 ~ ~-1 as @s[tag=blueflag] if entity @a[gamemode=adventure,team=blue,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] if score .TIME .data >= .0 .num if score .TIME_sec .data >= .10 .num run bossbar set minecraft:time name [{"text":"҂"},{"translate":"space.-128","font":"space"},{"font":"fancy_score","color":"red","score":{"name":"Red","objective":"Scores"}},{"text":"          ","color":"white"},{"font":"fancy_low","color":"white","score":{"name":".TIME_min","objective":".data"}},{"font":"fancy_low","color":"white","text":":"},{"font":"fancy_low","color":"white","score":{"name":".TIME_sec","objective":".data"}},{"text":"          "},{"font":"fancy_score","color":"aqua","score":{"name":"Blue","objective":"Scores"}},{"translate":"space.4","font":"space"}]
execute at @s positioned ~-1 ~ ~-1 as @s[tag=blueflag] if entity @a[gamemode=adventure,team=blue,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] if score .TIME .data >= .0 .num if score .TIME_sec .data < .10 .num run bossbar set minecraft:time name [{"text":"҂"},{"translate":"space.-128","font":"space"},{"font":"fancy_score","color":"red","score":{"name":"Red","objective":"Scores"}},{"text":"          ","color":"white"},{"font":"fancy_low","color":"white","score":{"name":".TIME_min","objective":".data"}},{"font":"fancy_low","color":"white","text":":0"},{"font":"fancy_low","color":"white","score":{"name":".TIME_sec","objective":".data"}},{"text":"          "},{"font":"fancy_score","color":"aqua","score":{"name":"Blue","objective":"Scores"}},{"translate":"space.4","font":"space"}]
execute at @s positioned ~-1 ~ ~-1 as @s[tag=blueflag] if entity @a[gamemode=adventure,team=blue,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] run title @a[tag=!lobby] times 5 15 10
execute at @s positioned ~-1 ~ ~-1 as @s[tag=blueflag] if entity @a[gamemode=adventure,team=blue,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] run title @a[tag=!lobby] subtitle {"text":"+15 Seconds","color":"white","font":"fancy"}
execute at @s positioned ~-1 ~ ~-1 as @s[tag=blueflag] if entity @a[gamemode=adventure,team=blue,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] run title @a[tag=!lobby] title {"text":"BLUE SCORES!","color":"aqua","font":"fancy"}
execute at @s positioned ~-1 ~ ~-1 as @s[tag=blueflag] if entity @a[gamemode=adventure,team=blue,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] run clear @a[team=blue] red_banner
execute at @s positioned ~-1 ~ ~-1 as @s[tag=blueflag] if entity @a[gamemode=adventure,team=blue,distance=..10,dx=1,dy=1.5,dz=1,tag=hasflag] run tag @a[team=blue] remove hasflag
