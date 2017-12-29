local L = AceLibrary("AceLocale-2.2"):new("CooldownCount")

L:RegisterTranslations("frFR", function() return {
	["Font Settings"] = "Options de la police",

	["Font Style"] = "Style de la police",
	["Set cooldown value display font."] = "Définir la police d'affichage des cooldown.",
	["Font Color"] = "Couleur de la police",
	["Common color"] = "Couleur commune",
	["Setup the common color for value display."] = "Définir la couleur commune d'affichage des cooldowns.",
	["Warning color"] = "Couleur d'alerte",
	["Setup the warning color for value display."] = "Définir la couleur d'alerte d'affichage des cooldowns.",
	["Font Size"] = "Taille de la police",
	["Small Size"] = "Petite taille",
	["Small font size for cooldown is longer than 10 minutes."] = "Petite taille de la police pour les cooldown supérieurs à 10 minutes.",
	["Medium Size"] = "Taille moyenne",
	["Medium font size for cooldown is longer than 1 minute and less than 10 minutes."] = "Taille moyenne de la police pour les cooldown supérieur à 1 minute et inférieurs à 10 minutes.",
	["Large Size"] = "Grande taille",
	["Large font size for cooldown is longer than 10 seconds and less than 1 minutes."] = "Grande taille de la police pour les cooldown supérieures à 10 secondes et inférieurs à 1 minute.",
	["Warning Size"] = "Taille d'alerte",
	["Warning font size for cooldown is less than 10 seconds."] = "Taille d'alerte pour les cooldown inférieurs à 10 secondes.",

	["Misc"] = "Divers",

	["Shine at finish cooldown"] = "Surbrillance à la fin du cooldown",
	["Toggle icon shine display at finish cooldown."] = "Basculer la surbrillance de l'icône après la fin du cooldown.",
	["Shine Scale"] = "Echelle de la surbrillance",
	["Adjust icon shine scale."] = "Ajuste l'échelle de la surbrillance de l'icône.",
	["Blizzard Origin Animation"] = "Animation d'origine de Blizzard",
	["Hide Blizzard Origin Animation"] = "Masquer l'animation d'origine de Blizzard.",
	["Hide Blizzard origin cooldown animation."] = "Masquer l'animation d'origine du cooldown de Blizzard.",
	["Minimum Duration"] = "Durée minimum",
	["Minimum duration for display cooldown count."] = "Durée minimum pour afficher le compteur.",
	["Reset Settings"] = "Réinitialiser les options",
	["Reset"] = "Réinitialiser",
	["Reset all settings."] = "Réinitialiser tous les réglages.",
	["ResetDB_Confirm"] = "Etes-vous sûr de vouloir réinitialiser les données ?",
	["All settings are reset to default value."] = "Toutes les options ont été réinitialisées par défaut.",

	["d"] = "j",
	--["h"] = "h",
	--["m"] = "m",
	--["WhatIsCooldownCount"] = true
} end)