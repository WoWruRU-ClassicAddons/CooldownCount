local L = AceLibrary("AceLocale-2.2"):new("CooldownCount")

L:RegisterTranslations("deDE", function() return {
	["Font Settings"] = "Schrift Einstellungen",
	
	["Font Style"] = "Schriftart",
	["Set cooldown value display font."] = "Wähle die Schriftart in der die Abklingzeit angezeigt werden soll.",
	["Font Color"] = "Schriftfarbe",
	["Common color"] = "Allgemeine Farbe",
	["Setup the common color for value display."] = "Justiere die allgemeine Farbe der Schriftart.",
	["Warning color"] = "Warnungsfarbe",
	["Setup the warning color for value display."] = "Justiere die Warnungsfarbe der Schriftart.",
	["Font Size"] = "Schriftgröße",
	["Small Size"] = "Kleine Schriftgröße",
	["Small font size for cooldown is longer than 10 minutes."] = "Anzeigen der Abklingzeit in einer kleinen Schriftgröße wenn die Abklingzeit länger als 10 Minuten ist.",
	["Medium Size"] = "Normale Schriftgröße",
	["Medium font size for cooldown is longer than 1 minute and less than 10 minutes."] = "Anzeigen der Abklingzeit in normaler Schriftgröße wenn die Abklingzeit länger als 1 Minuten ist.",
	["Large Size"] = "Große Schriftgröße",
	["Large font size for cooldown is longer than 10 seconds and less than 1 minutes."] = "Anzeigen der Abklingzeit in großer Schriftgröße wenn die Abklingzeit länger als 10 Sekunden und weniger als 1 Minute ist.",
	["Warning Size"] = "Warnung Schriftgröße",
	["Warning font size for cooldown is less than 10 seconds."] = "Warnung Schriftgröße (groß/blinkend) wenn die Abklingzeit weniger als 10 Sekunden ist.",
	
	["Misc"] = "Verschiedenes",
	
	["Shine at finish cooldown"] = "Aufleuchten wenn die Abklingzeit abgelaufen ist",
	["Toggle icon shine display at finish cooldown."] = "Aktiviert ein Aufleuchten des Symbols wenn die Abklingzeit abgelaufen ist.",
	["Shine Scale"] = "Aufleuchten Größe",
	["Adjust icon shine scale."] = "Justiere die Größe des aufzuleuchtenden Symbols.",
	["Blizzard Origin Animation"] = "Orginale Blizzard Animation",
	["Hide Blizzard Origin Animation"] = "Verstecke die orginale Blizzard Animation",
	["Hide Blizzard origin cooldown animation."] = "Verstecke die orginale Blizzard Abklingzeit Animation.",
	["Minimum Duration"] = "Minimum Dauer",
	["Minimum duration for display cooldown count."] = "Minimum Dauer einer Abklingzeit damit diese anzeigt wird.",
	["Reset Settings"] = "Einstellungen zurücksetzen",
	["Reset"] = "Zurücksetzen",
	["Reset all settings."] = "Alle Einstellungen zurücksetzen.",
	["ResetDB_Confirm"] = "Einstellungen wirklich zurücksetzen?",
	["All settings are reset to default value."] = "Alle Einstellungen wurden auf den Standardwert zurückgesetzt.",
	
	["d"] = "T",
	["h"] = "S",
	["m"] = "M",
	--["WhatIsCooldownCount"] = "Anzeige der Abklingzeit auf den Symbolen von Gegenständen und Fähigkeiten.",
} end)