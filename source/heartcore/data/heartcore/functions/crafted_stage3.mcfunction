recipe take @s heartcore:stage3

advancement revoke @s only heartcore:stage3_adv

execute if entity @s[nbt={Inventory:[{id:"minecraft:knowledge_book",tag:{CustomModelData:7740003}}]}] run give @s minecraft:golden_apple 1
execute if entity @s[nbt={Inventory:[{id:"minecraft:knowledge_book",tag:{CustomModelData:7740003}}]}] run give @s minecraft:redstone 8

give @s knowledge_book{CustomModelData:7740003,display:{Name:'[{"text":"Heartcore","italic":false}]',Lore:['[{"text":"The energies of the cosmos itself surround","italic":false}]','[{"text":"this apple, granting those who consume","italic":false}]','[{"text":"it power to restore even the greatest of","italic":false}]','[{"text":"injuries","italic":false}]']},Unbreakable:1,HideFlags:4} 1

clear @s minecraft:debug_stick