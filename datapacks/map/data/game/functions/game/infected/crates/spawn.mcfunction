#
execute align xyz run fill ~ ~ ~ ~ ~ ~ chest{Lock:"no_key"} replace air
execute align xyz run summon minecraft:interaction ~0.5 ~ ~0.5 {Tags:["crate"],response:1b}
execute align xyz run summon shulker ~0.5 ~ ~0.5 {Team:"gray",Invulnerable:1b,Glowing:1b,NoAI:1b,AttachFace:0b,ActiveEffects:[{Id:11,Amplifier:10b,Duration:999999},{Id:14,Amplifier:10b,Duration:19999980,ShowParticles:0b},{Id:24,Amplifier:10b,Duration:999999}]}

kill @s[tag=crate_marker]