# clones in the correct visual
fill 270 -35 -222 271 -54 -249 air

execute if score .map_screen .data = .1 .num run clone 309 -54 -249 308 -35 -223 270 -54 -249 masked force
execute if score .map_screen .data = .2 .num run clone 314 -54 -249 313 -35 -223 270 -54 -249 masked force
execute if score .map_screen .data = .3 .num run clone 319 -54 -249 318 -35 -223 270 -54 -249 masked force
execute if score .map_screen .data = .5 .num run clone 324 -54 -249 323 -35 -223 270 -54 -249 masked force
execute if score .map_screen .data = .6 .num run clone 329 -54 -249 328 -35 -223 270 -54 -249 masked force
execute if score .map_screen .data = .12 .num run clone 334 -54 -249 333 -35 -223 270 -54 -249 masked force
execute if score .map_screen .data = .10 .num run clone 339 -54 -249 338 -35 -223 270 -54 -249 masked force
execute if score .map_screen .data = .14 .num run clone 343 -54 -249 344 -35 -223 270 -54 -249 masked force
execute if score .map_screen .data = .15 .num run clone 347 -54 -249 348 -35 -223 270 -54 -249 masked force
execute if score .map_screen .data = .0 .num run clone 351 -54 -249 352 -35 -223 270 -54 -249 masked force

scoreboard players set .map_screen_time .data 0
execute store result score .map_screen_time_type .data run random value 0..7