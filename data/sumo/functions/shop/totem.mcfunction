#######
# Compiled from sumo/functions/shop/totem.mcscript
# to .//data/sumo/functions/shop/totem.mcfunction
#
# Generated by Minecraft Script for 1.16
######
function sumo:shop/calculate_currency
execute if score @s w-currency-pearl matches 5.. store result score @s w-totem-count run clear @s minecraft:dirt{w-totem:1b} 0
execute if score @s w-currency-pearl matches 5.. if score @s w-totem-count matches ..3 run give @s dirt{display:{Name:'[{"text":"Totem","italic":false,"color":"red","bold":true}]'},CustomModelData:1,w-totem:1b} 1
execute if score @s w-currency-pearl matches 5.. if score @s w-totem-count matches ..3 run clear @s ender_pearl{w-shop:1b} 5
