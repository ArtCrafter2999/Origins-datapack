team add illagers
team modify illagers collisionRule pushOtherTeams

scoreboard objectives add illager-exile-timer dummy
scoreboard players set #exile-time illager-exile-timer 24000
scoreboard objectives add illager-raid-cooldown dummy
scoreboard players set #raid-cooldown illager-raid-cooldown 24000


scoreboard objectives add illager-trade-index dummy

bossbar add illagers-exile {"text": "You are exile"} 
bossbar set illagers-exile color blue
bossbar set illagers-exile visible false
execute store result bossbar illagers-exile max run scoreboard players get #exile-time illager-exile-timer

function origins:illager/trades/init-trades

#evoker's power

scoreboard objectives add illager-usetotem minecraft.dropped:minecraft.totem_of_undying
scoreboard objectives add illager-rotation dummy
scoreboard objectives add illager-fangprocess dummy
scoreboard players set @a illager-fangprocess 0

scoreboard objectives add illager-area dummy
scoreboard objectives add illager-beam dummy
scoreboard objectives add illager-fang dummy
scoreboard objectives add illager-villager-timer dummy