#######
# Compiled from sumo/functions/firework/firework.mcscript
# to .//data/sumo/functions/firework/rideable_firework.mcfunction
#
# Generated by Minecraft Script for 1.16
######













tag @e[type=minecraft:firework_rocket,nbt={FireworksItem:{tag:{w-rideable:1b}}},tag=!w-mounted,limit=1] add w-firework
execute as @e[limit=1,tag=w-firework] store result score @a w-firework-owner-0 run data get entity @s Owner[0]
execute as @e[limit=1,tag=w-firework] store result score @a w-firework-owner-1 run data get entity @s Owner[1]
execute as @e[limit=1,tag=w-firework] store result score @a w-firework-owner-2 run data get entity @s Owner[2]
execute as @e[limit=1,tag=w-firework] store result score @a w-firework-owner-3 run data get entity @s Owner[3]
execute as @e[limit=1,tag=w-firework] run data modify entity @s ShotAtAngle set value 1b
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
execute as @e[limit=1,tag=w-firework] as @a if score @s w-firework-success matches 4 run scoreboard players operation @e[limit=1,tag=w-firework] w-firework-id = w-firework-id w-firework-id
execute as @e[limit=1,tag=w-firework] as @a if score @s w-firework-success matches 4 run scoreboard players operation @s w-firework-id = w-firework-id w-firework-id
execute as @e[limit=1,tag=w-firework] as @a if score @s w-firework-success matches 4 run scoreboard players add w-firework-id w-firework-id 1
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
scoreboard players set w-firework-order w-firework-order 0
execute as @e[type=minecraft:firework_rocket,tag=w-mounted] run tellraw @a [{"text":"You have "},{"score":{"name":"@s","objective":"w-firework-order"}},{"text":"lives left."}]
execute as @e[type=minecraft:firework_rocket,tag=w-mounted,limit=1] at @s run scoreboard players operation @a w-firework-id-test = @s w-firework-id
execute as @e[type=minecraft:firework_rocket,tag=w-mounted,limit=1] at @s run tag @s add w-firework
execute as @e[type=minecraft:firework_rocket,tag=w-mounted,limit=1] at @s as @a at @s if score @s w-firework-id = @s w-firework-id-test run tag @s add w-firework-owner
execute as @e[type=minecraft:firework_rocket,tag=w-mounted,limit=1] at @s as @a at @s if score @s w-firework-id = @s w-firework-id-test as @e[tag=w-firework] at @s store result entity @s Rotation[0] int 1 run data get entity @a[tag=w-firework-owner,limit=1] Rotation[0] 1
execute as @e[type=minecraft:firework_rocket,tag=w-mounted,limit=1] at @s as @a at @s if score @s w-firework-id = @s w-firework-id-test as @e[tag=w-firework] at @s store result entity @s Rotation[1] int 1 run data get entity @a[tag=w-firework-owner,limit=1] Rotation[1] 1
execute as @e[type=minecraft:firework_rocket,tag=w-mounted,limit=1] at @s as @a at @s if score @s w-firework-id = @s w-firework-id-test run summon minecraft:snowball ^ ^ ^2 {Tags:["w-firework-entity"]}
execute as @e[type=minecraft:firework_rocket,tag=w-mounted,limit=1] at @s as @a at @s if score @s w-firework-id = @s w-firework-id-test store result score x1 w-firework run data get entity @s Pos[0] 1000
execute as @e[type=minecraft:firework_rocket,tag=w-mounted,limit=1] at @s as @a at @s if score @s w-firework-id = @s w-firework-id-test store result score y1 w-firework run data get entity @s Pos[1] 1000
execute as @e[type=minecraft:firework_rocket,tag=w-mounted,limit=1] at @s as @a at @s if score @s w-firework-id = @s w-firework-id-test store result score z1 w-firework run data get entity @s Pos[2] 1000
execute as @e[type=minecraft:firework_rocket,tag=w-mounted,limit=1] at @s as @a at @s if score @s w-firework-id = @s w-firework-id-test as @e[tag=w-firework-entity] store result score x2 w-firework run data get entity @s Pos[0] 1000
execute as @e[type=minecraft:firework_rocket,tag=w-mounted,limit=1] at @s as @a at @s if score @s w-firework-id = @s w-firework-id-test as @e[tag=w-firework-entity] store result score y2 w-firework run data get entity @s Pos[1] 1000
execute as @e[type=minecraft:firework_rocket,tag=w-mounted,limit=1] at @s as @a at @s if score @s w-firework-id = @s w-firework-id-test as @e[tag=w-firework-entity] store result score z2 w-firework run data get entity @s Pos[2] 1000
execute as @e[type=minecraft:firework_rocket,tag=w-mounted,limit=1] at @s as @a at @s if score @s w-firework-id = @s w-firework-id-test as @e[tag=w-firework-entity] run kill @s
execute as @e[type=minecraft:firework_rocket,tag=w-mounted,limit=1] at @s as @a at @s if score @s w-firework-id = @s w-firework-id-test run scoreboard players operation x2 w-firework -= x1 w-firework
execute as @e[type=minecraft:firework_rocket,tag=w-mounted,limit=1] at @s as @a at @s if score @s w-firework-id = @s w-firework-id-test run scoreboard players operation y2 w-firework -= y1 w-firework
execute as @e[type=minecraft:firework_rocket,tag=w-mounted,limit=1] at @s as @a at @s if score @s w-firework-id = @s w-firework-id-test run scoreboard players operation z2 w-firework -= z1 w-firework
execute as @e[type=minecraft:firework_rocket,tag=w-mounted,limit=1] at @s as @a at @s if score @s w-firework-id = @s w-firework-id-test store result entity @e[tag=w-firework,limit=1] Motion[0] double 0.0005 run scoreboard players get x2 w-firework 
execute as @e[type=minecraft:firework_rocket,tag=w-mounted,limit=1] at @s as @a at @s if score @s w-firework-id = @s w-firework-id-test store result entity @e[tag=w-firework,limit=1] Motion[1] double 0.0005 run scoreboard players get y2 w-firework 
execute as @e[type=minecraft:firework_rocket,tag=w-mounted,limit=1] at @s as @a at @s if score @s w-firework-id = @s w-firework-id-test store result entity @e[tag=w-firework,limit=1] Motion[2] double 0.0005 run scoreboard players get z2 w-firework 
execute as @e[type=minecraft:firework_rocket,tag=w-mounted,limit=1] at @s as @a at @s if score @s w-firework-id = @s w-firework-id-test run tag @s remove w-firework-owner
execute as @e[type=minecraft:firework_rocket,tag=w-mounted,limit=1] at @s run tag @s remove w-firework