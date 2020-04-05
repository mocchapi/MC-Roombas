#normal roomba ai
execute at @e[name=Roomba,type=minecraft:hopper_minecart,nbt=!{Items:[{Slot:0b,id:"minecraft:diamond_sword"}]}] run execute if block ^ ^ ^.5 air run teleport @e[sort=nearest,limit=1] ^ ^ ^.045 facing entity @e[limit=1,sort=nearest,distance=0..18,type=item]

#murder roomba ai
execute at @e[name="Roomba",nbt={OnGround:1b},type=minecraft:hopper_minecart,nbt={Items:[{Slot:0b,id:"minecraft:diamond_sword"}]}] run execute if block ^ ^ ^.5 air run teleport @e[sort=nearest,limit=1] ^ ^ ^.06 facing entity @e[limit=1,sort=nearest,distance=0..18,type=!player,type=!armor_stand,type=!item_frame,type=!hopper_minecart,type=!villager,type=!iron_golem,type=!bat,type=!snow_golem]
execute at @e[name="Roomba",nbt={OnGround:1b},type=minecraft:hopper_minecart,nbt={Items:[{Slot:0b,id:"minecraft:diamond_sword"}]}] run execute positioned ^ ^ ^.7 run kill @e[limit=1,sort=nearest,distance=0..0.5,type=!player,type=!armor_stand,type=!item_frame,type=!hopper_minecart,type=!item,type=!villager,type=!iron_golem,type=!bat,type=!snow_golem]

#common executes
execute at @e[name=Roomba,type=minecraft:hopper_minecart] run execute unless block ^ ^ ^.5 air run teleport @e[sort=nearest,limit=1] ^ ^ ^-1
execute at @e[name=Roomba,type=minecraft:hopper_minecart] run execute if block ^ ^ ^.5 air run particle minecraft:end_rod ~ ~ ~ 0.1 0.01 0.2 0.01 1
execute at @e[name=Roomba,type=minecraft:hopper_minecart] run execute unless block ^ ^ ^.5 air run particle minecraft:cloud ~ ~ ~ 0.01 0.01 0.01 0.1 10
