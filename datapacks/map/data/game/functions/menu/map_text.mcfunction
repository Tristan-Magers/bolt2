#

execute if score .map .data = .1 .num run title @a[tag=me_player] actionbar [{"text":""},{"text":"TOWERS","color":"#8269B5","bold":true},{"text":" | Size: "},{"text":"⬛⬛⬜","color":"#F08B26","bold":true}]
execute if score .map .data = .2 .num run title @a[tag=me_player] actionbar [{"text":""},{"text":"COVE","color":"#43B5AD","bold":true},{"text":" | Size: "},{"text":"⬛⬛⬜","color":"#F08B26","bold":true}]
execute if score .map .data = .3 .num run title @a[tag=me_player] actionbar [{"text":""},{"text":"DIVIDE","color":"#63B560","bold":true},{"text":" | Size: "},{"text":"⬛⬜⬜","color":"#29AEF0","bold":true}]
execute if score .map .data = .5 .num run title @a[tag=me_player] actionbar [{"text":""},{"text":"HEX","color":"#8AA1B5","bold":true},{"text":" | Size: "},{"text":"⬛⬜⬜","color":"#29AEF0","bold":true}]
execute if score .map .data = .6 .num run title @a[tag=me_player] actionbar [{"text":""},{"text":"VALLEY","color":"#CFAE91","bold":true},{"text":" | Size: "},{"text":"⬛⬛⬛","color":"#F02B24","bold":true}]