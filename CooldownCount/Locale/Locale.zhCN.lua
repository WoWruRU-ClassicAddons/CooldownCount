local L = AceLibrary("AceLocale-2.2"):new("CooldownCount")

L:RegisterTranslations("zhCN", function() return {
	["Font Settings"] = "字体设置",
	
	["Font Style"] = "字体",
	["Set cooldown value display font."] = "设置冷却数字字体.",
	["Font Color"] = "字体颜色",
	["Common color"] = "普通颜色",
	["Setup the common color for value display."] = "设置冷却显示字体的普通颜色.",
	["Warning color"] = "警告颜色",
	["Setup the warning color for value display."] = "设置冷却显示字体的警告颜色.",
	["Font Size"] = "字体大小",
	["Small Size"] = "小字体",
	["Small font size for cooldown is longer than 10 minutes."] = "设置大于10分钟的冷却显示的字体大小.",
	["Medium Size"] = "中字体",
	["Medium font size for cooldown is longer than 1 minute and less than 10 minutes."] = "设置1~10分钟的冷却显示的字体大小.",
	["Large Size"] = "大字体",
	["Large font size for cooldown is longer than 10 seconds and less than 1 minutes."] = "设置10秒~1分钟的冷却显示的字体大小.",
	["Warning Size"] = "警告字体",
	["Warning font size for cooldown is less than 10 seconds."] = "设置小于10秒的冷却显示的字体大小.",
	
	["Misc"] = "其他设置",
	
	["Shine at finish cooldown"] = "冷却完毕时闪烁",
	["Toggle icon shine display at finish cooldown."] = "在冷却完毕时闪烁提示.",
	["Shine Scale"] = "闪烁大小",
	["Adjust icon shine scale."] = "设置图标闪烁的大小.",
	["Blizzard origin cooldown animation."] = "藏暴雪原有的冷却动画.",
	["Hide Blizzard origin cooldown animation."] = "隐藏暴雪原有的冷却动画.",
	["Hide Blizzard Origin Animation"] = "隐藏原冷却动画",
	["Minimum Duration"] = "最小冷却",
	["Minimum duration for display cooldown count."] = "设置显示倒计时需要的最小冷却时间.",
	["Reset Settings"] = "重新设置",
	["Reset"] = "重置设置",
	["Reset all settings."] = "重置所有设置。",
	["ResetDB_Confirm"] = "确认重置所有设置?",
	["All settings are reset to default value."] = "所有设置恢复至默认参数.",
	
	["d"] = "d",
	["h"] = "h",
	["m"] = "m",
	--["WhatIsCooldownCount"] = "CooldownCount 是一个显示技能,物品冷却时间的插件.",
} end)