team add team.lobby
team add team.spark
team add team.sky
team add team.lobbyminigame
team add team.spectator

execute unless score team_size mace_blasters matches -99.. run scoreboard players set team_size mace_blasters 0
execute unless score in_game mace_blasters matches -2147483648..2147483647 run scoreboard players set in_game mace_blasters 0

scoreboard objectives add lobby.sound_random dummy
scoreboard objectives add lobby.meteorite_teleport dummy
scoreboard objectives add lobby.screen_owner dummy
scoreboard objectives add item.offhand.windcharge minecraft.used:minecraft.wind_charge
scoreboard objectives add display.health health
scoreboard objectives add mace_blasters dummy
scoreboard objectives add players dummy
scoreboard objectives add wind_charge.used minecraft.used:minecraft.wind_charge
scoreboard objectives add minigame.death_count deathCount
scoreboard objectives add hit_count minecraft.used:minecraft.mace [{"translate":"hit_count","with":[{"translate":"hit_count.1","color":"#56FF4A","bold":true},{"translate":"hit_count.2","color":"#5FFF55", "bold": true},{"translate":"hit_count.3","color":"#69FF60", "bold": true},{"translate":"hit_count.4", "color": "#72FF6B", "bold": true},{"translate":"hit_count.5","color":"#7BFF76", "bold": true},{"translate":"hit_count.6", "color": "#85FF81", "bold": true},{"translate":"hit_count.7","color":"#8EFF8C", "bold": true},{"translate":"hit_count.8","color": "#98FF97", "bold": true},{"translate":"hit_count.9","color":"#A1FFA2", "bold": true},{"translate":"hit_count.10","color":"#AAFFAD", "bold": true},{"translate":"hit_count.11","color":"#BDFFC3", "bold": true},{"translate":"hit_count.12","color":"#56FF4A","bold":true},{"translate":"hit_count.13","color":"#5FFF55", "bold": true},{"translate":"hit_count.14","color":"#69FF60", "bold": true},{"translate":"hit_count.15", "color": "#72FF6B", "bold": true},{"translate":"hit_count.16","color":"#7BFF76", "bold": true},{"translate":"hit_count.17", "color": "#85FF81", "bold": true},{"translate":"hit_count.18","color":"#8EFF8C", "bold": true},{"translate":"hit_count.19","color": "#98FF97", "bold": true},{"translate":"hit_count.20","color":"#A1FFA2", "bold": true},{"translate":"hit_count.21","color":"#AAFFAD", "bold": true},{"translate":"hit_count.22","color":"#BDFFC3", "bold": true},{"translate":"hit_count.23","color":"#BDFFC3", "bold": true}]}]
scoreboard objectives add spectator.exit_lava trigger
scoreboard objectives add spectator.exit_slime trigger
scoreboard objectives add spectator.exit_general trigger
scoreboard objectives add trigger.force.start_minigame trigger
scoreboard objectives add golems_hit dummy
scoreboard objectives add trigger.exit_lava_spectatormode dummy
scoreboard objectives add trigger.exit_slime_spectatormode dummy
scoreboard objectives add trigger.exit_minigame dummy
scoreboard objectives add trigger.force.end_minigame dummy
scoreboard objectives add trigger.exit_spectatormode dummy
scoreboard objectives add golem_count dummy
scoreboard objectives add arena.total_players dummy
scoreboard objectives add arena.sky_count dummy
scoreboard objectives add arena.spark_count dummy
scoreboard objectives add core.security.softlock_check dummy

scoreboard players enable @a trigger.exit_spectatormode
scoreboard players enable @a trigger.force.start_minigame
scoreboard players enable @a trigger.force.end_minigame
scoreboard players enable @a spectator.exit_lava
scoreboard players enable @a spectator.exit_slime
scoreboard players enable @a spectator.exit_general

scoreboard objectives setdisplay list display.health