CooldownCount = AceLibrary("AceAddon-2.0"):new("AceDB-2.0", "AceHook-2.1", "AceConsole-2.0")

local L = AceLibrary("AceLocale-2.2"):new("CooldownCount")
local version = GetAddOnMetadata("CooldownCount", "version")
local waterfall = AceLibrary("Waterfall-1.0")
local blacklist = {"TargetFrame", "PetAction"}
local CooldownFont = {
	["adventure"] = "Interface\\AddOns\\CooldownCount\\Fonts\\adventure.TTF", 
	["backsplatter"] = "Interface\\AddOns\\CooldownCount\\Fonts\\backsplatter.TTF", 
	["bazooka"] = "Interface\\AddOns\\CooldownCount\\Fonts\\bazooka.TTF", 
	["BlackCastleMF"] = "Interface\\AddOns\\CooldownCount\\Fonts\\BlackCastleMF.TTF", 
	["budhand"] = "Interface\\AddOns\\CooldownCount\\Fonts\\budhand.TTF", 
	["comic"] = "Interface\\AddOns\\CooldownCount\\Fonts\\comic.TTF", 
	["cooline"] = "Interface\\AddOns\\CooldownCount\\Fonts\\cooline.TTF", 
	["creeper"] = "Interface\\AddOns\\CooldownCount\\Fonts\\creeper.TTF", 
	["DieDieDie"] = "Interface\\AddOns\\CooldownCount\\Fonts\\DieDieDie.TTF", 
	["exocet"] = "Interface\\AddOns\\CooldownCount\\Fonts\\exocet.TTF", 
	["FRIZQT__"] = "Fonts\\FRIZQT__.TTF", 
	["FuturaBold"] = "Interface\\AddOns\\CooldownCount\\Fonts\\FuturaBold.TTF", 
	["mailrays"] = "Interface\\AddOns\\CooldownCount\\Fonts\\mailrays.TTF", 
	["pepsi"] = "Interface\\AddOns\\CooldownCount\\Fonts\\pepsi.TTF", 
	["signature"] = "Interface\\AddOns\\CooldownCount\\Fonts\\signature.TTF", 
	["visitor"] = "Interface\\AddOns\\CooldownCount\\Fonts\\visitor1.TTF", 
	["yellowjacket"] = "Interface\\AddOns\\CooldownCount\\Fonts\\yellowjacket.TTF", 
}
local defaults = {
	shine = false,
	shineScale = 2,
	minimumDuration = 3,
	hideAnimation = false,
	font = "FRIZQT__",
	color_common = {r = 1, g = 1, b = .2},
	color_warn = {r = 1, g = 0, b = 0},
	size1 = 18,
	size2 = 24,
	size3 = 28,
	size4 = 34,
}
StaticPopupDialogs["CC_CONFIRM_RESET"] = {
	text = L["ResetDB_Confirm"],
	button1 = YES,
	button2 = NO,
	OnAccept = function()
		CooldownCount:ResetDB("profile")
		CooldownCount:Print(L["All settings are reset to default value."])
	end,
	timeout = 0,
	whileDead = true,
	hideOnEscape = false,
	preferredIndex = 3
}

function CooldownCount:OnInitialize()
	local options = {
		type = "group",
		args = {
			font_opts = {
				type = "group",
				name = L["Font Settings"],
				desc = " ",
				order = 1,
				args = {
					font = {
						type = "text",
						name = L["Font Style"],
						desc = L["Set cooldown value display font."],
						get = function() return self.db.profile.font end,
						set = function(f) self.db.profile.font = f end,
						validate = {"adventure", "backsplatter", "bazooka", "BlackCastleMF", "budhand", "comic",
							"cooline", "creeper", "DieDieDie", "exocet", "FRIZQT__", "FuturaBold",
						"mailrays", "pepsi", "signature", "visitor", "yellowjacket"},
						order = 1,
					},
					header_font_color = {
						type = "header",
						name = L["Font Color"],
						order = 2,
					},
					color_common = {
						type = "color",
						name = L["Common color"],
						desc = L["Setup the common color for value display."],
						get = function() return self.db.profile.color_common.r, self.db.profile.color_common.g, self.db.profile.color_common.b end,
						set = function(r, g, b, a) self.db.profile.color_common.r, self.db.profile.color_common.g, self.db.profile.color_common.b = r, g, b end,
						order = 3,
					},
					color_warn = {
						type = "color",
						name = L["Warning color"],
						desc = L["Setup the warning color for value display."],
						get = function() return self.db.profile.color_warn.r, self.db.profile.color_warn.g, self.db.profile.color_warn.b end,
						set = function(r, g, b, a) self.db.profile.color_warn.r, self.db.profile.color_warn.g, self.db.profile.color_warn.b = r, g, b end,
						order = 4,
					},
					header_font_size = {
						type = "header",
						name = L["Font Size"],
						order = 5,
					},
					size1 = {
						type = "range",
						name = L["Small Size"],
						desc = L["Small font size for cooldown is longer than 10 minutes."],
						min = 10,
						max = 45,
						step = 1,
						get = function() return self.db.profile.size1 end,
						set = function(r) self.db.profile.size1 = r end,
						order = 6,
					},
					size2 = {
						type = "range",
						name = L["Medium Size"],
						desc = L["Medium font size for cooldown is longer than 1 minute and less than 10 minutes."],
						min = 10,
						max = 45,
						step = 1,
						get = function() return self.db.profile.size2 end,
						set = function(r) self.db.profile.size2 = r end,
						order = 7,
					},
					size3 = {
						type = "range",
						name = L["Large Size"],
						desc = L["Large font size for cooldown is longer than 10 seconds and less than 1 minutes."],
						min = 10,
						max = 45,
						step = 1,
						get = function() return self.db.profile.size3 end,
						set = function(r) self.db.profile.size3 = r end,
						order = 8,
					},
					size4 = {
						type = "range",
						name = L["Warning Size"],
						desc = L["Warning font size for cooldown is less than 10 seconds."],
						min = 10,
						max = 45,
						step = 1,
						get = function() return self.db.profile.size4 end,
						set = function(r) self.db.profile.size4 = r end,
						order = 9,
					},
				},
			},
			misc_opts = {
				type = "group",
				name = L["Misc"],
				desc = " ",
				order = 2,
				args = {
					shine = {
						type = "toggle",
						name = L["Shine at finish cooldown"],
						desc = L["Toggle icon shine display at finish cooldown."],
						get = function() return self.db.profile.shine end,
						set = function(t) self.db.profile.shine = t end,
						order = 1,
					},
					shine_scale = {
						type = "range",
						name = L["Shine Scale"],
						desc = L["Adjust icon shine scale."],
						min = 0,
						max = 50,
						step = 1,
						get = function() return self.db.profile.shineScale end,
						set = function(r) self.db.profile.shineScale = r end,
						order = 2,
					},
					header_hideAnimation = {
						type = "header",
						name = L["Blizzard Origin Animation"],
						order = 3,
					},
					hide_anim = {
						type = "toggle",
						name = L["Hide Blizzard Origin Animation"],
						desc = L["Hide Blizzard origin cooldown animation."],
						get = function() return self.db.profile.hideAnimation end,
						set = function(t) 
							self.db.profile.hideAnimation = t
							self:UnhookAll()
							self:OnEnable()
						end,
						order = 4,
					},
					header_minimumDuration = {
						type = "header",
						name = L["Minimum Duration"],
						order = 5,
					},
					min_dur = {
						type = "range",
						name = L["Minimum Duration"],
						desc = L["Minimum duration for display cooldown count."],
						min = .5,
						max = 30,
						step = .5,
						get = function() return self.db.profile.minimumDuration end,
						set = function(r) self.db.profile.minimumDuration = r end,
						order = 6,
					},
					header_resetDB = {
						type = "header",
						name = L["Reset Settings"],
						order = 7,
					},
					resetdb = {
						type = "execute",
						name = L["Reset"],
						desc = L["Reset all settings."],
						func = function()
							StaticPopup_Show("CC_CONFIRM_RESET")
						end,
						order = 8,
					},
				},
			},
		},
	},
	
	self:RegisterDB("CooldownCountDB")
	self:RegisterDefaults("profile", defaults)
	self:RegisterChatCommand({"/cooldowncountcl", "/cccl"}, options)
	self:RegisterChatCommand({"/cooldowncount", "/cc"}, function() waterfall:Open('CooldownCount') end)
	waterfall:Register("CooldownCount", "aceOptions", options, "title", "CooldownCount - "..version, "colorR", .2, "colorG", .6, "colorB", .2)
end

function CooldownCount:OnEnable()
	self:Hook("CooldownFrame_SetTimer")
end

function CooldownCount:CooldownFrame_SetTimer(cooldownFrame, start, duration, enable)
	if CooldownCount:CheckBlacklist(cooldownFrame:GetName()) then
		return
	end
	if not self.db.profile.hideAnimation then
		self.hooks.CooldownFrame_SetTimer(cooldownFrame, start, duration, enable)
	else
		cooldownFrame:Hide()
	end
	
	if start > 0 and duration > self.db.profile.minimumDuration and enable > 0 then
		local cooldownCount = cooldownFrame.textFrame or CooldownCount:CreateCooldownCount(cooldownFrame, start, duration)
		cooldownCount.start = start
		cooldownCount.duration = duration
		cooldownCount.timeToNextUpdate = 0
		cooldownCount:Show()
	elseif cooldownFrame.textFrame then
		cooldownFrame.textFrame:Hide()
	end
end

function CooldownCount:CreateCooldownCount(frame, start, duration)
	frame.textFrame = CreateFrame("Frame", nil, frame:GetParent())
	local textFrame = frame.textFrame
	
	-- switch action bar fix, but not perfect
	local ChildFrame = CreateFrame("Frame", nil, frame)
	ChildFrame:SetScript("OnShow", CooldownCount.Child_OnShow)
	ChildFrame:SetScript("OnHide", CooldownCount.Child_OnHide)
	
	textFrame:SetAllPoints(frame:GetParent())
	textFrame:SetFrameLevel(textFrame:GetFrameLevel() + 5)
	textFrame:SetToplevel(true)
	
	textFrame.text = textFrame:CreateFontString(nil, "OVERLAY")
	textFrame.text:SetPoint("CENTER", textFrame, "CENTER", 0, -1)
	
	textFrame.icon =
	--standard action button icon, $parentIcon
	getglobal(frame:GetParent():GetName() .. "Icon") or
	--standard item button icon,  $parentIconTexture
	getglobal(frame:GetParent():GetName() .. "IconTexture")
	
	if textFrame.icon then
		textFrame:SetScript("OnUpdate", CooldownCount.Text_OnUpdate)
	end
	
	textFrame:Hide()
	
	return textFrame
end

function CooldownCount:Child_OnShow()
	local textFrame = this:GetParent().textFrame
	if textFrame and not textFrame:IsShown() then
		textFrame:Show()
	end
end

function CooldownCount:Child_OnHide()
	local textFrame = this:GetParent().textFrame
	if textFrame and textFrame:IsShown() then
		textFrame:Hide()
	end
end

function CooldownCount:Text_OnUpdate()
	if this.timeToNextUpdate <= 0 or not this.icon:IsVisible() then
		--[[
			If you have a long cooldown spell/item, after reboot your computer, cooldown value will be wrong.
			I still havn't any idea for it.
		]]
		if GetTime() < this.start then return end
		
		local remain = this.duration - (GetTime() - this.start)
		
		if floor(remain + .5) > 0 and this.icon:IsVisible() then
			local text, toNextUpdate, size, twoColor = CooldownCount:GetFormattedTime(remain)
			this.text:SetFont(CooldownFont[CooldownCount.db.profile.font], size, "OUTLINE")
			
			color = CooldownCount.db.profile.color_common
			if twoColor then
				if this.twoColor then
					color = CooldownCount.db.profile.color_warn
					this.twoColor = nil
				else
					this.twoColor = true
				end
			end
			this.text:SetTextColor(color.r, color.g, color.b)
			
			this.text:SetText(text)
			this.timeToNextUpdate = toNextUpdate
		else
			if CooldownCount.db.profile.shine and this.icon:IsVisible() then
				CooldownCount:StartToShine(this)
			end
			this.twoColor = nil
			this:Hide()
		end
	else
		this.timeToNextUpdate = this.timeToNextUpdate - arg1
	end
end

function CooldownCount:GetFormattedTime(secs)
	-- return cc now value, next update value, font size, toggle two color
	if secs >= 86400 then
		return ceil(secs / 86400) .. L["d"], mod(secs, 86400), CooldownCount.db.profile.size1
	elseif secs >= 3600 then
		return ceil(secs / 3600) .. L["h"], mod(secs, 3600), CooldownCount.db.profile.size1
	elseif secs >= 600 then
		return ceil(secs / 60) .. L["m"], mod(secs, 60), CooldownCount.db.profile.size1
	elseif secs >= 60 then
		return ceil(secs / 60) .. L["m"], mod(secs, 60), CooldownCount.db.profile.size2
	elseif secs >= 10 then
		return floor(secs + .5), secs - floor(secs), CooldownCount.db.profile.size3
	end
	return floor(secs + .5), .5, CooldownCount.db.profile.size4, true
end


--[[ Shine Codes ]]--
function CooldownCount:StartToShine(textFrame)
	local shineFrame = textFrame.shine or CooldownCount:CreateShineFrame(textFrame:GetParent())
	
	shineFrame.shine:SetAlpha(shineFrame:GetParent():GetAlpha())
	shineFrame.shine:SetHeight(shineFrame:GetHeight() * CooldownCount.db.profile.shineScale)
	shineFrame.shine:SetWidth(shineFrame:GetWidth() * CooldownCount.db.profile.shineScale)
	
	shineFrame:Show()
end

function CooldownCount:CreateShineFrame(parent)
	local shineFrame = CreateFrame("Frame", nil, parent)
	shineFrame:SetAllPoints(parent)
	
	local shine = shineFrame:CreateTexture(nil, "OVERLAY")
	shine:SetTexture("Interface\\Cooldown\\star4")
	shine:SetPoint("CENTER", shineFrame, "CENTER")
	shine:SetBlendMode("ADD")
	shineFrame.shine = shine
	
	shineFrame:Hide()
	shineFrame:SetScript("OnUpdate", CooldownCount.Shine_Update)
	shineFrame:SetAlpha(parent:GetAlpha())
	
	return shineFrame
end

function CooldownCount:Shine_Update()
	local shine = this.shine
	local alpha = shine:GetAlpha()
	shine:SetAlpha(alpha * .95)
	
	if alpha < .1 then
		this:Hide()
	else
		shine:SetHeight(alpha * this:GetHeight() * CooldownCount.db.profile.shineScale)
		shine:SetWidth(alpha * this:GetWidth() * CooldownCount.db.profile.shineScale)
	end
end

function CooldownCount:CheckBlacklist(frameName)
	if not frameName or getglobal(frameName).noCooldownCount then
		return true
	end
	for _, v in ipairs(blacklist) do
		if strfind(frameName, v) then
			getglobal(frameName).noCooldownCount=1
			return true
		end
	end
end