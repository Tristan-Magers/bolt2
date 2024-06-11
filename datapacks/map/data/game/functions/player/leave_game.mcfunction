#ID
scoreboard players add @s ID 0

execute if entity @s[scores={ID=..0}] run scoreboard players add .new ID 1
execute if entity @s[scores={ID=..0}] run scoreboard players operation @p[scores={ID=..0}] ID = .new ID

# Leave potion reset
clear @s minecraft:glass_bottle
scoreboard players set @s leave_potion 0

#
scoreboard players add @s team_pref 0

scoreboard players set @s[tag=!has_rank_v23] rank 500
scoreboard players set @s[tag=!has_rank_v23] win_streak -2
scoreboard players set @s[tag=!has_rank_v23] team_pref 0
tag @s add has_rank_v23

tp @s 243.50 -50.00 -226.99 -110 0

clear @s

execute as @s[tag=lobby,tag=has_bow_ui] run function game:bow_ui/make_page

tag @s remove hasflag
tag @s remove hasspawn

scoreboard players set @s ded -1
scoreboard players set @s respawn -1

scoreboard players add @s team_pref 0

scoreboard players add @s invul 0
scoreboard players add @s wall_invul 0

team leave @s

gamemode adventure @s

function game:menu/p_display/reset_player

scoreboard players set @s Leave 0

effect clear @s

tag @s remove loading
tag @s remove playing

tag @s remove item_minion
tag @s remove item_boost
tag @s remove dark_immune
tag @s remove more_armor
tag @s remove item_acid

tag @s remove dark

tag @s remove is_spectating

scoreboard players add @s bow_texture 0

scoreboard players set @s crossbowTime 1

scoreboard players set @s drop_egg_generic 0
scoreboard players set @s drop_creeper 0
scoreboard players set @s drop_snowball 0
scoreboard players set @s drop_silver 0
scoreboard players set @s drop_slime 0
scoreboard players set @s drop_magma 0
scoreboard players set @s drop_map 0
scoreboard players set @s drop_scrap 0
scoreboard players set @s drop_egg 0
scoreboard players set @s drop_turret 0

#
stopsound @s