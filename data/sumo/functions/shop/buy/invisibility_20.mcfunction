#######
# Compiled from functions/shop/buy/invisibility_20.mcscript
# to .//data/sumo/functions/shop/buy/invisibility_20.mcfunction
#
# Generated by Minecraft Script for 1.16
######
function sumo:shop/calculate_currency
execute if score @s w-currency-sugar matches 16.. run give @s splash_potion{CustomPotionColor:12369084,display:{Name:'[{"text":"Görünmezlik İksiri","italic":false,"bold":true,"color":"red"}]'},CustomPotionEffects:[{Id:14,Duration:400}]} 1
execute if score @s w-currency-sugar matches 16.. run clear @s sugar{w-shop:1b} 16
