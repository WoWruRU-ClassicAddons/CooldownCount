local L = AceLibrary("AceLocale-2.2"):new("CooldownCount")

L:RegisterTranslations("ruRU", function() return {
	["Font Settings"] = "Настройки шрифта",
	
	["Font Style"] = "Стиль шрифта",
	["Set cooldown value display font."] = "Устанавливает шрифт для отображения значения восстановления.",
	["Font Color"] = "Цвет шрифта",
	["Common color"] = "Общий цвет",
	["Setup the common color for value display."] = "Задает общий цвет для отображения значения восстановления.",
	["Warning color"] = "Цвет 'Внимание'",
	["Setup the warning color for value display."] = "Задает цвет 'Внимание' для отображения значения восстановления.",
	["Font Size"] = "Размер шрифта",
	["Small Size"] = "Маленький размер",
	["Small font size for cooldown is longer than 10 minutes."] = "Размер шрифта для восстановления более 10 минут.",
	["Medium Size"] = "Средний размер",
	["Medium font size for cooldown is longer than 1 minute and less than 10 minutes."] = "Средний размер шрифта для восстановления более 1 минуты и менее 10 минут.",
	["Large Size"] = "Размер большого",
	["Large font size for cooldown is longer than 10 seconds and less than 1 minutes."] = "Большой размер шрифта для восстановления более 10 секунд и менее 1 минуты.",
	["Warning Size"] = "Размер 'Внимание'",
	["Warning font size for cooldown is less than 10 seconds."] = "Размер шрифта 'Внимание' для восстановления менее 10 секунд.",
	
	["Misc"] = "Разное",
	
	["Shine at finish cooldown"] = "Сияние в конце восстановления",
	["Toggle icon shine display at finish cooldown."] = "Вкл./Выкл. сияние иконки в конце восстановления.",
	["Shine Scale"] = "Размер сияния",
	["Adjust icon shine scale."] = "Масштаб сияния иконки.",
	["Blizzard Origin Animation"] = "Обычная анимация от Blizzard",
	["Hide Blizzard Origin Animation"] = "Скрыть обычную анимацию от Blizzard",
	["Hide Blizzard origin cooldown animation."] = "Скрыть обычную анимацию восстановления от Blizzard.",
	["Minimum Duration"] = "Минимальная продолжительность",
	["Minimum duration for display cooldown count."] = "Минимальная продолжительность для показа восстановления.",
	["Reset Settings"] = "Сброс настроек",
	["Reset"] = "Сброс",
	["Reset all settings."] = "Сброс всех настроек.",
	["ResetDB_Confirm"] = "Вы уверены, что хотите сбросить настройки?",
	["All settings are reset to default value."] = "Все настройки сброшены к значениям по умолчанию.",
	
	["d"] = "д",
	["h"] = "ч",
	["m"] = "м",
	--["WhatIsCooldownCount"] = "Аддон, отображающий время восстановления умения на его иконке",
} end)