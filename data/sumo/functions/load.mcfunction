#######
# Compiled from data/sumo/functions/load.mcscript
# to .//data/sumo/functions/load.mcfunction
#
# Generated by Minecraft Script for 1.16
######
function sumo:mcscript/load



scoreboard objectives add w-stick dummy
scoreboard objectives add w-world dummy
scoreboard objectives add w-firework-owner-0 dummy
scoreboard objectives add w-firework-owner-1 dummy
scoreboard objectives add w-firework-owner-2 dummy
scoreboard objectives add w-firework-owner-3 dummy
scoreboard objectives add w-firework-uuid-0 dummy
scoreboard objectives add w-firework-uuid-1 dummy
scoreboard objectives add w-firework-uuid-2 dummy
scoreboard objectives add w-firework-uuid-3 dummy
scoreboard objectives add w-firework-success dummy
scoreboard objectives add w-firework dummy
scoreboard objectives add w-firework-flight dummy
scoreboard objectives add w-firework-id dummy
scoreboard objectives add w-firework-id-test dummy
scoreboard objectives add w-firework-order dummy
scoreboard players set w-firework-id w-firework-id 0
function sumo:items/items
function sumo:shop/shop
execute unless data storage w:world setup run data modify storage w:world center set value [0d, 0d]
execute unless data storage w:world setup run data modify storage w:world borderRadius set value 100
execute unless data storage w:world setup run gamerule spawnRadius 60
execute unless data storage w:world setup run gamerule showDeathMessages false
execute unless data storage w:world setup run gamerule commandBlockOutput false
execute unless data storage w:world setup run gamerule doImmediateRespawn true
execute unless data storage w:world setup run gamerule mobGriefing false
execute unless data storage w:world setup run gamerule fallDamage false
execute unless data storage w:world setup run data modify storage w:world setup set value 1b

kill @e[tag=w-worldCenter]
execute at @r run summon minecraft:snowball ~ -65 ~ {NoGravity:1b,Tags:["w-worldCenter"]}
execute as @e[tag=w-worldCenter] store result entity @s Pos[0] double 1 run data get storage w:world center[0]
execute as @e[tag=w-worldCenter] store result entity @s Pos[2] double 1 run data get storage w:world center[1]