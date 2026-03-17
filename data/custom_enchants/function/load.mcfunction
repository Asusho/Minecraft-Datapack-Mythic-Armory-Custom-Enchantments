##add scoreboards
scoreboard objectives add custom_enchants.dialog_trigger.wiki trigger {"bold":false,"color":"dark_purple","italic":false,"text":"Custom Enchants: Wiki"}



# POUR LA MASSE

scoreboard objectives add cooldown_masse dummy

# POUR L'ARC

scoreboard objectives add bow_charges dummy "Victimes à l'arc"
scoreboard objectives add kills_bow totalKillCount

scoreboard objectives add use_bow minecraft.used:minecraft.bow



# POUR L'EPEE

team add wither_army "Armée du Wither"
team modify wither_army friendlyFire false
team modify wither_army collisionRule never

scoreboard objectives add combo_charges dummy "Charges Combo"
scoreboard objectives add soul_charges dummy "Charges d'Âmes"
scoreboard objectives add sword_kills_total totalKillCount
scoreboard objectives add soul_charges_ready dummy


# POUR LE TRIDENT

scoreboard objectives add kills_total totalKillCount
scoreboard objectives add storm_timer dummy
scoreboard objectives add storm_charge dummy "Surcharge Mêlée"
scoreboard objectives add storm_charges dummy "Charges Orage"


scoreboard objectives add storm_charge_ready dummy
scoreboard objectives add storm_ready dummy



# POUR LA LANCE

scoreboard objectives add spear_charge dummy "Charges Lance"
scoreboard objectives add hit_count_spear dummy
scoreboard objectives add spear_kill_count totalKillCount
scoreboard objectives add sneak_check custom:sneak_time
scoreboard objectives add combo_ready dummy
scoreboard objectives add storm_arrow_ready dummy