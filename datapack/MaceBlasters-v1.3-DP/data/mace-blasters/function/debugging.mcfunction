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

team join team.lobby @a

## TODO: CAMBIAR COORDS
tp @a 0 200 0

clear @a

tp @e[tag=arena_modifier.iron_boost.spawn] 0 0 0
kill @e[tag=arena_modifier.iron_boost.spawn] 0 0 0

schedule clear mace-blasters:multiplayer/core/golem_modifier/wind_golem