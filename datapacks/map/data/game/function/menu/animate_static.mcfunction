scoreboard players add .menu_now_showing .timer 1

execute if score .menu_now_showing .timer matches 10 run data merge entity @e[tag=lobby_menu_static,tag=now_showing,limit=1] {alignment:"center",background:0,default_background:0b,line_width:200,see_through:0b,shadow:1b,text:'{"text":"NOW SHOWING","font":"minecraft:fancy","color":"dark_gray"}',text_opacity:-1b,transformation:{left_rotation:[0.0f,0.70710677f,0.0f,0.70710677f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[3.0625007f,5.1249995f,0.9456516f],translation:[0.0f,0.0f,0.0f]}}
execute if score .menu_now_showing .timer matches 20 run data merge entity @e[tag=lobby_menu_static,tag=now_showing,limit=1] {alignment:"center",background:0,default_background:0b,line_width:200,see_through:0b,shadow:1b,text:'{"text":"NOW SHOWING","font":"minecraft:fancy","color":"gray"}',text_opacity:-1b,transformation:{left_rotation:[0.0f,0.70710677f,0.0f,0.70710677f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[3.0625007f,5.1249995f,0.9456516f],translation:[0.0f,0.0f,0.0f]}}

execute if score .menu_now_showing .timer matches 20.. run scoreboard players set .menu_now_showing .timer 0