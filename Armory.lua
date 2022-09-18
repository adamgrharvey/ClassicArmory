-- test
Armory = {};
Armory.fully_loaded = false;
Armory.default_options = {

	-- main frame position
	frameRef = "CENTER",
	frameX = 0,
	frameY = 0,
	hide = false,

	-- sizing
	frameW = 200,
	frameH = 200,
};


function Armory.OnReady()

	-- set up default options
	_G.ArmoryPrefs = _G.ArmoryPrefs or {};

	for k,v in pairs(Armory.default_options) do
		if (not _G.ArmoryPrefs[k]) then
			_G.ArmoryPrefs[k] = v;
		end
	end

	Armory.CreateUIFrame();
end

function Armory.OnSaving()

	if (Armory.UIFrame) then
		local point, relativeTo, relativePoint, xOfs, yOfs = Armory.UIFrame:GetPoint()
		_G.ArmoryPrefs.frameRef = relativePoint;
		_G.ArmoryPrefs.frameX = xOfs;
		_G.ArmoryPrefs.frameY = yOfs;
	end
end

function Armory.OnUpdate()
	if (not Armory.fully_loaded) then
		return;
	end

	if (ArmoryPrefs.hide) then 
		return;
	end

	Armory.UpdateFrame();
end

function Armory.OnEvent(frame, event, ...)

	if (event == 'ADDON_LOADED') then
		local name = ...;
		if name == 'Armory' then
			Armory.OnReady();
		end
		return;
	end

	if (event == 'PLAYER_LOGIN') then

		Armory.fully_loaded = true;
		return;
	end

	if (event == 'PLAYER_LOGOUT') then
		Armory.OnSaving();
		return;
	end
end

function Armory.CreateUIFrame()

	-- create the UI frame
	Armory.UIFrame = CreateFrame("Frame",nil,UIParent);
	Armory.UIFrame:SetFrameStrata("BACKGROUND")
	Armory.UIFrame:SetWidth(_G.ArmoryPrefs.frameW);
	Armory.UIFrame:SetHeight(_G.ArmoryPrefs.frameH);

	-- make it black
	Armory.UIFrame.texture = Armory.UIFrame:CreateTexture();
	Armory.UIFrame.texture:SetAllPoints(Armory.UIFrame);
	Armory.UIFrame.texture:SetTexture(0, 0, 0);

	-- position it
	Armory.UIFrame:SetPoint(_G.ArmoryPrefs.frameRef, _G.ArmoryPrefs.frameX, _G.ArmoryPrefs.frameY);

	-- make it draggable
	Armory.UIFrame:SetMovable(true);
	Armory.UIFrame:EnableMouse(true);

	-- create a button that covers the entire addon
	Armory.Cover = CreateFrame("Button", nil, Armory.UIFrame);
	Armory.Cover:SetFrameLevel(128);
	Armory.Cover:SetPoint("TOPLEFT", 0, 0);
	Armory.Cover:SetWidth(_G.ArmoryPrefs.frameW);
	Armory.Cover:SetHeight(_G.ArmoryPrefs.frameH);
	Armory.Cover:EnableMouse(true);
	Armory.Cover:RegisterForClicks("AnyUp");
	Armory.Cover:RegisterForDrag("LeftButton");
	Armory.Cover:SetScript("OnDragStart", Armory.OnDragStart);
	Armory.Cover:SetScript("OnDragStop", Armory.OnDragStop);
	Armory.Cover:SetScript("OnClick", Armory.OnClick);

	-- add a main label - just so we can show something
	Armory.Label = Armory.Cover:CreateFontString(nil, "OVERLAY");
	Armory.Label:SetPoint("CENTER", Armory.UIFrame, "CENTER", 2, 0);
	Armory.Label:SetJustifyH("LEFT");
	Armory.Label:SetFont([[Fonts\FRIZQT__.TTF]], 12, "OUTLINE");
	Armory.Label:SetText(" ");
	Armory.Label:SetTextColor(1,1,1,1);
	Armory.SetFontSize(Armory.Label, 20);
end

function Armory.SetFontSize(string, size)

	local Font, Height, Flags = string:GetFont()
	if (not (Height == size)) then
		string:SetFont(Font, size, Flags)
	end
end

function Armory.OnDragStart(frame)
	Armory.UIFrame:StartMoving();
	Armory.UIFrame.isMoving = true;
	GameTooltip:Hide()
end

function Armory.OnDragStop(frame)
	Armory.UIFrame:StopMovingOrSizing();
	Armory.UIFrame.isMoving = false;
end

function Armory.OnClick(self, aButton)
	if (aButton == "RightButton") then
		local a, itemLink, c = GetItemInfo(GetInventoryItemLink("player",5))
		print(string.match(itemLink, "item[%-?%d:]+"))
		
	end
end

function Armory.UpdateFrame()

	-- update the main frame state here
	local a, itemLink, c = GetItemInfo(GetInventoryItemLink("player",5))
	local itemString = string.match(itemLink, "item[%-?%d:]+")
	itemString = string.gsub(itemString, "::", ":0:")
	itemString = string.gsub(itemString, "::", ":0:")
	Armory.Label:SetText(itemString);
end


Armory.EventFrame = CreateFrame("Frame");
Armory.EventFrame:Show();
Armory.EventFrame:SetScript("OnEvent", Armory.OnEvent);
Armory.EventFrame:SetScript("OnUpdate", Armory.OnUpdate);
Armory.EventFrame:RegisterEvent("ADDON_LOADED");
Armory.EventFrame:RegisterEvent("PLAYER_LOGIN");
Armory.EventFrame:RegisterEvent("PLAYER_LOGOUT");
