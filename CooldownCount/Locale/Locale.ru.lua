-- Russian localization by Lichery

local L = AceLibrary("AceLocale-2.2"):new("CooldownCount")

L:RegisterTranslations("ruRU", function() return {
	["reset"] = "Сброс",
	["Reset all settings."] = "Сброс всех настроек.",
	["Reset to default settings."] = "Сброс к настройка по умолчанию.",
	["shine"] = "Вспышка",
	["Toggle icon shine display after finish cooldown."] = "Переключение отображения вспышки иконок после завершения перезарядки.",
	["shinescale"] = "Масштаб вспышки",
	["Adjust icon shine scale."] = "Настройка масштаба вспышки иконок.",
	["font"] = "Шрифт",
	["Set cooldown value display font."] = "Установить шрифт перезарядки.",
	
	["font size"] = "Размер шрифта",
	["Setup cooldown value display font size."] = "Установить размер шрифта перезарядки.",
	["small size"] = "Маленький размер",
	["Small font size for cooldown is longer than 10 minutes."] = "Маленький размер шрифта для перезарядки больше, чем 10 минут.",
	["medium size"] = "Средний размер",
	["Medium font size for cooldown is longer than 1 minute and less than 10 minutes."] = "Средний размер шрифта для перезарядки больше 1 минуты и меньше 10 минут.",
	["large size"] = "Большой размер",
	["Large font size for cooldown is longer than 10 seconds and less than 1 minutes."] = "Большой размер шрифта для перезарядки больше 10 секунд и меньше 1 минуты.",
	["warning size"] = "Размер предупреждения",
	["Warning font size for cooldown is less than 10 seconds."] = "Размер шрифта предупреждения для перезарядки меньше 10 секунд.",
	
	["common color"] = "Общий цвет",
	["Setup the common color for value display."] = "Настройка общего цвета для отображения значений.",
	["warning color"] = "Цвет предупреждения",
	["Setup the warning color for value display."] = "Настройка цвета предупреждения для отображения значений.",
	
	["d"] = "д",
	["h"] = "ч",
	["m"] = "м",
	
--	["Fonts\\FRIZQT__.TTF"] = "Fonts\\FRIZQT__.TTF",
	
	["minimum duration"] = "Минимальная длительность",
	["Minimum duration for display cooldown count."] = "Минимальная длительность для отображения количества перезарядки.",
	["hide animation"] = "Скрыть анимацию",
	["Hide Bliz origin cooldown animation."] = "Скрыть оригинальную анимацию перезарядки Blizzard.",
-- Для изменения шрифта:	
--	["2002"] = "Fonts\\2002.TTF", 
--	["FRIZQT__"] = "Fonts\\FRIZQT__.TTF", 
--	["ARIALN"] = "Fonts\\ARIALN.TTF", 
--	["K_Damage"] = "Fonts\\K_Damage.TTF", 
--	["K_Pagetext"] = "Fonts\\K_Pagetext.TTF", 
} end)