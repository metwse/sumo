#######
# Compiled from sumo/functions/items/ender_pearl.mcscript
# to ./sumo/data/sumo/functions/items/ender_pearl.mcfunction
#
# Generated by Minecraft Script for 1.16
######
schedule function sumo:items/ender_pearl 12s
execute at @e[tag=w-worldCenter] as @a run summon minecraft:item ~ ~1 ~ {Tags:["w-age","w-spread"],Item:{id:"minecraft:ender_pearl",Count:1b,tag:{display:{Name:'[{"text":"Ender İncisi","italic":false,"color":"red","bold":true}]'},w-shop:1b}}}