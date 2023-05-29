data modify storage illager-trades-temp Offers.Recipes prepend from storage illager-trades-temp Offers.Recipes[30]
data remove storage illager-trades-temp Offers.Recipes[31]
scoreboard players remove @s random-value 1
function origins:illager/trades/check 