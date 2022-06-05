execute at @s unless data block ~ ~ ~ {Items: [{Slot: 0b}]} run execute at @s run data modify block ~ ~ ~ Items insert 1 value {Slot:0b,id:"minecraft:debug_stick",Count:1b}
execute at @s unless data block ~ ~ ~ {Items: [{Slot: 1b}]} run execute at @s run data modify block ~ ~ ~ Items insert 2 value {Slot:1b,id:"minecraft:debug_stick",Count:1b}
execute at @s unless data block ~ ~ ~ {Items: [{Slot: 2b}]} run execute at @s run data modify block ~ ~ ~ Items insert 3 value {Slot:2b,id:"minecraft:debug_stick",Count:1b}
execute at @s unless data block ~ ~ ~ {Items: [{Slot: 3b}]} run execute at @s run data modify block ~ ~ ~ Items insert 4 value {Slot:3b,id:"minecraft:debug_stick",Count:1b}
execute at @s unless data block ~ ~ ~ {Items: [{Slot: 4b}]} run execute at @s run data modify block ~ ~ ~ Items insert 5 value {Slot:4b,id:"minecraft:debug_stick",Count:1b}
execute at @s unless data block ~ ~ ~ {Items: [{Slot: 5b}]} run execute at @s run data modify block ~ ~ ~ Items insert 6 value {Slot:5b,id:"minecraft:debug_stick",Count:1b}
execute at @s unless data block ~ ~ ~ {Items: [{Slot: 6b}]} run execute at @s run data modify block ~ ~ ~ Items insert 7 value {Slot:6b,id:"minecraft:debug_stick",Count:1b}
execute at @s unless data block ~ ~ ~ {Items: [{Slot: 7b}]} run execute at @s run data modify block ~ ~ ~ Items insert 8 value {Slot:7b,id:"minecraft:debug_stick",Count:1b}
execute at @s unless data block ~ ~ ~ {Items: [{Slot: 8b}]} run execute at @s run data modify block ~ ~ ~ Items insert 9 value {Slot:8b,id:"minecraft:debug_stick",Count:1b}

execute at @s store result score slot0 craftcount run data get block ~ ~ ~ Items[0].Count
execute at @s store result score slot1 craftcount run data get block ~ ~ ~ Items[1].Count
execute at @s store result score slot2 craftcount run data get block ~ ~ ~ Items[2].Count
execute at @s store result score slot3 craftcount run data get block ~ ~ ~ Items[3].Count
execute at @s store result score slot4 craftcount run data get block ~ ~ ~ Items[4].Count
execute at @s store result score slot5 craftcount run data get block ~ ~ ~ Items[5].Count
execute at @s store result score slot6 craftcount run data get block ~ ~ ~ Items[6].Count
execute at @s store result score slot7 craftcount run data get block ~ ~ ~ Items[7].Count
execute at @s store result score slot8 craftcount run data get block ~ ~ ~ Items[8].Count

execute unless score crafttype dummy matches 2..4 run scoreboard players operation slot0 craftcount -= 1 dummy
execute unless score crafttype dummy matches 2 run scoreboard players operation slot1 craftcount -= 1 dummy
execute unless score crafttype dummy matches 2..4 run scoreboard players operation slot2 craftcount -= 1 dummy
execute unless score crafttype dummy matches 1..3 run scoreboard players operation slot3 craftcount -= 1 dummy
execute run scoreboard players operation slot4 craftcount -= 1 dummy
execute unless score crafttype dummy matches 1..3 run scoreboard players operation slot5 craftcount -= 1 dummy
execute unless score crafttype dummy matches 2..4 run scoreboard players operation slot6 craftcount -= 1 dummy
execute unless score crafttype dummy matches 2..3 run scoreboard players operation slot7 craftcount -= 1 dummy
execute unless score crafttype dummy matches 2..4 run scoreboard players operation slot8 craftcount -= 1 dummy

scoreboard players set crafttype dummy 0

execute store result storage heartcore:craftcount slot0 int 1 run scoreboard players get slot0 craftcount
execute store result storage heartcore:craftcount slot1 int 1 run scoreboard players get slot1 craftcount
execute store result storage heartcore:craftcount slot2 int 1 run scoreboard players get slot2 craftcount
execute store result storage heartcore:craftcount slot3 int 1 run scoreboard players get slot3 craftcount
execute store result storage heartcore:craftcount slot4 int 1 run scoreboard players get slot4 craftcount
execute store result storage heartcore:craftcount slot5 int 1 run scoreboard players get slot5 craftcount
execute store result storage heartcore:craftcount slot6 int 1 run scoreboard players get slot6 craftcount
execute store result storage heartcore:craftcount slot7 int 1 run scoreboard players get slot7 craftcount
execute store result storage heartcore:craftcount slot8 int 1 run scoreboard players get slot8 craftcount

execute at @s run data modify block ~ ~ ~ Items[8].Count set from storage heartcore:craftcount slot8
execute at @s run data modify block ~ ~ ~ Items[7].Count set from storage heartcore:craftcount slot7
execute at @s run data modify block ~ ~ ~ Items[6].Count set from storage heartcore:craftcount slot6
execute at @s run data modify block ~ ~ ~ Items[5].Count set from storage heartcore:craftcount slot5
execute at @s run data modify block ~ ~ ~ Items[4].Count set from storage heartcore:craftcount slot4
execute at @s run data modify block ~ ~ ~ Items[3].Count set from storage heartcore:craftcount slot3
execute at @s run data modify block ~ ~ ~ Items[2].Count set from storage heartcore:craftcount slot2
execute at @s run data modify block ~ ~ ~ Items[1].Count set from storage heartcore:craftcount slot1
execute at @s run data modify block ~ ~ ~ Items[0].Count set from storage heartcore:craftcount slot0

execute at @s if data block ~ ~ ~ {Items: [{Slot: 0b,id:"minecraft:debug_stick",Count:1b}]} run execute at @s run data modify block ~ ~ ~ Items append value {Slot:0b}
execute at @s if data block ~ ~ ~ {Items: [{Slot: 1b,id:"minecraft:debug_stick",Count:1b}]} run execute at @s run data modify block ~ ~ ~ Items append value {Slot:1b}
execute at @s if data block ~ ~ ~ {Items: [{Slot: 2b,id:"minecraft:debug_stick",Count:1b}]} run execute at @s run data modify block ~ ~ ~ Items append value {Slot:2b}
execute at @s if data block ~ ~ ~ {Items: [{Slot: 3b,id:"minecraft:debug_stick",Count:1b}]} run execute at @s run data modify block ~ ~ ~ Items append value {Slot:3b}
execute at @s if data block ~ ~ ~ {Items: [{Slot: 4b,id:"minecraft:debug_stick",Count:1b}]} run execute at @s run data modify block ~ ~ ~ Items append value {Slot:4b}
execute at @s if data block ~ ~ ~ {Items: [{Slot: 5b,id:"minecraft:debug_stick",Count:1b}]} run execute at @s run data modify block ~ ~ ~ Items append value {Slot:5b}
execute at @s if data block ~ ~ ~ {Items: [{Slot: 6b,id:"minecraft:debug_stick",Count:1b}]} run execute at @s run data modify block ~ ~ ~ Items append value {Slot:6b}
execute at @s if data block ~ ~ ~ {Items: [{Slot: 7b,id:"minecraft:debug_stick",Count:1b}]} run execute at @s run data modify block ~ ~ ~ Items append value {Slot:7b}
execute at @s if data block ~ ~ ~ {Items: [{Slot: 8b,id:"minecraft:debug_stick",Count:1b}]} run execute at @s run data modify block ~ ~ ~ Items append value {Slot:8b}