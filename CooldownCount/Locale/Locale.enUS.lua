local L = AceLibrary("AceLocale-2.2"):new("CooldownCount")

L:RegisterTranslations("enUS", function() return {
	["Font Settings"] = true,
	
	["Font Style"] = true,
	["Set cooldown value display font."] = true,
	["Font Color"] = true,
	["Common color"] = true,
	["Setup the common color for value display."] = true,
	["Warning color"] = true,
	["Setup the warning color for value display."] = true,
	["Font Size"] = true,
	["Small Size"] = true,
	["Small font size for cooldown is longer than 10 minutes."] = true,
	["Medium Size"] = true,
	["Medium font size for cooldown is longer than 1 minute and less than 10 minutes."] = true,
	["Large Size"] = true,
	["Large font size for cooldown is longer than 10 seconds and less than 1 minutes."] = true,
	["Warning Size"] = true,
	["Warning font size for cooldown is less than 10 seconds."] = true,
	
	["Misc"] = true,
	
	["Shine at finish cooldown"] = true,
	["Toggle icon shine display at finish cooldown."] = true,
	["Shine Scale"] = true,
	["Adjust icon shine scale."] = true,
	["Blizzard Origin Animation"] = true,
	["Hide Blizzard Origin Animation"] = true,
	["Hide Blizzard origin cooldown animation."] = true,
	["Minimum Duration"] = true,
	["Minimum duration for display cooldown count."] = true,
	["Reset Settings"] = true,
	["Reset"] = true,
	["Reset all settings."] = true,
	["ResetDB_Confirm"] = "Are you sure you want to reset the settings?",
	["All settings are reset to default value."] = true,
	
	["d"] = true,
	["h"] = true,
	["m"] = true,
	--["WhatIsCooldownCount"] = true,
} end)