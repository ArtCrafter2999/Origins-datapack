data remove storage illager-trades-temp Offers.Recipes
data modify storage illager-trades-temp Offers.Recipes set from storage illager-trades Offers.Recipes

#tellraw @a {"score":{"name":"@s ","objective":"random-value"}}

function origins:illager/trades/check
