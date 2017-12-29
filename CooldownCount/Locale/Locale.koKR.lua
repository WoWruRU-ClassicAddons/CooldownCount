local L = AceLibrary("AceLocale-2.2"):new("CooldownCount")

L:RegisterTranslations("koKR", function() return {
	["Font Settings"] = "글자 설정",
	
	["Font Style"] = "글꼴 선택",
	["Set cooldown value display font."] = "재사용 시간을 보여주는 글꼴 설정",
	["Font Color"] = "글자 색상",
	["Common color"] = "기본 색상",
	["Setup the common color for value display."] = "재사용 대기시간에 표시되는 글자의 설정입니다.",
	["Warning color"] = "경고 색상",
	["Setup the warning color for value display."] = "재사용 대기시간 경고 글자의 색상 설정입니다.",
	["Font Size"] = "글자 크기",
	["Small Size"] = "작은 글자 크기",
	["Small font size for cooldown is longer than 10 minutes."] = "10분 이상인 재사용 대기시간에 대한 글자 크기",
	["Medium Size"] = "중간 글자 크기",
	["Medium font size for cooldown is longer than 1 minute and less than 10 minutes."] = "1분 이상 10분 미만인 재사용 대기시간에 대한 글자 크기",
	["Large Size"] = "큰 글자 크기",
	["Large font size for cooldown is longer than 10 seconds and less than 1 minutes."] = "10초 이상 1분 미만인 재사용 대기시간에 대한 글자 크기",
	["Warning Size"] = "경고 글자 크기",
	["Warning font size for cooldown is less than 10 seconds."] = "10초 이하인 재사용 대기시간에 대한 경고 글자 크기",
	
	["Misc"] = "기타",
	
	["Shine at finish cooldown"] = "재사용 대기시간이 끝나면 반짝임을 사용합니다.",
	["Toggle icon shine display at finish cooldown."] = "재사용 대기시간 종료 후 아이콘 반짝임 표시를 전환합니다.",
	["Shine Scale"] = "반짝임 크기",
	["Adjust icon shine scale."] = "아이콘 반짝임 크기를 조절합니다.",
	["Blizzard Origin Animation"] = "애니메이",
	["Hide Blizzard Origin Animation"] = "애니메이션 숨김",
	["Hide Blizzard origin cooldown animation."] = "WoW 기본 재사용 대기 시간 애니메이션 효과를 숨깁니다.",
	["Minimum Duration"] = "최소 시간",
	["Minimum duration for display cooldown count."] = "재사용 대기 시간을 표시할 최소 시간을 설정합니다.",
	["Reset Settings"] = "설정 재설정",
	["Reset"] = "초기화",
	["Reset all settings."] = "모든 설정 재설정",
	["ResetDB_Confirm"] = "초기화DB 확인",
	["All settings are reset to default value."] = "모든 설정값을 초기화 합니다.",
	
	["d"] = "일",
	["h"] = "시",
	["m"] = "분",
	--["WhatIsCooldownCount"] = "CooldownCount에 대하여",
} end)