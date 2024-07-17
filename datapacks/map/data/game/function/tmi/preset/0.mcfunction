#
#item replace block 235 -49 -224 container.9 with purple_stained_glass_pane[custom_name='{"text":"Start Items","italic":false}',lore=['{"text":"These slots control items you have","italic":false}','{"text":"given at start of game.","italic":false}']]
#item replace block 235 -49 -224 container.14 with purple_stained_glass_pane[custom_name='{"text":"Life Items","italic":false}',lore=['{"text":"These slots control items you have","italic":false}','{"text":"given at start of a life.","italic":false}']]

#item replace block 235 -49 -224 container.18 with purple_stained_glass_pane[custom_name='{"text":"Every _ Kills [1/3/5/10]","italic":false}',lore=['{"text":"These slots control items you have","italic":false}','{"text":"given at the start of the game.","italic":false}']]
#item replace block 235 -49 -224 container.23 with purple_stained_glass_pane[custom_name='{"text":"Every _ Seconds [12/20/30]","italic":false}',lore=['{"text":"These slots control items you have","italic":false}','{"text":"given after a set amount of time.","italic":false}']]

#
#WALL     panda_spawn_egg[custom_model_data=1,can_place_on={predicates:[{blocks:"#game:bolt_place"}],show_in_tooltip:false},custom_name='{"text":"Walls","color":"gray","italic":false}',lore=['{"text":"Four blocks of breakable gravel","color":"white","italic":false}','{"text":"Pushes players and enitites up.","color":"white","italic":false}'],entity_data={id:"minecraft:silverfish",Silent:1b,NoAI:1}] 8
#TRAP     panda_spawn_egg[custom_model_data=0,can_place_on={predicates:[{blocks:"#game:bolt_place"}],show_in_tooltip:false},custom_name='{"text":"Trap","italic":false,"color":"gray"}',lore=['{"text":"Explodes when enemies get near","color":"white","italic":false}','{"text":"Outer ring - explosion radius","color":"white","italic":false}','{"text":"Inner ring - trigger radius","color":"white","italic":false}','{"text":"Can be shot","color":"white","italic":false}','{"text":"Max active: 12","color":"white","italic":false}'],entity_data={id:"minecraft:creeper",PersistenceRequired:1b,Silent:1b}] 4
#GRENADE  snowball[custom_name='{"text":"Grenade","italic":false,"color":"gray"}',lore=['{"text":"Explodes, killing players","color":"white","italic":false}','{"text":"Kills traps and respawns","color":"white","italic":false}','{"text":"Explodes slower if thrown close","color":"white","italic":false}']] 4
#SPAWN    panda_spawn_egg[custom_model_data=3,can_place_on={predicates:[{blocks:"#game:bolt_place"}],show_in_tooltip:false},custom_name='{"text":"Spawn Point","italic":false,"color":"gray"}',lore=['{"text":"Place a location to respawn at","color":"white","italic":false}','{"text":"Respawn 1.5 seconds faster","color":"white","italic":false}','{"text":"Can be shot","color":"white","italic":false}','{"text":"Max active: 1","color":"white","italic":false}','{"text":"Returned on flag capture","color":"white","italic":false}'],entity_data={id:"minecraft:slime",PersistenceRequired:1b,Silent:1b,Size:0}] 2
#REVEAL   map[custom_name='{"text":"Reveal","italic":false,"color":"gray"}',lore=['{"text":"See enemy players and placables","color":"white","italic":false}','{"text":"through walls for 5 seconds","color":"white","italic":false}']] 1
#CROSSBOW crossbow[custom_name='{"text":"Crossbow (11 seconds)","italic":false,"color":"gray"}',lore=['{"text":"Automatic rapid fire crossbow","color":"white","italic":false}','{"text":"Keep out of range of small children","color":"white","italic":false}'],enchantments={levels:{"minecraft:quick_charge":1},show_in_tooltip:false},custom_data={trigger:1b}] 1
#SHIELD   iron_ingot[custom_name='{"text":"Armor","color":"gray","italic":false}',lore=['{"text":"Survive one arrow hit","color":"white","italic":false}','{"text":"Doesn\'t block explosions","color":"white","italic":false}','{"text":"Drops the flag","color":"white","italic":false}']] 1
#BOOST    egg[custom_name='{"text":"Boost","italic":false,"color":"gray"}',lore=['{"text":"Explode forward","color":"white","italic":false}']] 2
#ZOOM     ender_pearl[custom_name='{"text":"Zoomies (8 Seconds)","italic":false,"color":"gray"}',lore=['{"text":"Speed and jump boost for 8 seconds","color":"white","italic":false}']] 2
#SWORD    minecraft:netherite_sword[custom_name='{"text":"Claws","italic":false,"color":"gray"}',lore=['{"text":"Claw players, placables, and walls","color":"white","italic":false}'],damage=2031,can_break={predicates:[{blocks:"gravel"}]},enchantments={levels:{"minecraft:knockback":3},show_in_tooltip:false},attribute_modifiers={modifiers:[{id:"attack_damage",type:"generic.attack_damage",amount:100,operation:"add_value",slot:"any"}],show_in_tooltip:false}] 1
#TURRET   panda_spawn_egg[custom_model_data=4,can_place_on={predicates:[{blocks:"#game:bolt_place"}],show_in_tooltip:false},custom_name='{"text":"Turret","italic":false,"color":"gray"}',lore=['{"text":"Turret that shoots players and minions","color":"white","italic":false}','{"text":"Range: 20 blocks","color":"white","italic":false}','{"text":"Charge time: 1s","color":"white","italic":false}','{"text":"Max active: 5","color":"white","italic":false}'],entity_data={id:"minecraft:pig",PersistenceRequired:0b,Silent:1b,NoAI:1,IsBaby:0b,Health:10f}] 2
#MINION   minecraft:zombie_villager_spawn_egg[can_place_on={predicates:[{blocks:"#game:bolt_place"}],show_in_tooltip:false},custom_name='{"text":"Minion","italic":false,"color":"gray"}',lore=['{"text":"Summon zombie that attacks enemies","color":"white","italic":false}'],entity_data={id:"minecraft:zombie_villager",PersistenceRequired:1b,CanPickUpLoot:0b,Health:10f,IsBaby:0b,ArmorItems:[{},{},{},{id:"minecraft:zombie_head",count:1}],Attributes:[{Name:generic.max_health,Base:1},{Name:generic.movement_speed,Base:0.33}]}] 4

#
scoreboard players set .tmi_objective .data 10
scoreboard players set .tmi_arrow .data 10
scoreboard players set .tmi_fog .data 10

#
item replace block 235 -49 -224 container.10 with air
item replace block 235 -49 -224 container.11 with air
item replace block 235 -49 -224 container.12 with air
item replace block 235 -49 -224 container.13 with air

item replace block 235 -49 -224 container.15 with air
item replace block 235 -49 -224 container.16 with air
item replace block 235 -49 -224 container.17 with air

item replace block 235 -49 -224 container.19 with air
item replace block 235 -49 -224 container.20 with air
item replace block 235 -49 -224 container.21 with air
item replace block 235 -49 -224 container.22 with air

item replace block 235 -49 -224 container.24 with air
item replace block 235 -49 -224 container.25 with air
item replace block 235 -49 -224 container.26 with air