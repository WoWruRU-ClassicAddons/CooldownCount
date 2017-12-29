local L = AceLibrary("AceLocale-2.2"):new("CooldownCount")

L:RegisterTranslations("zhTW", function() return {
	["Font Settings"] = "文字設定",

	["Font Style"] = "文字樣式",
	["Set cooldown value display font."] = "設定冷卻數字文字",
	["Font Color"] = "文字顏色",
	["Common color"] = "一般顏色",
	["Setup the common color for value display."] = "設定冷卻文字一般顏色",
	["Warning color"] = "警告顏色",
	["Setup the warning color for value display."] = "設定冷卻文字的警告顏色",
	["Font Size"] = "文字大小",
	["Small Size"] = "小尺寸",
	["Small font size for cooldown is longer than 10 minutes."] = "設定大於 10 分鐘的冷卻文字大小",
	["Medium Size"] = "中尺寸",
	["Medium font size for cooldown is longer than 1 minute and less than 10 minutes."] = "設定 1 ~ 10 分鐘的冷卻文字大小",
	["Large Size"] = "大尺寸",
	["Large font size for cooldown is longer than 10 seconds and less than 1 minutes."] = "設定 10 秒 ～ 1 分鐘的冷卻文字大小",
	["Warning Size"] = "警告文字",
	["Warning font size for cooldown is less than 10 seconds."] = "設定小於 10 秒的冷卻文字大小",

	["Misc"] = "其他設定",

	["Shine at finish cooldown"] = "冷卻時間到達時閃爍",
	["Toggle icon shine display at finish cooldown."] = "在冷卻完畢時閃爍提示",
	["Shine Scale"] = "閃爍大小",
	["Adjust icon shine scale."] = "設定圖示閃爍大小",
	["Blizzard Origin Animation"] = "Blizzard 原始動畫",
	["Hide Blizzard Origin Animation"] = "隱藏 Blizzard 原始動畫",
	["Hide Blizzard origin cooldown animation."] = "隱藏 Blizzard 原始冷卻動畫",
	["Minimum Duration"] = "最小持續時間",
	["Minimum duration for display cooldown count."] = "設定顯示冷卻倒數的最小持續時間",
	["Reset Settings"] = "重新设置",
	["Reset"] = "重置設定",
	["Reset all settings."] = "重置所有设置。",
	["ResetDB_Confirm"] = "重置確認",
	["All settings are reset to default value."] = "重置所有設定為預設值",

	["d"] = "天",
	["h"] = "時",
	["m"] = "分",
	--["WhatIsCooldownCount"] = "CooldownCount 是一個顯示技能/物品冷卻時間的插件",
} end)