#######
# Compiled from data/sumo/functions/rideable_firework.mcscript
# to .//data/sumo/functions/rideable_firework.mcfunction
#
# Generated by Minecraft Script for 1.16
######










tag @e[type=minecraft:firework_rocket,nbt={FireworksItem:{tag:{w-rideable:1b}}},tag=!w-mounted,limit=1] add w-firework
execute as @e[limit=1,tag=w-firework] store result score @a w-firework-owner-0 run data get entity @s Owner[0]
execute as @e[limit=1,tag=w-firework] store result score @a w-firework-owner-1 run data get entity @s Owner[1]
execute as @e[limit=1,tag=w-firework] store result score @a w-firework-owner-2 run data get entity @s Owner[2]
execute as @e[limit=1,tag=w-firework] store result score @a w-firework-owner-3 run data get entity @s Owner[3]
execute as @e[limit=1,tag=w-firework] as @a store result score @s w-firework-uuid-0 run data get entity @s UUID[0]
execute as @e[limit=1,tag=w-firework] as @a store result score @s w-firework-uuid-1 run data get entity @s UUID[1]
execute as @e[limit=1,tag=w-firework] as @a store result score @s w-firework-uuid-2 run data get entity @s UUID[2]
execute as @e[limit=1,tag=w-firework] as @a store result score @s w-firework-uuid-3 run data get entity @s UUID[3]
execute as @e[limit=1,tag=w-firework] as @a run scoreboard players set @s w-firework-success 0
execute as @e[limit=1,tag=w-firework] as @a if score @s w-firework-owner-0 = @s w-firework-uuid-0 run scoreboard players add @s w-firework-success 1
execute as @e[limit=1,tag=w-firework] as @a if score @s w-firework-owner-1 = @s w-firework-uuid-1 run scoreboard players add @s w-firework-success 1
execute as @e[limit=1,tag=w-firework] as @a if score @s w-firework-owner-2 = @s w-firework-uuid-2 run scoreboard players add @s w-firework-success 1
execute as @e[limit=1,tag=w-firework] as @a if score @s w-firework-owner-3 = @s w-firework-uuid-3 run scoreboard players add @s w-firework-success 1
execute as @e[limit=1,tag=w-firework] as @a if score @s w-firework-success matches 4 run ride @s mount @e[limit=1,tag=w-firework]
execute as @e[limit=1,tag=w-firework] as @a if score @s w-firework-success matches 4 store result score a w-firework run data get entity @e[limit=1,tag=w-firework] FireworksItem.tag.Fireworks.Flight
execute as @e[limit=1,tag=w-firework] as @a if score @s w-firework-success matches 4 if entity @e[limit=1,tag=w-firework,nbt={FireworksItem:{tag:{w-effect:1b}}}] if score w-firework w-firework matches 1 if entity @s[tag=!mcscriptSwitch] run effect give @s minecraft:slow_falling 2 2
execute as @e[limit=1,tag=w-firework] as @a if score @s w-firework-success matches 4 if entity @e[limit=1,tag=w-firework,nbt={FireworksItem:{tag:{w-effect:1b}}}] if score w-firework w-firework matches 1 if entity @s[tag=!mcscriptSwitch] run tag @s add mcscriptSwitch
execute as @e[limit=1,tag=w-firework] as @a if score @s w-firework-success matches 4 if entity @e[limit=1,tag=w-firework,nbt={FireworksItem:{tag:{w-effect:1b}}}] if score w-firework w-firework matches 2 if entity @s[tag=!mcscriptSwitch] run effect give @s minecraft:slow_falling 3 2
execute as @e[limit=1,tag=w-firework] as @a if score @s w-firework-success matches 4 if entity @e[limit=1,tag=w-firework,nbt={FireworksItem:{tag:{w-effect:1b}}}] if score w-firework w-firework matches 2 if entity @s[tag=!mcscriptSwitch] run tag @s add mcscriptSwitch
execute as @e[limit=1,tag=w-firework] as @a if score @s w-firework-success matches 4 if entity @e[limit=1,tag=w-firework,nbt={FireworksItem:{tag:{w-effect:1b}}}] if score w-firework w-firework matches 3 if entity @s[tag=!mcscriptSwitch] run effect give @s minecraft:slow_falling 4 2
execute as @e[limit=1,tag=w-firework] as @a if score @s w-firework-success matches 4 if entity @e[limit=1,tag=w-firework,nbt={FireworksItem:{tag:{w-effect:1b}}}] if score w-firework w-firework matches 3 if entity @s[tag=!mcscriptSwitch] run tag @s add mcscriptSwitch
execute as @e[limit=1,tag=w-firework] as @a if score @s w-firework-success matches 4 if entity @e[limit=1,tag=w-firework,nbt={FireworksItem:{tag:{w-effect:1b}}}] if entity @s[tag=!mcscriptSwitch] run effect give @s minecraft:slow_falling 2 2
execute as @e[limit=1,tag=w-firework] as @a if score @s w-firework-success matches 4 if entity @e[limit=1,tag=w-firework,nbt={FireworksItem:{tag:{w-effect:1b}}}] run tag @s remove mcscriptSwitch
execute as @e[limit=1,tag=w-firework] run tag @s add w-mounted
execute as @e[limit=1,tag=w-firework] run tag @s remove w-firework