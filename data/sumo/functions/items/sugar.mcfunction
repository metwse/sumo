#######
# Compiled from sumo/functions/items/sugar.mcscript
# to .//data/sumo/functions/items/sugar.mcfunction
#
# Generated by Minecraft Script for 1.16
######
schedule function sumo:items/sugar 3s replace
execute at @e[tag=w-worldCenter] as @a run summon minecraft:item ~ ~ ~ {Tags:["w-age","w-spread"],Item:{id:"minecraft:sugar",Count:1b,tag:{display:{Name:'[{"text":"Şeker","italic":false,"color":"red","bold":true}]'},w-shop:1b}}}