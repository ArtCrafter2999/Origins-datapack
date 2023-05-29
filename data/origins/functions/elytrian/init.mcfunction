scoreboard objectives add elytrian-claustrophobia-points dummy
scoreboard objectives add elytrian-jump-cooldown dummy
scoreboard objectives add elytrian-elytra-level dummy

scoreboard players set #slowness elytrian-claustrophobia-points 16
scoreboard players set #blindness elytrian-claustrophobia-points 22
scoreboard players set #weakness elytrian-claustrophobia-points 26
scoreboard players set #nausea elytrian-claustrophobia-points 30
scoreboard players set #mining_fatigue elytrian-claustrophobia-points 35
scoreboard players set #poison elytrian-claustrophobia-points 42

bossbar add elytrian-jump-cooldown {"text": "Jump reloading"}
bossbar set elytrian-jump-cooldown color white
bossbar set elytrian-jump-cooldown max 400
bossbar set elytrian-jump-cooldown style notched_10