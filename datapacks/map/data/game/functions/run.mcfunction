#
execute as @a[scores={Leave=1..}] at @s if score @s game_id = .current_id .data if score .running .data = .1 .num run function game:player/relog_game
execute as @a[scores={Leave=1..}] at @s run function game:player/leave_game

#
execute as @a[tag=loading] at @s run function game:player/leave_gamee

#ID
execute if entity @a[scores={ID=..0}] run scoreboard players add .new ID 1
execute if entity @a[scores={ID=..0}] run scoreboard players operation @p[scores={ID=..0}] ID = .new ID

execute if entity @a[scores={ID=..0}] run scoreboard players add .new ID 1
execute if entity @a[scores={ID=..0}] run scoreboard players operation @p[scores={ID=..0}] ID = .new ID

#
execute as @e[type=minecraft:zombie_villager] run data merge entity @s {Team:"red",IsBaby:0b}

#
execute as @e[type=egg] at @s run execute as @p at @s run function game:test
kill @e[type=egg]

#
kill @e[tag=kill,tag=dead]

#
execute as @e[tag=teleport_down_3] at @s run gamemode adventure
execute as @e[tag=teleport_down_3] at @s run tp @s ~ ~-50 ~
tag @e remove teleport_down_3

tag @e[tag=teleport_down_2] add teleport_down_3
execute as @e[tag=teleport_down_2] at @s run tp @s @s
tag @e remove teleport_down_2

tag @e[tag=teleport_down] add teleport_down_2
execute as @e[tag=teleport_down] at @s run tp @s @s
tag @e remove teleport_down

#
scoreboard players add .ran_team .random 1
execute if score .ran_team .random = .2 .num run scoreboard players set .ran_team .random 0

scoreboard players set .players .data 0
execute as @a run scoreboard players add .players .data 1

#
gamemode adventure @a[gamemode=survival]
effect give @a minecraft:resistance 999 255 true

kill @e[type=item,tag=!no_kill]

execute as @a run attribute @s minecraft:generic.max_health base set 2

execute as @e[type=arrow] run data merge entity @s {damage:1000.0}

#gametime
execute if score .gametime .data >= .1 .num run scoreboard players add .gametime .data 1

#lobby
tag @a remove lobby
tag @a[x=245,y=-50,z=-235,distance=..60] add lobby
scoreboard players set @a[x=245,y=-50,z=-235,distance=..60] invul 40
scoreboard players set @a[x=243.5,y=-44,z=-235.5,distance=3.5..60] arrowReload 32
clear @a[x=243.5,y=-44,z=-235.5,distance=3.5..60] arrow
team join red @a[x=245,y=-50,z=-235,distance=..60,scores={team_pref=1}]
team join blue @a[x=245,y=-50,z=-235,distance=..60,scores={team_pref=2}]
team join Spectator @a[x=245,y=-50,z=-235,distance=..60,scores={team_pref=-1}]

tp @a[x=249,y=-56,z=-250,dx=30,dy=3,dz=30,gamemode=adventure] 243.5 -44.00 -235.5 -90 13

kill @e[type=arrow,x=245,y=-50,z=-235,distance=..60]

execute as @a[x=243.5,y=-44,z=-235.5,distance=..2.9,scores={arrowReload=2..35}] as @s run scoreboard players set @s arrowReload 38
execute as @a[x=243.5,y=-44,z=-235.5,distance=..2.9,scores={bowUse=1..}] as @s run function game:menu/hitscan_start

scoreboard players set @a[scores={deaths=..0}] KILL_ID 0

#
scoreboard players add @e[type=arrow] ID 0
execute as @a[scores={bowUse=1..},team=red] at @s run tag @e[type=arrow,tag=!shot,limit=1,sort=nearest,scores={ID=0}] add red
execute as @a[scores={bowUse=1..},team=blue] at @s run tag @e[type=arrow,tag=!shot,limit=1,sort=nearest,scores={ID=0}] add blue

execute as @a[scores={bowUse=1..}] at @s run scoreboard players operation @e[type=arrow,tag=!shot,limit=1,sort=nearest,scores={ID=0}] bow_texture = @s bow_texture
execute as @a[scores={bowUse=1..}] at @s run scoreboard players operation @e[type=arrow,tag=!shot,limit=1,sort=nearest,scores={ID=0}] ID = @s ID
execute as @a[scores={crossUse=1..}] at @s run scoreboard players operation @e[type=arrow,tag=!shot,limit=1,sort=nearest,scores={ID=0}] ID = @s ID

execute as @e[type=arrow] at @s run function game:items/arrow/main

#hurtime
scoreboard players set @a hurt 0
execute as @a run execute store result score @s hurt run data get entity @s HurtTime 1
scoreboard players set @a[scores={hurt=9..,invul=..0,respawn=..0}] deaths 1
scoreboard players set @a[scores={hurt=9..,invul=1..,respawn=..0,break_invul=1..,wall_invul=1..}] deaths 1
scoreboard players set @a[scores={deaths=1..}] hurt 9
scoreboard players set @a break_invul 0

scoreboard players remove @a[scores={wall_invul=0..}] wall_invul 1

#
execute as @a[scores={crossUse=1..}] unless score .ffa .data matches 1 at @s run scoreboard players operation @e[type=arrow,tag=!shot,limit=1,sort=nearest,scores={ID=0}] ID = @s ID
tag @e[type=arrow] add shot
execute as @a at @s run function game:player/arrowcheck
scoreboard players set @a bowUse 0
execute unless score .ffa .data matches 1 run scoreboard players set @a crossUse 0

#team count
function game:game/team_dif

#spawns
function game:game/spawns

#
execute as @e[tag=cutscene] at @s run function game:cutscene/main

### ENTITIES ###

# generator
execute if score .running .data = .1 .num as @e[type=marker,tag=gen] at @s run function game:generator/main

#placed_blocks
execute as @e[type=marker,tag=temp_block] at @s run function game:items/temp_block/main

#walls
execute as @e[type=minecraft:falling_block] at @s run function game:items/lower
execute as @e[type=minecraft:falling_block] at @s if block ~ ~ ~ #minecraft:slabs[type=bottom] if block ~ ~0.6 ~ air run tp @s ~ ~0.6 ~
execute as @e[type=minecraft:falling_block] at @s run fill ~ ~ ~ ~ ~ ~ gravel replace air
kill @e[type=minecraft:falling_block]

#spawn placing
tag @e[type=minecraft:magma_cube] add spawn
tag @e[type=slime] add spawn

execute as @e[tag=spawn] at @s run function game:items/spawn/main

#walls
execute as @e[type=silverfish] at @s run summon marker ~ ~ ~ {Tags:["wall"]}
tp @e[type=silverfish] ~ ~-1000 ~
kill @e[type=silverfish]
execute as @e[tag=wall] at @s run function game:items/wall/main

#grenade
kill @e[type=snowball,tag=dummy]
execute as @e[tag=grenademark] at @s run function game:items/grenade/check
execute as @e[type=snowball,tag=!dummy,tag=!started] at @s run function game:items/grenade/check_throw_valid
execute as @e[type=snowball,tag=!dummy] at @s run function game:items/grenade/main
execute as @e[tag=grenadehit] at @s run function game:items/grenade/hitmark
tag @a remove ger_sound

execute as @e[tag=crate] at @s run function game:game/infected/crates/loop
execute as @e[tag=survivor_generator] at @s run function game:game/infected/generator/loop

#arrow
execute as @e[type=arrow,nbt={inGround:1b}] at @s run function game:arrow/land

# flags
execute as @e[tag=redflag,tag=drop] at @s run function game:flags/dropped
execute as @e[tag=blueflag,tag=drop] at @s run function game:flags/dropped

execute as @e[tag=redflag,tag=!drop] at @s run function game:flags/main
execute as @e[tag=blueflag,tag=!drop] at @s run function game:flags/main

#spawn_zombie_villager
execute as @e[type=zombie_villager,tag=!old] at @s run scoreboard players operation @s ID = @p[scores={spawn_zombie_villager=1..}] ID
scoreboard players set @a spawn_zombie_villager 0
tag @e[type=zombie_villager,tag=!old] add old

#
tag @a remove poison_range

execute as @e[type=minecraft:area_effect_cloud] at @s run function game:items/acid/main

#### PLAYERS ###
execute as @a at @s run function game:player/main

scoreboard players set @a DamageTaken 0
scoreboard players set @a DamageDealt 0
scoreboard players set @a sword_break 0

#tags
tag @e[type=slime] add old
tag @e[type=magma_cube] add old
tag @e[type=creeper] add old

# Timer
execute unless score .end_countdown .data > .0 .num unless score .cutscene_running .data = .1 .num if score .running .data = .1 .num if score .TIME .data > .0 .num run scoreboard players add .time_tick .data 1
execute if entity @a[tag=hasflag] if score .time_tick .data < .21 .num run scoreboard players set .time_tick .data 21
execute if score .end_countdown .data > .0 .num run scoreboard players set .time_tick .data 0
execute store result bossbar time value run scoreboard players get .TIME .data
execute if score .running .data = .1 .num if score .TIME .data > .0 .num if score .time_tick .data = .21 .num run scoreboard players remove .TIME .data 1
execute if score .running .data = .1 .num if score .TIME .data > .0 .num if score .time_tick .data = .21 .num run scoreboard players operation .TIME_sec .data = .TIME .data
execute if score .running .data = .1 .num if score .TIME .data > .0 .num if score .time_tick .data = .21 .num run scoreboard players operation .TIME_min .data = .TIME .data
execute if score .running .data = .1 .num if score .TIME .data > .0 .num if score .time_tick .data = .21 .num run scoreboard players operation .TIME_min .data /= .60 .num
execute if score .running .data = .1 .num if score .TIME .data > .0 .num if score .time_tick .data = .21 .num run scoreboard players operation .TIME_sec .data %= .60 .num
execute if score .running .data = .1 .num if score .TIME .data > .0 .num if score .time_tick .data = .21 .num if score .TIME_sec .data >= .10 .num run bossbar set minecraft:time name [{"text":""},{"score":{"name":".TIME_min","objective":".data"}},{"text":":"},{"score":{"name":".TIME_sec","objective":".data"}}]
execute if score .running .data = .1 .num if score .TIME .data > .0 .num if score .time_tick .data = .21 .num if score .TIME_sec .data < .10 .num run bossbar set minecraft:time name [{"text":""},{"score":{"name":".TIME_min","objective":".data"}},{"text":":0"},{"score":{"name":".TIME_sec","objective":".data"}}]
execute if score .running .data = .1 .num if score .TIME .data > .0 .num if score .time_tick .data >= .21 .num unless entity @a[tag=hasflag] run scoreboard players set .time_tick .data 0
execute if score .TIME .data = .0 .num if score .mode .data matches 1 run function game:game/end_ctf
execute if score .TIME .data = .0 .num unless score .mode .data matches 1 run function game:end
execute if score .TIME .data = .0 .num run scoreboard players reset .TIME .data

#
execute if score .running .data = .1 .num if score .end_countdown .data > .0 .num run function game:game/end_countdown

# Infection win condition
execute if score .mode .data = .6 .num if score .running .data = .1 .num if score .gametime .data > .300 .num if score .end_countdown .data = .n5 .num unless entity @a[team=blue,x=243.5,y=-44,z=-235.5,distance=70..] run function game:game/infected/end

execute unless score .cutscene_running .data = .1 .num if score .running .data = .1 .num run function game:game/main

#trap
effect give @e[tag=trap] resistance 999 10 true
execute as @e[tag=trap] run execute store result score @s hurt run data get entity @s HurtTime 1
execute as @e[tag=trap,scores={hurt=..1}] at @s positioned ~ ~0.6 ~ run function game:items/trap/main
effect give @e[tag=trap,scores={hurt=2..}] glowing 10 10 true
kill @e[tag=trap,scores={hurt=2..}]

#crossbow test
scoreboard players add @a crossbowTime 0
execute unless score .ffa .data matches 1 run scoreboard players add @a[scores={crossbowTime=0},nbt={SelectedItem:{id:"minecraft:crossbow",tag:{Charged:1b}}}] crossbowTime 240

scoreboard players add @a[scores={crossbowReload=1..}] crossbowReload 1
scoreboard players set @a[scores={crossbowUse=1..}] crossbowReload 1
tag @a[scores={crossbowReload=2..},nbt={SelectedItem:{id:"minecraft:crossbow",tag:{Charged:0b}}}] add reloadCross
#clear @a[tag=reloadCross] crossbow
execute unless score .ffa .data matches 1 run item replace entity @a[tag=reloadCross] weapon.mainhand with crossbow{Unbreakable:1b,ChargedProjectiles:[{id:"minecraft:arrow",Count:1b},{},{}],Charged:1b} 1
scoreboard players set @a[tag=reloadCross] crossbowReload 0

tag @a remove reloadCross
scoreboard players set @a crossbowUse 0

execute as @a[scores={crossbowTime=1..}] at @s run function game:items/crossbow/active

#danger area
scoreboard players set @a[tag=!danger] danger 0
scoreboard players add @a[tag=danger] danger 1
execute as @a[scores={danger=1}] at @s run title @s times 2 10 10
execute as @a[scores={danger=1}] at @s run title @s title {"text":"! DANGER AREA !"}
execute as @a[scores={danger=1}] at @s run playsound minecraft:entity.blaze.hurt master @s ~ ~ ~ 1 1
execute as @a[scores={danger=1}] at @s run playsound minecraft:entity.blaze.death master @s ~ ~ ~ 1 2
effect give @a[scores={danger=18..}] minecraft:instant_damage 1 100 true
tag @a remove danger

#test
#scoreboard players add @a[tag=!hasflag] speedrun 1

#
execute if score .running .data = .1 .num run scoreboard players add .Time .metric 1

execute if score .running .data = .1 .num run scoreboard players add .no_players .timer 1
execute if score .running .data = .1 .num if entity @a[team=red,tag=playing] if entity @a[team=blue,tag=playing] run scoreboard players set .no_players .timer 0
execute if score .running .data = .1 .num if score .mode .data = .6 .num if entity @a[team=red,tag=playing] run scoreboard players set .no_players .timer 0
execute if score .running .data = .1 .num if score .mode .data = .7 .num if entity @a[team=blue,tag=playing] run scoreboard players set .no_players .timer 0

#execute if score .running .data = .1 .num if score .mode .data = .1 .num if score .no_players .timer = .10 .num run say NO PLAYERS ON A TEAM. RESTARTING IN 10 SECONDS
#execute if score .running .data = .1 .num if score .mode .data = .1 .num if score .no_players .timer = .200 .num run function game:end

#execute if score .running .data = .1 .num if score .mode .data = .6 .num if score .no_players .timer = .10 .num run say NO PLAYERS INFECTED. RESTARTING IN 10 SECONDS
#execute if score .running .data = .1 .num if score .mode .data = .6 .num if score .no_players .timer = .200 .num run function game:end

#execute if score .running .data = .1 .num if score .mode .data = .7 .num if score .no_players .timer = .10 .num run say NO PLAYERS. RESTARTING IN 10 SECONDS
#execute if score .running .data = .1 .num if score .mode .data = .7 .num if score .no_players .timer = .200 .num run function game:end

execute if score .running .data = .0 .num run scoreboard players set .no_players .timer -60
execute if score .no_players .timer > .200 .num run scoreboard players set .no_players .timer -60

#
execute if score .start_cd .data >= .0 .num run function game:game/start_countdown
execute if score .start_cd .data = .n5 .num run scoreboard players set .start_cd .data -1

#> Begin Viral zone
# set fakeplayer .ffa .data to 1 to activate; 0 to deactivate
execute if score .ffa .data matches 1 run function game:ffa/main
scoreboard players set @a click 0

#
execute as @e[tag=scrap,type=item] at @s positioned ~ ~-1 ~ run give @p[team=blue,gamemode=adventure,distance=..1.2] minecraft:netherite_scrap{display:{Name:'{"text":"Scrap (Return to Generator)","italic":false}'}} 1
execute as @e[tag=scrap,type=item] at @s positioned ~ ~-1 ~ if entity @a[team=blue,gamemode=adventure,distance=..1.2] run kill @s
execute as @e[tag=scrap,type=item] at @s run give @p[team=blue,gamemode=adventure,distance=..1.2] minecraft:netherite_scrap{display:{Name:'{"text":"Scrap (Return to Generator)","italic":false}'}} 1
execute as @e[tag=scrap,type=item] at @s if entity @a[team=blue,gamemode=adventure,distance=..1.2] run kill @s
effect give @e[tag=scrap,type=item] minecraft:glowing infinite 10 true

#
tag @a remove blue_died

#
tp @e[tag=kill] ~ ~-10000 ~
tag @e[tag=kill] add dead