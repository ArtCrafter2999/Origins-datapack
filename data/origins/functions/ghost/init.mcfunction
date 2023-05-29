scoreboard objectives add ghost-astral-time dummy
scoreboard objectives add ghost-astral-cooldown dummy
scoreboard objectives add ghost-hunger food
scoreboard objectives add ghost-shift-shift dummy
scoreboard objectives add ghost-shift-shift-timer dummy
scoreboard objectives add ghost-shift-shift-cooldown dummy
scoreboard objectives add ghost-form-timer dummy
scoreboard objectives add ghost-form-items dummy
scoreboard objectives add ghost-fire-items dummy

bossbar add ghost-astral-cooldown {"text": "Recharging astral"}
bossbar set ghost-astral-cooldown max 3600
bossbar set ghost-astral-cooldown color purple
bossbar set ghost-astral-cooldown style notched_12

team add ghosts
team modify ghosts nametagVisibility hideForOtherTeams