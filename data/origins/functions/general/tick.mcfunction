execute as @a[tag=!origins-new] run scoreboard players set @s general-advancement-delay 0
execute as @a[tag=!origins-new, scores={general-advancement-delay=0}] run tag @s add origins-new
execute as @a[scores={general-advancement-delay=0..40}] run scoreboard players add @s general-advancement-delay 1
execute as @a[scores={general-advancement-delay=40..}] run advancement grant @s only origins:general/root

scoreboard players set @a crouch 0
scoreboard players set @a jump 0