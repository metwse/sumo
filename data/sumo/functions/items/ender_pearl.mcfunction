#######
# Compiled from sumo/functions/items/ender_pearl.mcscript
# to .//data/sumo/functions/items/ender_pearl.mcfunction
#
# Generated by Minecraft Script for 1.16
######
schedule function sumo:items/ender_pearl 15s replace
execute at @e[tag=w-worldCenter] as @a run summon minecraft:item ~ ~ ~ {Tags:["w-age","w-spread"],Item:{id:"minecraft:ender_pearl",Count:1b,tag:{display:{Name:'[{"text":"Göz","italic":false,"color":"red","bold":true}]'},w-shop:1b}}}