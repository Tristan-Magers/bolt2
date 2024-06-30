

#> Run from interaction entity
#> Does not include code related to killing the presumed display entity that renders the actual box
#> Throw a brick at my head

effect clear @e[type=shulker,distance=..1] minecraft:glowing

tag @s remove scrap_added

tag @e remove me
tag @s add me

execute if data entity @s interaction on target if entity @s[team=red] run playsound minecraft:block.chest.locked master @s ~ ~ ~ 1 2
execute if data entity @s interaction on target if entity @s[team=red] run title @s actionbar [{"text":"Stop survivors from returning scrap here!"}]
execute if data entity @s interaction on target if entity @s[team=red] as @e[tag=me] run data remove entity @s interaction

execute if data entity @s interaction on target if entity @s[team=blue] run execute as @s store result score @s scrap_count run clear @s minecraft:netherite_scrap 1
execute if data entity @s interaction on target if entity @s[team=blue] run title @s[scores={scrap_count=0}] actionbar [{"text":"Bring Scrap here!"}]
#execute if data entity @s interaction on target if entity @s[team=blue] run clear @s minecraft:netherite_scrap 1
execute if data entity @s interaction on target if entity @s[team=blue] run scoreboard players operation @e[tag=me] scrap_count += @s scrap_count
execute if data entity @s interaction on target if entity @s[team=blue,scores={scrap_count=1..}] run tag @e[tag=me] add scrap_added

execute if data entity @s[tag=scrap_added] interaction on target run tag @a remove processor
execute if data entity @s[tag=scrap_added] interaction on target run tag @p add processor

execute if data entity @s[tag=scrap_added,scores={scrap_count=..12}] interaction on target run execute as @p[tag=processor] run scoreboard players add @s stats_scrap 1

execute if data entity @s[tag=scrap_added] interaction on target run execute as @p[tag=processor] run function game:algor/random_8

execute if data entity @s[tag=scrap_added] interaction on target run execute if score @p[tag=processor] random = .0 .num run give @s[team=blue] panda_spawn_egg[custom_model_data=1,can_place_on={predicates:[{blocks:"#game:bolt_place"}],show_in_tooltip:false},custom_name='{"text":"Walls","color":"gray","italic":false}',lore=['{"text":"Four blocks of breakable gravel","color":"white","italic":false}','{"text":"Pushes players and enitites up.","color":"white","italic":false}'],entity_data={id:"minecraft:silverfish",Silent:1b,NoAI:1}] 2
execute if data entity @s[tag=scrap_added] interaction on target run execute if score @p[tag=processor] random = .1 .num run give @s[team=blue] panda_spawn_egg[custom_model_data=0,can_place_on={predicates:[{blocks:"#game:bolt_place"}],show_in_tooltip:false},custom_name='{"text":"Trap","italic":false,"color":"gray"}',lore=['{"text":"Explodes when enemies get near","color":"white","italic":false}','{"text":"Outer ring - explosion radius","color":"white","italic":false}','{"text":"Inner ring - trigger radius","color":"white","italic":false}','{"text":"Can be shot","color":"white","italic":false}','{"text":"Max active: 12","color":"white","italic":false}'],entity_data={id:"minecraft:creeper",PersistenceRequired:1b,Silent:1b}] 1
execute if data entity @s[tag=scrap_added] interaction on target run execute if score @p[tag=processor] random = .2 .num run give @s[team=blue] snowball[custom_name='{"text":"Grenade","italic":false,"color":"gray"}',lore=['{"text":"Explodes, killing players","color":"white","italic":false}','{"text":"Kills traps and respawns","color":"white","italic":false}','{"text":"Explodes slower if thrown close","color":"white","italic":false}']] 1
execute if data entity @s[tag=scrap_added] interaction on target run execute if score @p[tag=processor] random = .3 .num run give @s[team=blue,nbt={Inventory:[{id:"minecraft:iron_ingot"}]}] panda_spawn_egg[custom_model_data=0,can_place_on={predicates:[{blocks:"#game:bolt_place"}],show_in_tooltip:false},custom_name='{"text":"Trap","italic":false,"color":"gray"}',lore=['{"text":"Explodes when enemies get near","color":"white","italic":false}','{"text":"Outer ring - explosion radius","color":"white","italic":false}','{"text":"Inner ring - trigger radius","color":"white","italic":false}','{"text":"Can be shot","color":"white","italic":false}','{"text":"Max active: 12","color":"white","italic":false}'],entity_data={id:"minecraft:creeper",PersistenceRequired:1b,Silent:1b}] 1
execute if data entity @s[tag=scrap_added] interaction on target run execute if score @p[tag=processor] random = .3 .num run give @s[team=blue,nbt=!{Inventory:[{id:"minecraft:iron_ingot"}]}] iron_ingot[custom_name='{"text":"Armor","color":"gray","italic":false}',lore=['{"text":"Survive one arrow hit","color":"white","italic":false}','{"text":"Doesn\'t block explosions","color":"white","italic":false}','{"text":"Drops the flag","color":"white","italic":false}']] 1
execute if data entity @s[tag=scrap_added] interaction on target run execute if score @p[tag=processor] random = .4 .num run give @s[team=blue] panda_spawn_egg[custom_model_data=1,can_place_on={predicates:[{blocks:"#game:bolt_place"}],show_in_tooltip:false},custom_name='{"text":"Walls","color":"gray","italic":false}',lore=['{"text":"Four blocks of breakable gravel","color":"white","italic":false}','{"text":"Pushes players and enitites up.","color":"white","italic":false}'],entity_data={id:"minecraft:silverfish",Silent:1b,NoAI:1}] 2
execute if data entity @s[tag=scrap_added] interaction on target run execute if score @p[tag=processor] random = .5 .num run give @s[team=blue] panda_spawn_egg[custom_model_data=0,can_place_on={predicates:[{blocks:"#game:bolt_place"}],show_in_tooltip:false},custom_name='{"text":"Trap","italic":false,"color":"gray"}',lore=['{"text":"Explodes when enemies get near","color":"white","italic":false}','{"text":"Outer ring - explosion radius","color":"white","italic":false}','{"text":"Inner ring - trigger radius","color":"white","italic":false}','{"text":"Can be shot","color":"white","italic":false}','{"text":"Max active: 12","color":"white","italic":false}'],entity_data={id:"minecraft:creeper",PersistenceRequired:1b,Silent:1b}] 1
execute if data entity @s[tag=scrap_added] interaction on target run execute if score @p[tag=processor] random = .6 .num run give @s[team=blue] snowball[custom_name='{"text":"Grenade","italic":false,"color":"gray"}',lore=['{"text":"Explodes, killing players","color":"white","italic":false}','{"text":"Kills traps and respawns","color":"white","italic":false}','{"text":"Explodes slower if thrown close","color":"white","italic":false}']] 1
execute if data entity @s[tag=scrap_added] interaction on target run execute if score @p[tag=processor] random = .7 .num run give @s[team=blue] snowball[custom_name='{"text":"Grenade","italic":false,"color":"gray"}',lore=['{"text":"Explodes, killing players","color":"white","italic":false}','{"text":"Kills traps and respawns","color":"white","italic":false}','{"text":"Explodes slower if thrown close","color":"white","italic":false}']] 1

execute if data entity @s[tag=scrap_added] interaction on target run tag @a remove processor

execute if data entity @s[tag=scrap_added] interaction run execute store result bossbar scrap value run scoreboard players get @s scrap_count

execute if data entity @s[tag=scrap_added,scores={scrap_count=..12}] interaction run tellraw @a [{"text":"SCRAP ADDED: "},{"score":{"objective":"scrap_count","name":"@s"}},{"text":"/12"}]
execute if data entity @s[tag=scrap_added,scores={scrap_count=12..}] interaction run function game:game/infected/end_scrap

data remove entity @s interaction

tag @s remove me