tag @a remove team.sky.join
tag @a remove team.sky.leave
tag @a remove team.spark.join
tag @a remove team.spark.leave
tag @a remove team.betray_sky.join
tag @a remove team.betray_spark.join
tag @a remove team.betray_sky.leave
tag @a remove team.betray_spark.leave
tag @a remove spectator.exit_lava
tag @a remove spectator.exit_slime
tag @a remove spectator.exit_general
tag @a remove spectator.in_game
tag @a remove spectator.check
tag @a remove spectator.join
tag @a remove core.security.fix_windcharge
tag @a remove core.security.fix_mace
tag @a remove core.can_see_countdown
tag @a remove core.exit_endgame
tag @a remove lobby.particles.50
tag @a remove lobby.particles.5175
tag @a remove lobby.particles.75
tag @a remove lobby.particles.7695
tag @a remove lobbyminigame.fix_windcharges
tag @a remove player.lobbyminigame_join
tag @a remove lobby.falling
tag @a[team=team.spectator] add spectator.check

team join team.lobby @a

tp @a @e[type=marker,tag=marker.lobby_spawn,limit=1]

clear @a

tp @e[type=iron_golem] 170 100 1040
kill @e[type=iron_golem]

schedule clear mace-blasters:multiplayer/core/golem_modifier/wind_golem

gamemode adventure @a

## scoreboard players reset * mostrado
scoreboard players set in_game mace_blasters 0
scoreboard players reset * golems_hit
scoreboard players reset * hit_count
scoreboard objectives setdisplay sidebar