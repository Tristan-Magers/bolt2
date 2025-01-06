clear @s written_book
tag @s add lobby_inv_correct
item replace entity @s hotbar.6 with minecraft:written_book[written_book_content={title:"Book for Nerds",author:"Bleps",generation:0,resolved:1b,pages:['[{"text":"Book for nerds","bold":true,"underlined":false},{"text":"\\nGame Version 1.0.8.1","underlined":false,"bold":false},{"text":"\\n\\nLinks","underlined":false},{"text":"\\n\\nDiscord","color":"dark_aqua","bold":false,"underlined":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Talk with the community and find out about upcoming events. :)","color":"dark_green"}]},"clickEvent":{"action":"open_url","value":"https://discord.gg/6xatFYH"}},{"text":"\\n\\nSupport Me :3","color":"#1B4EA6","bold":false,"underlined":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Just letting me know you enjoy the game is enough, but if you are inclined, I have a Patreon.","color":"dark_aqua"}]},"clickEvent":{"action":"open_url","value":"https://www.patreon.com/chainsawninja"}},{"text":"\\n\\nGitHub","bold":false,"underlined":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Download of world and all files. May be a slightly different version.","color":"gray"}]},"clickEvent":{"action":"open_url","value":"https://github.com/Tristan-Magers/Bolt2"}}]','[{"text":"Credits\\n","bold":true,"underlined":false},{"text":"\\nChainsawNinja","underlined":false,"bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Lead/Dev/Design","color":"gold"}]}},{"text":"\\nGoombGoombus","underlined":false,"bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Art/Music/Building","color":"gold"}]}},{"text":"\\nSlabfred","underlined":false,"bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Building","color":"gold"}]}},{"text":"\\nMiffenKop","underlined":false,"bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Art/Models","color":"gold"}]}},{"text":"\\nAiden_Monster","underlined":false,"bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Art/Models/Server","color":"gold"}]}},{"text":"\\nDerpine","underlined":false,"bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Building","color":"gold"}]}},{"text":"\\nTheViralMelon","underlined":false,"bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Dev","color":"gold"}]}},{"text":"\\nTannerDubord","underlined":false,"bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Building","color":"gold"}]}},{"text":"\\nphoebunny","underlined":false,"bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Building","color":"gold"}]}},{"text":"\\nramencakes_","underlined":false,"bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Building","color":"gold"}]}},{"text":"\\nShuba_Shuba","underlined":false,"bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Code/Building","color":"gold"}]}},{"text":"\\nphoenixxempire","underlined":false,"bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Building","color":"gold"}]}}]','[{"text":"Special Thanks\\n","bold":true,"underlined":false},{"text":"\\nflamingo_iris","underlined":false,"bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Emotional support 💗","color":"gold"}]}},{"text":"\\nUpper380","underlined":false,"bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Bow Art/Map Concept/Playtesting","color":"gold"}]}},{"text":"\\nmphotons","underlined":false,"bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Bow Art/Playtesting","color":"gold"}]}},{"text":"\\nbetaRadiation","underlined":false,"bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Bow Art/Playtesting","color":"gold"}]}},{"text":"\\nrubix_yi","underlined":false,"bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Playtesting","color":"gold"}]}},{"text":"\\nCalverin","underlined":false,"bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Playtesting","color":"gold"}]}},{"text":"\\nSmartyAlek","underlined":false,"bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Playtesting","color":"gold"}]}},{"text":"\\nBillington","underlined":false,"bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Playtesting","color":"gold"}]}},{"text":"\\nmightyjosh11","underlined":false,"bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Playtesting","color":"gold"}]}}]','[{"text":"Rank system\\n\\n","bold":true},{"bold":false,"text":"The rank system is designed to balance teams and mix teams up. Please do not take it too seriously. It is not a mathematical judgement of skill. It is there to make playing with friends a seamless experience for capture the flag."}]']}] 1

#
execute if data block 235 -49 -224 {Items:[{Slot:10b,id:"minecraft:written_book"}]} run item replace block 235 -49 -224 container.10 with air
execute if data block 235 -49 -224 {Items:[{Slot:11b,id:"minecraft:written_book"}]} run item replace block 235 -49 -224 container.11 with air
execute if data block 235 -49 -224 {Items:[{Slot:12b,id:"minecraft:written_book"}]} run item replace block 235 -49 -224 container.12 with air
execute if data block 235 -49 -224 {Items:[{Slot:13b,id:"minecraft:written_book"}]} run item replace block 235 -49 -224 container.13 with air

execute if data block 235 -49 -224 {Items:[{Slot:15b,id:"minecraft:written_book"}]} run item replace block 235 -49 -224 container.15 with air
execute if data block 235 -49 -224 {Items:[{Slot:16b,id:"minecraft:written_book"}]} run item replace block 235 -49 -224 container.16 with air
execute if data block 235 -49 -224 {Items:[{Slot:17b,id:"minecraft:written_book"}]} run item replace block 235 -49 -224 container.17 with air

execute if data block 235 -49 -224 {Items:[{Slot:19b,id:"minecraft:written_book"}]} run item replace block 235 -49 -224 container.19 with air
execute if data block 235 -49 -224 {Items:[{Slot:20b,id:"minecraft:written_book"}]} run item replace block 235 -49 -224 container.20 with air
execute if data block 235 -49 -224 {Items:[{Slot:21b,id:"minecraft:written_book"}]} run item replace block 235 -49 -224 container.21 with air
execute if data block 235 -49 -224 {Items:[{Slot:22b,id:"minecraft:written_book"}]} run item replace block 235 -49 -224 container.22 with air

execute if data block 235 -49 -224 {Items:[{Slot:24b,id:"minecraft:written_book"}]} run item replace block 235 -49 -224 container.24 with air
execute if data block 235 -49 -224 {Items:[{Slot:25b,id:"minecraft:written_book"}]} run item replace block 235 -49 -224 container.25 with air
execute if data block 235 -49 -224 {Items:[{Slot:26b,id:"minecraft:written_book"}]} run item replace block 235 -49 -224 container.26 with air