tag @e remove id_compare
tag @s add id_compare
tag @e remove id_share
$execute as $(selector) if score @s ID = @e[tag=id_compare,limit=1] ID run tag @s add id_share
