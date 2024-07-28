item replace block 235 -49 -223 container.10 with panda_spawn_egg[custom_model_data=1,can_place_on={predicates:[{blocks:"#game:bolt_place"}],show_in_tooltip:false},custom_name='{"text":"Walls","color":"gray","italic":false}',lore=['{"text":"Four blocks of breakable gravel","color":"white","italic":false}','{"text":"Pushes players and enitites up.","color":"white","italic":false}'],entity_data={id:"minecraft:silverfish",Silent:1b,NoAI:1}] 8
item replace block 235 -49 -223 container.11 with panda_spawn_egg[custom_model_data=0,can_place_on={predicates:[{blocks:"#game:bolt_place"}],show_in_tooltip:false},custom_name='{"text":"Trap","italic":false,"color":"gray"}',lore=['{"text":"Explodes when enemies get near","color":"white","italic":false}','{"text":"Outer ring - explosion radius","color":"white","italic":false}','{"text":"Inner ring - trigger radius","color":"white","italic":false}','{"text":"Can be shot","color":"white","italic":false}','{"text":"Max active: 12","color":"white","italic":false}'],entity_data={id:"minecraft:creeper",PersistenceRequired:1b,Silent:1b}] 4
item replace block 235 -49 -223 container.12 with snowball[custom_name='{"text":"Grenade","italic":false,"color":"gray"}',lore=['{"text":"Explodes, killing players","color":"white","italic":false}','{"text":"Kills traps and respawns","color":"white","italic":false}','{"text":"Explodes slower if thrown close","color":"white","italic":false}']] 4
item replace block 235 -49 -223 container.13 with panda_spawn_egg[custom_model_data=3,can_place_on={predicates:[{blocks:"#game:bolt_place"}],show_in_tooltip:false},custom_name='{"text":"Spawn Point","italic":false,"color":"gray"}',lore=['{"text":"Place a location to respawn at","color":"white","italic":false}','{"text":"Respawn 1.5 seconds faster","color":"white","italic":false}','{"text":"Can be shot","color":"white","italic":false}','{"text":"Max active: 1","color":"white","italic":false}','{"text":"Returned on flag capture","color":"white","italic":false}'],entity_data={id:"minecraft:slime",PersistenceRequired:1b,Silent:1b,Size:0}] 2
item replace block 235 -49 -223 container.20 with map[custom_name='{"text":"Reveal","italic":false,"color":"gray"}',lore=['{"text":"See enemy players and placables","color":"white","italic":false}','{"text":"through walls for 5 seconds","color":"white","italic":false}']] 1
item replace block 235 -49 -223 container.23 with crossbow[custom_name='{"text":"Crossbow (11 seconds)","italic":false,"color":"gray"}',lore=['{"text":"Automatic rapid fire crossbow","color":"white","italic":false}','{"text":"Keep out of range of small children","color":"white","italic":false}'],enchantments={levels:{"minecraft:quick_charge":1},show_in_tooltip:false},custom_data={trigger:1b}] 1
item replace block 235 -49 -223 container.15 with iron_ingot[custom_name='{"text":"Armor","color":"gray","italic":false}',lore=['{"text":"Survive one arrow hit","color":"white","italic":false}','{"text":"Doesn\'t block explosions","color":"white","italic":false}','{"text":"Drops the flag","color":"white","italic":false}']] 2
item replace block 235 -49 -223 container.21 with egg[custom_name='{"text":"Boost","italic":false,"color":"gray"}',lore=['{"text":"Explode forward","color":"white","italic":false}']] 1
item replace block 235 -49 -223 container.22 with ender_pearl[custom_name='{"text":"Zoomies (8 Seconds)","italic":false,"color":"gray"}',lore=['{"text":"Speed and jump boost for 8 seconds","color":"white","italic":false}']] 1
item replace block 235 -49 -223 container.24 with minecraft:netherite_sword[custom_name='{"text":"Claws","italic":false,"color":"gray"}',minecraft:max_damage=1,lore=['{"text":"Claw players, placables, and walls","color":"white","italic":false}'],damage=0,can_break={predicates:[{blocks:"gravel"}]},enchantments={levels:{"minecraft:knockback":3},show_in_tooltip:false},attribute_modifiers={modifiers:[{id:"attack_damage",type:"generic.attack_damage",amount:100,operation:"add_value",slot:"any"}],show_in_tooltip:false}] 1
#item replace block 235 -49 -223 container.10 with lingering_potion{custom_name='{"text":"Acid","italic":false}'},hide_additional_tooltip={},potion_contents={potion:"minecraft:water_breathing",custom_color:6618913}} 1
#item replace block 235 -49 -223 container.10 with minecraft:pig_spawn_egg{can_place_on={predicates:[{blocks:"#game:bolt_place"}],show_in_tooltip:false},custom_name='{"text":"Turret","italic":false}'},entity_data={PersistenceRequired:0b,CanPickUpLoot:0b,IsBaby:0b,Health:10f}} 8
item replace block 235 -49 -223 container.19 with panda_spawn_egg[custom_model_data=4,can_place_on={predicates:[{blocks:"#game:bolt_place"}],show_in_tooltip:false},custom_name='{"text":"Turret","italic":false,"color":"gray"}',lore=['{"text":"Turret that shoots players and minions","color":"white","italic":false}','{"text":"Range: 20 blocks","color":"white","italic":false}','{"text":"Charge time: 1s","color":"white","italic":false}','{"text":"Max active: 5","color":"white","italic":false}'],entity_data={id:"minecraft:pig",PersistenceRequired:0b,Silent:1b,NoAI:1,IsBaby:0b,Health:10f}] 1
item replace block 235 -49 -223 container.14 with minecraft:zombie_villager_spawn_egg[can_place_on={predicates:[{blocks:"#game:bolt_place"}],show_in_tooltip:false},custom_name='{"text":"Minion","italic":false,"color":"gray"}',lore=['{"text":"Summon zombie that attacks enemies","color":"white","italic":false}','{"text":"Max active: 17","color":"white","italic":false}'],entity_data={id:"minecraft:zombie_villager",PersistenceRequired:1b,CanPickUpLoot:0b,Health:10f,IsBaby:0b,ArmorItems:[{},{},{},{id:"minecraft:zombie_head",count:1}],Attributes:[{Name:generic.max_health,Base:1},{Name:generic.movement_speed,Base:0.33}]}] 2

#item replace block 235 -49 -223 container.8 with black_stained_glass_pane[custom_name='{"text":""}']
#item replace block 235 -49 -223 container.10 with black_stained_glass_pane[custom_name='{"text":""}']
#item replace block 235 -49 -223 container.11 with black_stained_glass_pane[custom_name='{"text":""}']


execute if score .tmi_preset .data matches 0 unless data block 235 -49 -223 {Items:[{Slot:0b,id:"minecraft:paper"}]} run scoreboard players set .tmi_preset .data 101
execute if score .tmi_preset .data matches 1 unless data block 235 -49 -223 {Items:[{Slot:0b,id:"minecraft:paper"}]} run scoreboard players set .tmi_preset .data 102
execute if score .tmi_preset .data matches 2 unless data block 235 -49 -223 {Items:[{Slot:0b,id:"minecraft:paper"}]} run scoreboard players set .tmi_preset .data 103
execute if score .tmi_preset .data matches 3 unless data block 235 -49 -223 {Items:[{Slot:0b,id:"minecraft:paper"}]} run scoreboard players set .tmi_preset .data 104
execute if score .tmi_preset .data matches 4 unless data block 235 -49 -223 {Items:[{Slot:0b,id:"minecraft:paper"}]} run scoreboard players set .tmi_preset .data 105
execute if score .tmi_preset .data matches 5 unless data block 235 -49 -223 {Items:[{Slot:0b,id:"minecraft:paper"}]} run scoreboard players set .tmi_preset .data 106
execute if score .tmi_preset .data matches 6 unless data block 235 -49 -223 {Items:[{Slot:0b,id:"minecraft:paper"}]} run scoreboard players set .tmi_preset .data 107
execute if score .tmi_preset .data matches 7 unless data block 235 -49 -223 {Items:[{Slot:0b,id:"minecraft:paper"}]} run scoreboard players set .tmi_preset .data 100
execute if score .tmi_preset .data matches 8 unless data block 235 -49 -223 {Items:[{Slot:0b,id:"minecraft:paper"}]} run scoreboard players set .tmi_preset .data 109
execute if score .tmi_preset .data matches 9 unless data block 235 -49 -223 {Items:[{Slot:0b,id:"minecraft:paper"}]} run scoreboard players set .tmi_preset .data 110
execute if score .tmi_preset .data matches 10 unless data block 235 -49 -223 {Items:[{Slot:0b,id:"minecraft:paper"}]} run scoreboard players set .tmi_preset .data 111
execute if score .tmi_preset .data matches 11 unless data block 235 -49 -223 {Items:[{Slot:0b,id:"minecraft:paper"}]} run scoreboard players set .tmi_preset .data 112
execute if score .tmi_preset .data matches 12 unless data block 235 -49 -223 {Items:[{Slot:0b,id:"minecraft:paper"}]} run scoreboard players set .tmi_preset .data 100

execute if score .tmi_preset .data matches 100.. run function game:tmi/preset/0
execute if score .tmi_preset .data matches 101 run function game:tmi/preset/1
execute if score .tmi_preset .data matches 102 run function game:tmi/preset/2
execute if score .tmi_preset .data matches 103 run function game:tmi/preset/3
execute if score .tmi_preset .data matches 104 run function game:tmi/preset/4
execute if score .tmi_preset .data matches 105 run function game:tmi/preset/5
execute if score .tmi_preset .data matches 106 run function game:tmi/preset/6
execute if score .tmi_preset .data matches 107 run function game:tmi/preset/7

execute if score .tmi_preset .data matches 100 run scoreboard players set .tmi_preset .data 0
execute if score .tmi_preset .data matches 101 run scoreboard players set .tmi_preset .data 1
execute if score .tmi_preset .data matches 102 run scoreboard players set .tmi_preset .data 2
execute if score .tmi_preset .data matches 103 run scoreboard players set .tmi_preset .data 3
execute if score .tmi_preset .data matches 104 run scoreboard players set .tmi_preset .data 4
execute if score .tmi_preset .data matches 105 run scoreboard players set .tmi_preset .data 5
execute if score .tmi_preset .data matches 106 run scoreboard players set .tmi_preset .data 6
execute if score .tmi_preset .data matches 107 run scoreboard players set .tmi_preset .data 7
execute if score .tmi_preset .data matches 108 run scoreboard players set .tmi_preset .data 8
execute if score .tmi_preset .data matches 109 run scoreboard players set .tmi_preset .data 9
execute if score .tmi_preset .data matches 110 run scoreboard players set .tmi_preset .data 10
execute if score .tmi_preset .data matches 111 run scoreboard players set .tmi_preset .data 11
execute if score .tmi_preset .data matches 112 run scoreboard players set .tmi_preset .data 12

execute if score .tmi_preset .data matches 0 run item replace block 235 -49 -223 container.0 with paper[custom_name='{"text":"Preset 0: Blank","italic":false}']
execute if score .tmi_preset .data matches 1 run item replace block 235 -49 -223 container.0 with paper[custom_name='{"text":"Preset 1: Too Many Items","italic":false}']
execute if score .tmi_preset .data matches 2 run item replace block 235 -49 -223 container.0 with paper[custom_name='{"text":"Preset 2: Too Many Items 2","italic":false}']
execute if score .tmi_preset .data matches 3 run item replace block 235 -49 -223 container.0 with paper[custom_name='{"text":"Preset 3: Too Too Many Items","italic":false}']
execute if score .tmi_preset .data matches 4 run item replace block 235 -49 -223 container.0 with paper[custom_name='{"text":"Preset 4: Point Rush","italic":false}']
execute if score .tmi_preset .data matches 5 run item replace block 235 -49 -223 container.0 with paper[custom_name='{"text":"Preset 5: Nightmare","italic":false}']
execute if score .tmi_preset .data matches 6 run item replace block 235 -49 -223 container.0 with paper[custom_name='{"text":"Preset 6: Wind Rivals","italic":false}']
execute if score .tmi_preset .data matches 7 run item replace block 235 -49 -223 container.0 with paper[custom_name='{"text":"Preset 7: Deathmatch","italic":false}']

execute if score .tmi_preset .data matches 8 run item replace block 235 -49 -223 container.0 with paper[custom_name='{"text":"Preset 8: Nightmare","italic":false}']
execute if score .tmi_preset .data matches 9 run item replace block 235 -49 -223 container.0 with paper[custom_name='{"text":"Preset 9: One In The Quiver (give or take)","italic":false}']
execute if score .tmi_preset .data matches 10 run item replace block 235 -49 -223 container.0 with paper[custom_name='{"text":"Preset 10: Three Crossbows (in the quiver)","italic":false}']
execute if score .tmi_preset .data matches 11 run item replace block 235 -49 -223 container.0 with paper[custom_name='{"text":"Preset 11: Fog of War","italic":false}']
execute if score .tmi_preset .data matches 12 run item replace block 235 -49 -223 container.0 with paper[custom_name='{"text":"Preset 12: Peak Design","italic":false}']

item replace block 235 -49 -223 container.1 with black_stained_glass_pane[custom_name='{"text":""}']

item replace block 235 -49 -223 container.2 with black_stained_glass_pane[custom_name='{"text":""}']
item replace block 235 -49 -223 container.3 with black_stained_glass_pane[custom_name='{"text":""}']
item replace block 235 -49 -223 container.4 with black_stained_glass_pane[custom_name='{"text":""}']
item replace block 235 -49 -223 container.5 with black_stained_glass_pane[custom_name='{"text":""}']
item replace block 235 -49 -223 container.6 with black_stained_glass_pane[custom_name='{"text":""}']
item replace block 235 -49 -223 container.7 with black_stained_glass_pane[custom_name='{"text":""}']

execute if score .tmi_objective .data matches 0 unless data block 235 -49 -223 {Items:[{Slot:8b,id:"minecraft:red_dye"}]} run scoreboard players set .tmi_objective .data 11
execute if score .tmi_objective .data matches 1 unless data block 235 -49 -223 {Items:[{Slot:8b,id:"minecraft:beacon"}]} run scoreboard players set .tmi_objective .data 12
execute if score .tmi_objective .data matches 2 unless data block 235 -49 -223 {Items:[{Slot:8b,id:"minecraft:skeleton_skull"}]} run scoreboard players set .tmi_objective .data 10

execute if score .tmi_objective .data matches 10 run scoreboard players set .tmi_objective .data 0
execute if score .tmi_objective .data matches 11 run scoreboard players set .tmi_objective .data 1
execute if score .tmi_objective .data matches 12 run scoreboard players set .tmi_objective .data 2

execute if score .tmi_objective .data matches 0 run item replace block 235 -49 -223 container.8 with red_dye[custom_name='{"text":"Capture the Flag","italic":false}',lore=['{"text":"Normal capture the flag","color":"white","italic":false}','{"text":"First to three","color":"white","italic":false}']]
execute if score .tmi_objective .data matches 1 run item replace block 235 -49 -223 container.8 with beacon[custom_name='{"text":"Capture the Point","italic":false}',lore=['{"text":"Stand on flag one second to capture","color":"white","italic":false}','{"text":"First to five","color":"white","italic":false}']]
execute if score .tmi_objective .data matches 2 run item replace block 235 -49 -223 container.8 with minecraft:skeleton_skull[custom_name='{"text":"Team Deathmatch","italic":false}',lore=['{"text":"Kills give points","color":"white","italic":false}','{"text":"First to nine","color":"white","italic":false}']]

item replace block 235 -49 -223 container.9 with black_stained_glass_pane[custom_name='{"text":""}']

item replace block 235 -49 -223 container.16 with black_stained_glass_pane[custom_name='{"text":""}']

execute if score .tmi_arrow .data matches 0 unless data block 235 -49 -223 {Items:[{Slot:17b,id:"minecraft:arrow"}]} run scoreboard players set .tmi_arrow .data 11
execute if score .tmi_arrow .data matches 1 unless data block 235 -49 -223 {Items:[{Slot:17b,id:"minecraft:wind_charge"}]} run scoreboard players set .tmi_arrow .data 12
execute if score .tmi_arrow .data matches 2 unless data block 235 -49 -223 {Items:[{Slot:17b,id:"minecraft:arrow"}]} run scoreboard players set .tmi_arrow .data 10

execute if score .tmi_arrow .data matches 10 run scoreboard players set .tmi_arrow .data 0
execute if score .tmi_arrow .data matches 11 run scoreboard players set .tmi_arrow .data 1
execute if score .tmi_arrow .data matches 12 run scoreboard players set .tmi_arrow .data 2

execute if score .tmi_arrow .data matches 0 run item replace block 235 -49 -223 container.17 with arrow[custom_name='{"text":"Normal Arrow","italic":false}',custom_data={chest:1},lore=['{"text":"Normal reloading arrows","color":"white","italic":false}']]
execute if score .tmi_arrow .data matches 1 run item replace block 235 -49 -223 container.17 with wind_charge[custom_name='{"text":"Wind Arrow","italic":false}',custom_data={chest:1},lore=['{"text":"Arrows explode if they hit a wall","color":"white","italic":false}']]
execute if score .tmi_arrow .data matches 2 run item replace block 235 -49 -223 container.17 with arrow[custom_model_data=3,custom_name='{"text":"Three in the quiver","italic":false,"color":white}',custom_data={chest:1},lore=['{"text":"Start with three arrows. Kills reloads one arrow.","color":"white","italic":false}','{"text":"Trap, spawn, and turret kills count","color":"white","italic":false}','{"text":"Wall hits reload arrow","color":"white","italic":false}','{"text":"If no arrow, reload one in 8s","color":"white","italic":false}']]

item replace block 235 -49 -223 container.18 with black_stained_glass_pane[custom_name='{"text":""}']

item replace block 235 -49 -223 container.25 with black_stained_glass_pane[custom_name='{"text":""}']

execute if score .tmi_fog .data matches 0 unless data block 235 -49 -223 {Items:[{Slot:26b,id:"minecraft:pink_dye"}]} run scoreboard players set .tmi_fog .data 11
execute if score .tmi_fog .data matches 1 unless data block 235 -49 -223 {Items:[{Slot:26b,id:"minecraft:purple_dye"}]} run scoreboard players set .tmi_fog .data 12
execute if score .tmi_fog .data matches 2 unless data block 235 -49 -223 {Items:[{Slot:26b,id:"minecraft:black_dye"}]} run scoreboard players set .tmi_fog .data 10

execute if score .tmi_fog .data matches 10 run scoreboard players set .tmi_fog .data 0
execute if score .tmi_fog .data matches 11 run scoreboard players set .tmi_fog .data 1
execute if score .tmi_fog .data matches 12 run scoreboard players set .tmi_fog .data 2

execute if score .tmi_fog .data matches 0 run item replace block 235 -49 -223 container.26 with pink_dye[custom_name='{"text":"No Fog","italic":false}']
execute if score .tmi_fog .data matches 1 run item replace block 235 -49 -223 container.26 with purple_dye[custom_name='{"text":"Fog","italic":false}']
execute if score .tmi_fog .data matches 2 run item replace block 235 -49 -223 container.26 with black_dye[custom_name='{"text":"Blindness","italic":false}']

#item replace block 235 -49 -224 container.0 with gray_stained_glass_pane{custom_name='{"text":"Bow Slot","italic":false}'}}
#item replace block 235 -49 -224 container.17 with gray_stained_glass_pane{custom_name='{"text":"Arrow Slot","italic":false}',lore=['{"text":"Unable to be changed","italic":false,"color":"gray"}']}}

item replace block 235 -49 -224 container.0 with black_stained_glass_pane[custom_name='{"text":""}']
item replace block 235 -49 -224 container.1 with black_stained_glass_pane[custom_name='{"text":""}']
item replace block 235 -49 -224 container.2 with black_stained_glass_pane[custom_name='{"text":""}']
item replace block 235 -49 -224 container.3 with black_stained_glass_pane[custom_name='{"text":""}']
item replace block 235 -49 -224 container.4 with black_stained_glass_pane[custom_name='{"text":""}']
item replace block 235 -49 -224 container.5 with black_stained_glass_pane[custom_name='{"text":""}']
item replace block 235 -49 -224 container.6 with black_stained_glass_pane[custom_name='{"text":""}']
item replace block 235 -49 -224 container.7 with black_stained_glass_pane[custom_name='{"text":""}']
item replace block 235 -49 -224 container.8 with black_stained_glass_pane[custom_name='{"text":""}']

item replace block 235 -49 -224 container.9 with purple_stained_glass_pane[custom_model_data=1,custom_name='{"text":"Start Items","italic":false}',lore=['{"text":"These slots control items you have","italic":false}','{"text":"given at start of game.","italic":false}']]
item replace block 235 -49 -224 container.14 with purple_stained_glass_pane[custom_model_data=2,custom_name='{"text":"Life Items","italic":false}',lore=['{"text":"These slots control items you have","italic":false}','{"text":"given at start of a life.","italic":false}']]

item replace block 235 -49 -224 container.18 with purple_stained_glass_pane[custom_model_data=3,custom_name='{"text":"Every _ Kills [1/3/5/7]","italic":false}',lore=['{"text":"These slots control items you are","italic":false}','{"text":"given after an amount of kills.","italic":false}']]
item replace block 235 -49 -224 container.23 with purple_stained_glass_pane[custom_model_data=4,custom_name='{"text":"Every _ Seconds [12/20/30]","italic":false}',lore=['{"text":"These slots control items you are","italic":false}','{"text":"given after a set amount of time.","italic":false}']]

clear @a black_stained_glass_pane[custom_name='{"text":""}']
clear @a gray_stained_glass_pane
clear @a purple_stained_glass_pane

clear @a[tag=lobby,nbt={Inventory:[{id:"minecraft:ender_pearl"}]}] ender_pearl
clear @a[tag=lobby,nbt={Inventory:[{id:"minecraft:crossbow"}]}] crossbow
clear @a[tag=lobby,nbt={Inventory:[{id:"minecraft:snowball"}]}] snowball
clear @a[tag=lobby,nbt={Inventory:[{id:"minecraft:egg"}]}] egg
clear @a[tag=lobby,nbt={Inventory:[{id:"minecraft:map"}]}] map
clear @a[tag=lobby,nbt={Inventory:[{id:"minecraft:iron_ingot"}]}] iron_ingot
clear @a[tag=lobby,nbt={Inventory:[{id:"minecraft:lingering_potion"}]}] lingering_potion
clear @a[tag=lobby,nbt={Inventory:[{id:"minecraft:netherite_sword"}]}] netherite_sword
clear @a[tag=lobby,nbt={Inventory:[{id:"minecraft:panda_spawn_egg"}]}] panda_spawn_egg
clear @a[tag=lobby,nbt={Inventory:[{id:"minecraft:zombie_villager_spawn_egg"}]}] zombie_villager_spawn_egg

clear @a[tag=lobby] light_gray_dye
clear @a[tag=lobby] red_dye
clear @a[tag=lobby] pink_dye
clear @a[tag=lobby] purple_dye
clear @a[tag=lobby] black_dye
clear @a[tag=lobby] gray_dye[custom_data={chest:1}]
clear @a[tag=lobby] arrow[custom_data={chest:1}]
clear @a[tag=lobby] wind_charge
clear @a[tag=lobby] skeleton_skull
clear @a[tag=lobby] beacon
clear @a[tag=lobby] paper

#
execute if data block 235 -49 -224 {Items:[{Slot:10b,id:"minecraft:bow"}]} run item replace block 235 -49 -224 container.10 with air
execute if data block 235 -49 -224 {Items:[{Slot:11b,id:"minecraft:bow"}]} run item replace block 235 -49 -224 container.11 with air
execute if data block 235 -49 -224 {Items:[{Slot:12b,id:"minecraft:bow"}]} run item replace block 235 -49 -224 container.12 with air
execute if data block 235 -49 -224 {Items:[{Slot:13b,id:"minecraft:bow"}]} run item replace block 235 -49 -224 container.13 with air

execute if data block 235 -49 -224 {Items:[{Slot:15b,id:"minecraft:bow"}]} run item replace block 235 -49 -224 container.15 with air
execute if data block 235 -49 -224 {Items:[{Slot:16b,id:"minecraft:bow"}]} run item replace block 235 -49 -224 container.16 with air
execute if data block 235 -49 -224 {Items:[{Slot:17b,id:"minecraft:bow"}]} run item replace block 235 -49 -224 container.17 with air

execute if data block 235 -49 -224 {Items:[{Slot:19b,id:"minecraft:bow"}]} run item replace block 235 -49 -224 container.19 with air
execute if data block 235 -49 -224 {Items:[{Slot:20b,id:"minecraft:bow"}]} run item replace block 235 -49 -224 container.20 with air
execute if data block 235 -49 -224 {Items:[{Slot:21b,id:"minecraft:bow"}]} run item replace block 235 -49 -224 container.21 with air
execute if data block 235 -49 -224 {Items:[{Slot:22b,id:"minecraft:bow"}]} run item replace block 235 -49 -224 container.22 with air

execute if data block 235 -49 -224 {Items:[{Slot:23b,id:"minecraft:bow"}]} run item replace block 235 -49 -224 container.23 with air
execute if data block 235 -49 -224 {Items:[{Slot:24b,id:"minecraft:bow"}]} run item replace block 235 -49 -224 container.24 with air
execute if data block 235 -49 -224 {Items:[{Slot:25b,id:"minecraft:bow"}]} run item replace block 235 -49 -224 container.25 with air

#
execute if data block 235 -49 -224 {Items:[{Slot:10b,id:"minecraft:arrow"}]} run item replace block 235 -49 -224 container.10 with air
execute if data block 235 -49 -224 {Items:[{Slot:11b,id:"minecraft:arrow"}]} run item replace block 235 -49 -224 container.11 with air
execute if data block 235 -49 -224 {Items:[{Slot:12b,id:"minecraft:arrow"}]} run item replace block 235 -49 -224 container.12 with air
execute if data block 235 -49 -224 {Items:[{Slot:13b,id:"minecraft:arrow"}]} run item replace block 235 -49 -224 container.13 with air

execute if data block 235 -49 -224 {Items:[{Slot:15b,id:"minecraft:arrow"}]} run item replace block 235 -49 -224 container.15 with air
execute if data block 235 -49 -224 {Items:[{Slot:16b,id:"minecraft:arrow"}]} run item replace block 235 -49 -224 container.16 with air
execute if data block 235 -49 -224 {Items:[{Slot:17b,id:"minecraft:arrow"}]} run item replace block 235 -49 -224 container.17 with air

execute if data block 235 -49 -224 {Items:[{Slot:19b,id:"minecraft:arrow"}]} run item replace block 235 -49 -224 container.19 with air
execute if data block 235 -49 -224 {Items:[{Slot:20b,id:"minecraft:arrow"}]} run item replace block 235 -49 -224 container.20 with air
execute if data block 235 -49 -224 {Items:[{Slot:21b,id:"minecraft:arrow"}]} run item replace block 235 -49 -224 container.21 with air
execute if data block 235 -49 -224 {Items:[{Slot:22b,id:"minecraft:arrow"}]} run item replace block 235 -49 -224 container.22 with air

execute if data block 235 -49 -224 {Items:[{Slot:23b,id:"minecraft:arrow"}]} run item replace block 235 -49 -224 container.23 with air
execute if data block 235 -49 -224 {Items:[{Slot:24b,id:"minecraft:arrow"}]} run item replace block 235 -49 -224 container.24 with air
execute if data block 235 -49 -224 {Items:[{Slot:25b,id:"minecraft:arrow"}]} run item replace block 235 -49 -224 container.25 with air

#
execute if data block 235 -49 -224 {Items:[{Slot:10b,id:"minecraft:gray_dye"}]} run item replace block 235 -49 -224 container.10 with air
execute if data block 235 -49 -224 {Items:[{Slot:11b,id:"minecraft:gray_dye"}]} run item replace block 235 -49 -224 container.11 with air
execute if data block 235 -49 -224 {Items:[{Slot:12b,id:"minecraft:gray_dye"}]} run item replace block 235 -49 -224 container.12 with air
execute if data block 235 -49 -224 {Items:[{Slot:13b,id:"minecraft:gray_dye"}]} run item replace block 235 -49 -224 container.13 with air

execute if data block 235 -49 -224 {Items:[{Slot:15b,id:"minecraft:gray_dye"}]} run item replace block 235 -49 -224 container.15 with air
execute if data block 235 -49 -224 {Items:[{Slot:16b,id:"minecraft:gray_dye"}]} run item replace block 235 -49 -224 container.16 with air
execute if data block 235 -49 -224 {Items:[{Slot:17b,id:"minecraft:gray_dye"}]} run item replace block 235 -49 -224 container.17 with air

execute if data block 235 -49 -224 {Items:[{Slot:19b,id:"minecraft:gray_dye"}]} run item replace block 235 -49 -224 container.19 with air
execute if data block 235 -49 -224 {Items:[{Slot:20b,id:"minecraft:gray_dye"}]} run item replace block 235 -49 -224 container.20 with air
execute if data block 235 -49 -224 {Items:[{Slot:21b,id:"minecraft:gray_dye"}]} run item replace block 235 -49 -224 container.21 with air
execute if data block 235 -49 -224 {Items:[{Slot:22b,id:"minecraft:gray_dye"}]} run item replace block 235 -49 -224 container.22 with air

execute if data block 235 -49 -224 {Items:[{Slot:23b,id:"minecraft:gray_dye"}]} run item replace block 235 -49 -224 container.23 with air
execute if data block 235 -49 -224 {Items:[{Slot:24b,id:"minecraft:gray_dye"}]} run item replace block 235 -49 -224 container.24 with air
execute if data block 235 -49 -224 {Items:[{Slot:25b,id:"minecraft:gray_dye"}]} run item replace block 235 -49 -224 container.25 with air

#
execute if data block 235 -49 -224 {Items:[{Slot:10b,id:"minecraft:magenta_glazed_terracotta"}]} run item replace block 235 -49 -224 container.10 with air
execute if data block 235 -49 -224 {Items:[{Slot:11b,id:"minecraft:magenta_glazed_terracotta"}]} run item replace block 235 -49 -224 container.11 with air
execute if data block 235 -49 -224 {Items:[{Slot:12b,id:"minecraft:magenta_glazed_terracotta"}]} run item replace block 235 -49 -224 container.12 with air
execute if data block 235 -49 -224 {Items:[{Slot:13b,id:"minecraft:magenta_glazed_terracotta"}]} run item replace block 235 -49 -224 container.13 with air

execute if data block 235 -49 -224 {Items:[{Slot:15b,id:"minecraft:magenta_glazed_terracotta"}]} run item replace block 235 -49 -224 container.15 with air
execute if data block 235 -49 -224 {Items:[{Slot:16b,id:"minecraft:magenta_glazed_terracotta"}]} run item replace block 235 -49 -224 container.16 with air
execute if data block 235 -49 -224 {Items:[{Slot:17b,id:"minecraft:magenta_glazed_terracotta"}]} run item replace block 235 -49 -224 container.17 with air

execute if data block 235 -49 -224 {Items:[{Slot:19b,id:"minecraft:magenta_glazed_terracotta"}]} run item replace block 235 -49 -224 container.19 with air
execute if data block 235 -49 -224 {Items:[{Slot:20b,id:"minecraft:magenta_glazed_terracotta"}]} run item replace block 235 -49 -224 container.20 with air
execute if data block 235 -49 -224 {Items:[{Slot:21b,id:"minecraft:magenta_glazed_terracotta"}]} run item replace block 235 -49 -224 container.21 with air
execute if data block 235 -49 -224 {Items:[{Slot:22b,id:"minecraft:magenta_glazed_terracotta"}]} run item replace block 235 -49 -224 container.22 with air

execute if data block 235 -49 -224 {Items:[{Slot:23b,id:"minecraft:magenta_glazed_terracotta"}]} run item replace block 235 -49 -224 container.23 with air
execute if data block 235 -49 -224 {Items:[{Slot:24b,id:"minecraft:magenta_glazed_terracotta"}]} run item replace block 235 -49 -224 container.24 with air
execute if data block 235 -49 -224 {Items:[{Slot:25b,id:"minecraft:magenta_glazed_terracotta"}]} run item replace block 235 -49 -224 container.25 with air

#
execute if data block 235 -49 -224 {Items:[{Slot:10b,id:"minecraft:black_stained_glass_pane"}]} run item replace block 235 -49 -224 container.10 with air
execute if data block 235 -49 -224 {Items:[{Slot:11b,id:"minecraft:black_stained_glass_pane"}]} run item replace block 235 -49 -224 container.11 with air
execute if data block 235 -49 -224 {Items:[{Slot:12b,id:"minecraft:black_stained_glass_pane"}]} run item replace block 235 -49 -224 container.12 with air
execute if data block 235 -49 -224 {Items:[{Slot:13b,id:"minecraft:black_stained_glass_pane"}]} run item replace block 235 -49 -224 container.13 with air

execute if data block 235 -49 -224 {Items:[{Slot:15b,id:"minecraft:black_stained_glass_pane"}]} run item replace block 235 -49 -224 container.15 with air
execute if data block 235 -49 -224 {Items:[{Slot:16b,id:"minecraft:black_stained_glass_pane"}]} run item replace block 235 -49 -224 container.16 with air
execute if data block 235 -49 -224 {Items:[{Slot:17b,id:"minecraft:black_stained_glass_pane"}]} run item replace block 235 -49 -224 container.17 with air

execute if data block 235 -49 -224 {Items:[{Slot:19b,id:"minecraft:black_stained_glass_pane"}]} run item replace block 235 -49 -224 container.19 with air
execute if data block 235 -49 -224 {Items:[{Slot:20b,id:"minecraft:black_stained_glass_pane"}]} run item replace block 235 -49 -224 container.20 with air
execute if data block 235 -49 -224 {Items:[{Slot:21b,id:"minecraft:black_stained_glass_pane"}]} run item replace block 235 -49 -224 container.21 with air
execute if data block 235 -49 -224 {Items:[{Slot:22b,id:"minecraft:black_stained_glass_pane"}]} run item replace block 235 -49 -224 container.22 with air

#
#execute if data block 235 -49 -224 {Items:[{Slot:23b,id:"minecraft:golden_apple"}]} run item replace block 235 -49 -224 container.23 with air
#execute if data block 235 -49 -224 {Items:[{Slot:24b,id:"minecraft:golden_apple"}]} run item replace block 235 -49 -224 container.24 with air
#execute if data block 235 -49 -224 {Items:[{Slot:25b,id:"minecraft:golden_apple"}]} run item replace block 235 -49 -224 container.25 with air

#execute if data block 235 -49 -224 {Items:[{Slot:10b,id:"minecraft:golden_apple"}]} run item replace block 235 -49 -224 container.10 with air
#execute if data block 235 -49 -224 {Items:[{Slot:11b,id:"minecraft:golden_apple"}]} run item replace block 235 -49 -224 container.11 with air
#execute if data block 235 -49 -224 {Items:[{Slot:12b,id:"minecraft:golden_apple"}]} run item replace block 235 -49 -224 container.12 with air
#execute if data block 235 -49 -224 {Items:[{Slot:13b,id:"minecraft:golden_apple"}]} run item replace block 235 -49 -224 container.13 with air

#execute if data block 235 -49 -224 {Items:[{Slot:15b,id:"minecraft:golden_apple"}]} run item replace block 235 -49 -224 container.15 with air
#execute if data block 235 -49 -224 {Items:[{Slot:16b,id:"minecraft:golden_apple"}]} run item replace block 235 -49 -224 container.16 with air
#execute if data block 235 -49 -224 {Items:[{Slot:17b,id:"minecraft:golden_apple"}]} run item replace block 235 -49 -224 container.17 with air

#execute if data block 235 -49 -224 {Items:[{Slot:19b,id:"minecraft:golden_apple"}]} run item replace block 235 -49 -224 container.19 with air
#execute if data block 235 -49 -224 {Items:[{Slot:20b,id:"minecraft:golden_apple"}]} run item replace block 235 -49 -224 container.20 with air
#execute if data block 235 -49 -224 {Items:[{Slot:21b,id:"minecraft:golden_apple"}]} run item replace block 235 -49 -224 container.21 with air
#execute if data block 235 -49 -224 {Items:[{Slot:22b,id:"minecraft:golden_apple"}]} run item replace block 235 -49 -224 container.22 with air

#execute if data block 235 -49 -224 {Items:[{Slot:23b,id:"minecraft:golden_apple"}]} run item replace block 235 -49 -224 container.23 with air
#execute if data block 235 -49 -224 {Items:[{Slot:24b,id:"minecraft:golden_apple"}]} run item replace block 235 -49 -224 container.24 with air
#execute if data block 235 -49 -224 {Items:[{Slot:25b,id:"minecraft:golden_apple"}]} run item replace block 235 -49 -224 container.25 with air
