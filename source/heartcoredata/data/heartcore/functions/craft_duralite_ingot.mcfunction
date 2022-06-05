execute at @s if block ~ ~ ~ minecraft:dropper{Items: [{Slot: 1b, id: "minecraft:netherite_scrap"}, {Slot: 4b, id: "minecraft:diamond"}]} run execute at @s run scoreboard players set temp dummy 1
execute at @s if score temp dummy matches 1 run scoreboard players set crafttype dummy 3
execute at @s if score temp dummy matches 1 run function heartcore:craftercount
execute at @s if score temp dummy matches 1 run summon item ~ ~1 ~ {Item:{id:"minecraft:glistering_melon_slice",tag:{CustomModelData:7740007,display:{Name:'[{"text":"Duralite Ingot","italic":false}]'},Unbreakable:1,HideFlags:4},Count:2b}}
scoreboard players set temp dummy 0