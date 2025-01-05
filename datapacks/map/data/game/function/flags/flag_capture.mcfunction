execute at @s positioned ~-1 ~ ~-1 as @s[tag=redflag] run scoreboard players add @a[gamemode=adventure,team=blue,distance=..10,dx=1,dy=1.5,dz=1] capture_time 1
execute at @s positioned ~-1 ~ ~-1 as @s[tag=blueflag] run scoreboard players add @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1] capture_time 1

execute at @s positioned ~-1 ~ ~-1 as @s[tag=redflag] run tag @a[gamemode=adventure,team=blue,distance=..10,dx=1,dy=1.5,dz=1] add capturing_point
execute at @s positioned ~-1 ~ ~-1 as @s[tag=blueflag] run tag @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1] add capturing_point

#
execute at @s positioned ~-1 ~ ~-1 as @s[tag=redflag] if entity @a[gamemode=adventure,team=blue,distance=..10,dx=1,dy=1.5,dz=1,scores={capture_time=1}] run scoreboard players add @a[gamemode=adventure,team=blue,distance=..10,dx=1,dy=1.5,dz=1,limit=1,scores={capture_time=1}] stats_attempts 1
execute at @s positioned ~-1 ~ ~-1 as @s[tag=redflag] if entity @a[gamemode=adventure,team=blue,distance=..10,dx=1,dy=1.5,dz=1,scores={capture_time=1}] run title @a[gamemode=adventure,team=blue,distance=..10,dx=1,dy=1.5,dz=1,limit=1,scores={capture_time=1}] times 10 5 5
execute at @s positioned ~-1 ~ ~-1 as @s[tag=redflag] if entity @a[gamemode=adventure,team=blue,distance=..10,dx=1,dy=1.5,dz=1,scores={capture_time=1}] run title @a[gamemode=adventure,team=blue,distance=..10,dx=1,dy=1.5,dz=1,limit=1,scores={capture_time=1}] title {"text":"Capturing!","color":"gray","font":"fancy"}
execute at @s positioned ~-1 ~ ~-1 as @s[tag=redflag] if entity @a[gamemode=adventure,team=blue,distance=..10,dx=1,dy=1.5,dz=1,scores={capture_time=1..20}] run effect give @a[gamemode=adventure,team=blue,distance=..10,dx=1,dy=1.5,dz=1,scores={capture_time=1..20}] glowing 1 0 true
execute at @s positioned ~-1 ~ ~-1 as @s[tag=redflag] if entity @a[gamemode=adventure,team=blue,distance=..10,dx=1,dy=1.5,dz=1,scores={capture_time=1..20,glowing=..20}] run scoreboard players set @a[gamemode=adventure,team=blue,distance=..10,dx=1,dy=1.5,dz=1,scores={capture_time=1..20}] glowing 20

execute at @s positioned ~-1 ~ ~-1 as @s[tag=blueflag] if entity @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1,scores={capture_time=1}] run scoreboard players add @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1,limit=1,scores={capture_time=1}] stats_attempts 1
execute at @s positioned ~-1 ~ ~-1 as @s[tag=blueflag] if entity @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1,scores={capture_time=1}] run title @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1,limit=1,scores={capture_time=1}] times 10 5 5
execute at @s positioned ~-1 ~ ~-1 as @s[tag=blueflag] if entity @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1,scores={capture_time=1}] run title @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1,limit=1,scores={capture_time=1}] title {"text":"Capturing!","color":"gray","font":"fancy"}
execute at @s positioned ~-1 ~ ~-1 as @s[tag=blueflag] if entity @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1,scores={capture_time=1..20}] run effect give @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1,scores={capture_time=1..20}] glowing 1 0 true
execute at @s positioned ~-1 ~ ~-1 as @s[tag=blueflag] if entity @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1,scores={capture_time=1..20,glowing=..20}] run scoreboard players set @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1,scores={capture_time=1..20}] glowing 20

#
execute at @s positioned ~-1 ~ ~-1 as @s[tag=redflag] if entity @a[gamemode=adventure,team=blue,distance=..10,dx=1,dy=1.5,dz=1,scores={capture_time=30..}] run scoreboard players add .TIME .data 16
execute at @s positioned ~-1 ~ ~-1 as @s[tag=redflag] if entity @a[gamemode=adventure,team=blue,distance=..10,dx=1,dy=1.5,dz=1,scores={capture_time=30..}] run scoreboard players set .time_tick .data 19
execute at @s positioned ~-1 ~ ~-1 as @s[tag=redflag] if entity @a[gamemode=adventure,team=blue,distance=..10,dx=1,dy=1.5,dz=1,scores={capture_time=30..}] run scoreboard players add @a[gamemode=adventure,team=blue,distance=..10,dx=1,dy=1.5,dz=1,limit=1,scores={capture_time=20..}] stats_captures 1
execute at @s positioned ~-1 ~ ~-1 as @s[tag=redflag] if entity @a[gamemode=adventure,team=blue,distance=..10,dx=1,dy=1.5,dz=1,scores={capture_time=30..}] run execute as @a[team=blue] at @s run playsound minecraft:block.conduit.deactivate master @a ~ ~ ~ 1 1
execute at @s positioned ~-1 ~ ~-1 as @s[tag=redflag] if entity @a[gamemode=adventure,team=blue,distance=..10,dx=1,dy=1.5,dz=1,scores={capture_time=30..}] run execute as @a[team=blue] at @s run playsound minecraft:block.conduit.activate master @s ~ ~ ~ 1 2
execute at @s positioned ~-1 ~ ~-1 as @s[tag=redflag] if entity @a[gamemode=adventure,team=blue,distance=..10,dx=1,dy=1.5,dz=1,scores={capture_time=30..}] run execute as @a[team=red] at @s run playsound minecraft:entity.ender_dragon.growl master @a ~ ~ ~ 1 2
execute at @s positioned ~-1 ~ ~-1 as @s[tag=redflag] if entity @a[gamemode=adventure,team=blue,distance=..10,dx=1,dy=1.5,dz=1,scores={capture_time=30..}] run execute as @a[gamemode=adventure,team=blue,distance=..10,dx=1,dy=1.5,dz=1,limit=1,scores={capture_time=20..}] at @s run function game:player/killspawn
execute at @s positioned ~-1 ~ ~-1 as @s[tag=redflag] if entity @a[gamemode=adventure,team=blue,distance=..10,dx=1,dy=1.5,dz=1,scores={capture_time=30..}] run scoreboard players add Blue Scores 1
execute at @s positioned ~-1 ~ ~-1 as @s[tag=redflag] if entity @a[gamemode=adventure,team=blue,distance=..10,dx=1,dy=1.5,dz=1,scores={capture_time=30..}] if score .TIME .data >= .0 .num if score .TIME_sec .data >= .10 .num run bossbar set minecraft:time name [{"text":"҂"},{"translate":"space.-128","font":"space"},{"font":"fancy_score","color":"red","score":{"name":"Red","objective":"Scores"}},{"text":"          ","color":"white"},{"font":"fancy_low","color":"white","score":{"name":".TIME_min","objective":".data"}},{"font":"fancy_low","color":"white","text":":"},{"font":"fancy_low","color":"white","score":{"name":".TIME_sec","objective":".data"}},{"text":"          "},{"font":"fancy_score","color":"aqua","score":{"name":"Blue","objective":"Scores"}},{"translate":"space.4","font":"space"}]
execute at @s positioned ~-1 ~ ~-1 as @s[tag=redflag] if entity @a[gamemode=adventure,team=blue,distance=..10,dx=1,dy=1.5,dz=1,scores={capture_time=30..}] if score .TIME .data >= .0 .num if score .TIME_sec .data < .10 .num run bossbar set minecraft:time name [{"text":"҂"},{"translate":"space.-128","font":"space"},{"font":"fancy_score","color":"red","score":{"name":"Red","objective":"Scores"}},{"text":"          ","color":"white"},{"font":"fancy_low","color":"white","score":{"name":".TIME_min","objective":".data"}},{"font":"fancy_low","color":"white","text":":0"},{"font":"fancy_low","color":"white","score":{"name":".TIME_sec","objective":".data"}},{"text":"          "},{"font":"fancy_score","color":"aqua","score":{"name":"Blue","objective":"Scores"}},{"translate":"space.4","font":"space"}]
execute at @s positioned ~-1 ~ ~-1 as @s[tag=redflag] if entity @a[gamemode=adventure,team=blue,distance=..10,dx=1,dy=1.5,dz=1,scores={capture_time=30..}] run title @a[tag=!lobby] times 5 15 10
execute at @s positioned ~-1 ~ ~-1 as @s[tag=redflag] if entity @a[gamemode=adventure,team=blue,distance=..10,dx=1,dy=1.5,dz=1,scores={capture_time=30..}] run title @a[tag=!lobby] subtitle {"text":"+15 Seconds","color":"white","font":"fancy"}
execute at @s positioned ~-1 ~ ~-1 as @s[tag=redflag] if entity @a[gamemode=adventure,team=blue,distance=..10,dx=1,dy=1.5,dz=1,scores={capture_time=30..}] run title @a[tag=!lobby] title {"text":"BLUE SCORES!","color":"aqua","font":"fancy"}
execute at @s positioned ~-1 ~ ~-1 as @s[tag=redflag] if entity @a[gamemode=adventure,team=blue,distance=..10,dx=1,dy=1.5,dz=1,scores={capture_time=30..}] run tag @a[gamemode=adventure,team=blue,distance=..10,dx=1,dy=1.5,dz=1,limit=1,scores={capture_time=20..}] add capture_point
execute at @s positioned ~-1 ~ ~-1 as @s[tag=redflag] if entity @a[gamemode=adventure,team=blue,distance=..10,dx=1,dy=1.5,dz=1,scores={capture_time=30..}] run scoreboard players set @a[gamemode=adventure,team=blue,distance=..10,dx=1,dy=1.5,dz=1,limit=1,scores={capture_time=20..}] deaths 1
execute at @s positioned ~-1 ~ ~-1 as @s[tag=redflag] if entity @a[gamemode=adventure,team=blue,distance=..10,dx=1,dy=1.5,dz=1,scores={capture_time=30..}] run scoreboard players set @a[gamemode=adventure,team=blue,distance=..10,dx=1,dy=1.5,dz=1] capture_time 0

execute at @s positioned ~-1 ~ ~-1 as @s[tag=blueflag] if entity @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1,scores={capture_time=30..}] run scoreboard players add .TIME .data 16
execute at @s positioned ~-1 ~ ~-1 as @s[tag=blueflag] if entity @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1,scores={capture_time=30..}] run scoreboard players set .time_tick .data 19
execute at @s positioned ~-1 ~ ~-1 as @s[tag=blueflag] if entity @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1,scores={capture_time=30..}] run scoreboard players add @a[team=red,distance=..10,dx=1,dy=1.5,dz=1,limit=1,scores={capture_time=20..}] stats_captures 1
execute at @s positioned ~-1 ~ ~-1 as @s[tag=blueflag] if entity @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1,scores={capture_time=30..}] run execute as @a[team=red] at @s run playsound minecraft:block.conduit.deactivate master @a ~ ~ ~ 1 1
execute at @s positioned ~-1 ~ ~-1 as @s[tag=blueflag] if entity @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1,scores={capture_time=30..}] run execute as @a[team=red] at @s run playsound minecraft:block.conduit.activate master @s ~ ~ ~ 1 2
execute at @s positioned ~-1 ~ ~-1 as @s[tag=blueflag] if entity @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1,scores={capture_time=30..}] run execute as @a[team=blue] at @s run playsound minecraft:entity.ender_dragon.growl master @a ~ ~ ~ 1 2
execute at @s positioned ~-1 ~ ~-1 as @s[tag=blueflag] if entity @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1,scores={capture_time=30..}] run execute as @a[team=red,distance=..10,dx=1,dy=1.5,dz=1,limit=1,scores={capture_time=20..}] at @s run function game:player/killspawn
execute at @s positioned ~-1 ~ ~-1 as @s[tag=blueflag] if entity @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1,scores={capture_time=30..}] run scoreboard players add Red Scores 1
execute at @s positioned ~-1 ~ ~-1 as @s[tag=blueflag] if entity @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1,scores={capture_time=30..}] if score .TIME .data >= .0 .num if score .TIME_sec .data >= .10 .num run bossbar set minecraft:time name [{"text":"҂"},{"translate":"space.-128","font":"space"},{"font":"fancy_score","color":"red","score":{"name":"Red","objective":"Scores"}},{"text":"          ","color":"white"},{"font":"fancy_low","color":"white","score":{"name":".TIME_min","objective":".data"}},{"font":"fancy_low","color":"white","text":":"},{"font":"fancy_low","color":"white","score":{"name":".TIME_sec","objective":".data"}},{"text":"          "},{"font":"fancy_score","color":"aqua","score":{"name":"Blue","objective":"Scores"}},{"translate":"space.4","font":"space"}]
execute at @s positioned ~-1 ~ ~-1 as @s[tag=blueflag] if entity @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1,scores={capture_time=30..}] if score .TIME .data >= .0 .num if score .TIME_sec .data < .10 .num run bossbar set minecraft:time name [{"text":"҂"},{"translate":"space.-128","font":"space"},{"font":"fancy_score","color":"red","score":{"name":"Red","objective":"Scores"}},{"text":"          ","color":"white"},{"font":"fancy_low","color":"white","score":{"name":".TIME_min","objective":".data"}},{"font":"fancy_low","color":"white","text":":0"},{"font":"fancy_low","color":"white","score":{"name":".TIME_sec","objective":".data"}},{"text":"          "},{"font":"fancy_score","color":"aqua","score":{"name":"Blue","objective":"Scores"}},{"translate":"space.4","font":"space"}]
execute at @s positioned ~-1 ~ ~-1 as @s[tag=blueflag] if entity @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1,scores={capture_time=30..}] run title @a[tag=!lobby] times 5 15 10
execute at @s positioned ~-1 ~ ~-1 as @s[tag=blueflag] if entity @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1,scores={capture_time=30..}] run title @a[tag=!lobby] subtitle {"text":"+15 Seconds","color":"white","font":"fancy"}
execute at @s positioned ~-1 ~ ~-1 as @s[tag=blueflag] if entity @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1,scores={capture_time=30..}] run title @a[tag=!lobby] title {"text":"RED SCORES!","color":"red","font":"fancy"}
execute at @s positioned ~-1 ~ ~-1 as @s[tag=blueflag] if entity @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1,scores={capture_time=30..}] run tag @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1,limit=1,scores={capture_time=20..}] add capture_point
execute at @s positioned ~-1 ~ ~-1 as @s[tag=blueflag] if entity @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1,scores={capture_time=30..}] run scoreboard players set @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1,limit=1,scores={capture_time=20..}] deaths 1
execute at @s positioned ~-1 ~ ~-1 as @s[tag=blueflag] if entity @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1,scores={capture_time=30..}] run scoreboard players set @a[gamemode=adventure,team=red,distance=..10,dx=1,dy=1.5,dz=1] capture_time 0