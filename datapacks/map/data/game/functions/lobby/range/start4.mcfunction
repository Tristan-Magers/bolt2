tag @a remove starting_range
tag @r[x=254.5,y=-50,z=-266.5,distance=..1.8] add starting_range
tp @p[tag=starting_range] 254.5 -50 -267.0 180 0
tp @a[tag=!starting_range,x=254.5,y=-50,z=-266.5,distance=..1.8] 254.5 -50.00 -263.5

setblock 254 -50 -266 minecraft:iron_door[facing=north,half=lower,hinge=left] destroy
setblock 254 -49 -266 minecraft:iron_door[facing=north,half=upper,hinge=left] destroy

tag @a remove starting_range

scoreboard players set .range4 .data 1