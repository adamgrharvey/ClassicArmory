Armory = {};
Armory.fully_loaded = false;
local GetUpdate = false;
local CharacterString = "";
local Character = {
	[0] = "",
	[1] = "",
	[2] = "",
	[3] = "",
	[4] = "",
	[5] = "",
	[6] = "",
	[7] = "",
	[8] = "",
	[9] = "",
	[10] = "",
	[11] = "",
	[12] = "",
	[13] = "",
	[14] = "",
	[15] = "",
	[16] = "",
	[17] = "",
	[18] = "",
	[19] = ""
}
local AchievementList = {6,7,8,9,10,11,12,13,15,16,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,49,50,51,52,53,54,55,56,57,58,59,60,73,94,95,97,98,99,100,101,102,103,104,105,107,108,110,112,113,114,115,116,121,122,123,124,125,126,127,128,129,130,131,132,133,134,135,137,141,144,150,153,154,155,156,157,158,159,161,162,165,166,167,168,178,181,183,189,193,197,198,199,200,201,202,203,204,206,207,208,209,211,212,213,214,216,218,219,220,221,222,223,224,225,226,227,229,230,231,233,238,239,245,246,247,248,249,252,255,259,260,263,271,272,273,275,277,279,281,283,284,288,289,291,292,293,295,303,306,318,319,320,321,322,323,324,326,328,329,330,331,332,333,334,336,338,339,341,342,344,345,346,347,349,350,353,362,363,364,365,366,367,370,374,377,378,381,382,383,388,389,393,394,395,396,397,398,399,400,401,402,403,404,405,406,407,408,409,411,412,414,415,416,418,419,420,424,425,426,428,429,430,431,432,433,434,435,436,437,438,439,440,441,442,443,444,445,446,447,448,449,450,451,452,453,454,456,457,458,459,460,461,462,463,464,465,466,467,468,469,470,471,472,473,477,478,479,480,481,482,483,484,485,486,487,488,489,490,491,492,493,494,495,496,497,498,499,500,503,504,505,506,507,508,509,512,513,515,516,518,519,520,521,522,523,524,527,528,529,545,546,547,556,557,558,559,560,561,562,563,564,565,566,567,568,569,572,573,574,575,576,577,578,579,582,583,584,585,586,587,588,589,590,593,594,595,596,603,604,605,606,607,608,609,610,611,612,613,614,615,616,617,618,619,621,622,623,624,625,626,627,628,629,630,631,632,633,634,635,636,637,638,639,640,641,642,643,644,645,646,647,648,649,650,651,652,653,654,655,656,657,658,659,660,661,662,663,664,665,666,667,668,669,670,671,672,673,674,675,676,677,678,679,680,681,682,683,684,685,686,687,688,689,690,691,692,693,694,695,696,697,698,699,700,701,705,706,707,708,709,710,711,712,713,714,725,726,727,728,729,730,731,732,733,734,735,736,750,752,753,759,760,761,762,763,764,765,766,768,769,770,771,772,773,774,775,776,777,778,779,780,781,782,783,784,796,798,799,800,801,802,811,812,829,830,837,838,839,840,841,842,843,844,845,846,847,848,849,850,851,852,853,854,855,856,857,858,859,860,861,862,863,864,865,866,867,868,869,870,871,872,873,875,876,877,878,879,880,881,882,883,884,885,886,887,888,889,890,891,892,893,894,896,897,898,899,900,901,902,903,905,906,907,908,909,910,911,912,913,914,915,916,917,918,919,921,922,923,924,925,926,927,928,931,932,933,934,937,938,939,940,941,942,943,944,945,946,947,948,949,950,951,952,953,955,956,957,958,959,960,961,962,963,964,965,966,967,968,969,970,971,972,973,974,975,976,977,978,979,980,981,1005,1006,1007,1008,1009,1010,1011,1012,1014,1015,1017,1020,1021,1022,1023,1024,1025,1026,1027,1028,1029,1030,1031,1032,1033,1034,1035,1036,1037,1038,1039,1040,1041,1042,1043,1044,1045,1047,1057,1065,1066,1067,1068,1069,1070,1071,1072,1073,1074,1075,1076,1077,1078,1079,1080,1081,1082,1083,1084,1085,1086,1087,1088,1089,1090,1091,1092,1093,1094,1095,1096,1097,1098,1099,1100,1101,1102,1103,1104,1106,1107,1108,1109,1110,1111,1112,1113,1114,1115,1125,1145,1146,1147,1148,1149,1150,1151,1153,1157,1159,1160,1161,1162,1164,1165,1166,1167,1168,1169,1170,1171,1172,1173,1174,1175,1176,1177,1178,1180,1181,1182,1183,1184,1185,1186,1187,1188,1189,1190,1191,1192,1193,1194,1195,1197,1198,1199,1200,1201,1202,1203,1205,1206,1225,1229,1231,1232,1233,1234,1235,1236,1237,1238,1239,1240,1241,1242,1243,1244,1248,1250,1251,1252,1253,1254,1255,1257,1258,1259,1260,1261,1262,1263,1264,1265,1266,1267,1268,1269,1270,1271,1272,1273,1274,1275,1276,1277,1279,1280,1281,1282,1283,1284,1285,1286,1287,1288,1289,1291,1292,1293,1295,1296,1297,1298,1299,1300,1301,1302,1303,1304,1305,1306,1307,1308,1309,1310,1311,1312,1336,1337,1339,1356,1357,1358,1359,1360,1361,1362,1363,1364,1365,1366,1367,1368,1369,1370,1371,1372,1373,1374,1375,1376,1377,1378,1379,1380,1381,1382,1383,1384,1385,1386,1387,1388,1389,1390,1391,1392,1393,1394,1396,1400,1402,1404,1405,1406,1407,1408,1409,1410,1411,1412,1413,1414,1415,1416,1417,1418,1419,1420,1421,1422,1423,1424,1425,1426,1427,1428,1436,1456,1457,1458,1462,1463,1464,1465,1466,1467,1485,1486,1487,1488,1489,1490,1491,1492,1493,1494,1495,1496,1497,1498,1499,1500,1501,1502,1504,1505,1506,1507,1508,1509,1510,1511,1512,1513,1514,1515,1516,1517,1518,1519,1520,1524,1525,1526,1527,1532,1535,1536,1537,1538,1539,1540,1541,1542,1544,1545,1546,1547,1548,1549,1550,1551,1552,1556,1557,1558,1559,1560,1561,1563,1576,1596,1636,1637,1638,1656,1657,1658,1676,1677,1678,1680,1681,1682,1683,1684,1685,1686,1687,1688,1689,1690,1691,1692,1693,1694,1695,1696,1697,1698,1699,1700,1701,1702,1703,1704,1705,1706,1707,1716,1717,1718,1719,1721,1722,1723,1727,1729,1730,1734,1735,1737,1738,1740,1741,1745,1748,1751,1752,1753,1754,1755,1756,1757,1759,1760,1761,1762,1763,1764,1765,1766,1768,1770,1771,1772,1773,1774,1775,1776,1777,1778,1779,1780,1781,1782,1783,1784,1785,1786,1788,1789,1790,1791,1792,1793,1795,1796,1797,1798,1799,1800,1801,1816,1817,1832,1833,1834,1836,1837,1856,1857,1858,1859,1860,1861,1862,1864,1865,1866,1867,1868,1869,1870,1871,1872,1873,1874,1875,1876,1877,1919,1936,1956,1957,1958,1976,1977,1996,1997,1998,1999,2000,2001,2002,2016,2017,2018,2019,2036,2037,2038,2039,2040,2041,2042,2043,2044,2045,2046,2047,2048,2049,2050,2051,2052,2053,2054,2056,2057,2058,2076,2077,2078,2079,2080,2081,2082,2083,2084,2085,2086,2087,2088,2089,2090,2091,2092,2093,2094,2095,2096,2097,2116,2136,2137,2138,2139,2140,2141,2142,2143,2144,2145,2146,2147,2148,2149,2150,2151,2152,2153,2154,2155,2156,2157,2176,2177,2178,2179,2180,2181,2182,2183,2184,2185,2186,2187,2188,2189,2190,2191,2192,2193,2194,2195,2199,2200,2216,2217,2218,2219,2256,2257,2277,2316,2336,2357,2358,2359,2396,2397,2398,2416,2417,2418,2419,2420,2421,2422,2436,2456,2476,2496,2497,2516,2536,2537,2556,2557,2576,2596,2676,2716,2756,2758,2760,2761,2762,2763,2764,2765,2766,2767,2768,2769,2770,2771,2772,2773,2776,2777,2778,2779,2780,2781,2782,2783,2784,2785,2786,2787,2788,2796,2797,2798,2816,2817,2836,2856,2857,2858,2859,2860,2861,2862,2863,2864,2865,2866,2867,2868,2869,2870,2872,2873,2874,2875,2879,2880,2881,2882,2883,2884,2885,2886,2887,2888,2889,2890,2891,2892,2893,2894,2895,2903,2904,2905,2906,2907,2908,2909,2910,2911,2912,2913,2914,2915,2916,2917,2918,2919,2921,2923,2924,2925,2926,2927,2928,2929,2930,2931,2932,2933,2934,2935,2936,2937,2938,2939,2940,2941,2942,2943,2944,2945,2946,2947,2948,2951,2952,2953,2954,2955,2956,2957,2958,2959,2960,2961,2962,2963,2965,2967,2968,2969,2970,2971,2972,2973,2974,2975,2976,2977,2978,2979,2980,2981,2982,2983,2984,2985,2989,2995,2996,2997,3002,3003,3004,3005,3006,3007,3008,3009,3010,3011,3012,3013,3014,3015,3016,3017,3018,3036,3037,3056,3057,3058,3059,3076,3077,3096,3097,3098,3117,3118,3136,3137,3138,3141,3142,3157,3158,3159,3161,3162,3163,3164,3176,3177,3178,3179,3180,3181,3182,3183,3184,3185,3186,3187,3188,3189,3216,3217,3218,3236,3237,3256,3257,3258,3259,3296,3316,3336,3356,3357,3436,3456,3457,3478,3496,3516,3536,3556,3557,3558,3559,3576,3577,3578,3579,3580,3581,3582,3596,3597,3618,3636,3656,3676,3677,3736,3756,3757,3758,3776,3777,3778,3797,3798,3799,3800,3802,3803,3804,3808,3809,3810,3812,3813,3814,3815,3816,3817,3818,3819,3836,3837,3838,3839,3840,3841,3842,3843,3844,3845,3846,3847,3848,3849,3850,3851,3852,3853,3854,3855,3856,3857,3876,3896,3916,3917,3918,3936,3937,3957,3996,3997,4016,4017,4018,4019,4022,4023,4024,4025,4026,4027,4028,4029,4030,4031,4032,4033,4034,4035,4036,4037,4038,4039,4040,4041,4042,4043,4044,4045,4046,4047,4048,4049,4050,4051,4052,4053,4054,4055,4074,4075,4078,4079,4080,4096,4097,4156,4176,4177,4256,4296,4297,4298,4316,4396,4397,4400,4402,4403,4404,4405,4406,4407,4436,4437, 4782, 4784, 4785}
local AchievementListLength = #(AchievementList)
function Character.new(name, realm, region, classIndex)
	local self = {}
	self.name = name
	self.realm = realm
	self.region = region
	self.classIndex = classIndex
	self.inventory = {
		[0] = "",
		[1] = "",
		[2] = "",
		[3] = "",
		[4] = "",
		[5] = "",
		[6] = "",
		[7] = "",
		[8] = "",
		[9] = "",
		[10] = "",
		[11] = "",
		[12] = "",
		[13] = "",
		[14] = "",
		[15] = "",
		[16] = "",
		[17] = "",
		[18] = "",
		[19] = ""
	}

	return self
end
local Statistics = {}
function Statistics.new()
	local self = {}
	self[363] = {}
	self[366] = {}
	self[365] = {}
	self[364] = {}
	self[363] = {}
	self[362] = {}

	return self
end
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

	print("Armory Loaded: use \"/armory\" to show the window.")
	--Armory.CreateUIFrame();
	
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
		GetUpdate = true;
		
	end
end

SLASH_HELLOWORLD1, SLASH_HELLOWORLD2 = '/armory', '/armoury'; -- 3.
function SlashCmdList.HELLOWORLD(msg, editbox) -- 4.
 GetUpdate = true;
end

function Armory.UpdateFrame()

	-- update the main frame state here

	if (GetUpdate == true) then
		GetUpdate = false
		Armory.GetCharData()
		--print(GetPersonalRatedInfo(1))
		--print(Armory.GetPvPData())
		EditBox_Show(CharacterString)
	end
	
	Armory.Label:SetText("asdf");
end

function EditBox_Show(text)
	if not EditBox then
			local f = CreateFrame("Frame", "EditBox", UIParent, "DialogBoxFrame")
			f:SetPoint("CENTER")
			f:SetSize(600, 500)
			
			f:SetBackdrop({
					bgFile = "Interface\\DialogFrame\\UI-DialogBox-Background",
					edgeFile = "Interface\\PVPFrame\\UI-Character-PVP-Highlight", -- this one is neat
					edgeSize = 16,
					insets = { left = 8, right = 6, top = 8, bottom = 8 },
			})
			f:SetBackdropBorderColor(0, .44, .87, 0.5) -- darkblue
			
			-- Movable
			f:SetMovable(true)
			f:SetClampedToScreen(true)
			f:SetScript("OnMouseDown", function(self, button)
					if button == "LeftButton" then
							self:StartMoving()
					end
			end)
			f:SetScript("OnMouseUp", f.StopMovingOrSizing)
			
			-- ScrollFrame
			local sf = CreateFrame("ScrollFrame", "EditBoxScrollFrame", EditBox, "UIPanelScrollFrameTemplate")
			sf:SetPoint("LEFT", 16, 0)
			sf:SetPoint("RIGHT", -32, 0)
			sf:SetPoint("TOP", 0, -16)
			sf:SetPoint("BOTTOM", EditBoxButton, "TOP", 0, 0)
			
			-- EditBox
			local eb = CreateFrame("EditBox", "EditBoxEditBox", EditBoxScrollFrame)
			eb:SetSize(sf:GetSize())
			eb:SetMultiLine(true)
			eb:SetAutoFocus(false) -- dont automatically focus
			eb:SetFontObject("ChatFontNormal")
			eb:SetScript("OnEscapePressed", function() f:Hide() end)
			sf:SetScrollChild(eb)
			
			-- Resizable
			f:SetResizable(true)
			f:SetMinResize(150, 100)
			
			local rb = CreateFrame("Button", "EditBoxResizeButton", EditBox)
			rb:SetPoint("BOTTOMRIGHT", -6, 7)
			rb:SetSize(16, 16)
			
			rb:SetNormalTexture("Interface\\ChatFrame\\UI-ChatIM-SizeGrabber-Up")
			rb:SetHighlightTexture("Interface\\ChatFrame\\UI-ChatIM-SizeGrabber-Highlight")
			rb:SetPushedTexture("Interface\\ChatFrame\\UI-ChatIM-SizeGrabber-Down")
			
			rb:SetScript("OnMouseDown", function(self, button)
					if button == "LeftButton" then
							f:StartSizing("BOTTOMRIGHT")
							self:GetHighlightTexture():Hide() -- more noticeable
					end
			end)
			rb:SetScript("OnMouseUp", function(self, button)
					f:StopMovingOrSizing()
					self:GetHighlightTexture():Show()
					eb:SetWidth(sf:GetWidth())
			end)
			f:Show()
	end
	
	if text then
			EditBoxEditBox:SetText(text)
	end
	EditBox:Show()
end

function Armory.GetPvPData()
	local PvPString = ""
	for i = 1, 3, 1 do
		local rating, _, _, seasonPlayed, seasonWon = GetPersonalRatedInfo(i)
		PvPString = PvPString .. string.format("%x", rating) .. "." .. string.format("%x", seasonPlayed) .. "." ..string.format("%x", seasonWon) .. ":"
	end
	PvPString = string.sub(PvPString, 1, -2)
	return PvPString

end

function Armory.GetSpecData()
	local outString = "";
	for s = 1, 2 do
		local talentString = ""
		for i = 1, GetNumTalentTabs() do
			local row = 1;
			local specString = ""
			local column = 0;
			local found = false;
			for j = 1, 45 do
				column = column + 1;
				if (column == 5) then
					column = 1;
					row = row + 1;
				end
				for k = 1, GetNumTalents(i) do
					found = false;
					nameTalent, icon, tier, col, currRank, maxRank = GetTalentInfo(i,k,false,false,s)
					if (row == tier and column == col) then
						specString = specString .. currRank
					end
				end
			end

			if (i == 1) then
				talentString = specString
			else
				talentString = talentString .. "-" .. specString
			end
		end
		
		for i=1, 6 do
			talentString = talentString.."."
			glyphLink = GetGlyphLink(i, s)
			if (glyphLink ~= nil) then
				glyphString = gsub(glyphLink, "\124", ":")
				glyphString = gsub(glyphString, ":cff66bbff:Hglyph:2", "")
				glyphString = strsub(glyphString, 1, 5)
				talentString = talentString..glyphString
				glyphLink = nil;
			end

			--print(glyphString)
		end
		talentString = talentString .. "!"
		outString = outString .. talentString
	end
	return outString
end

function Armory.GetCharData()
	local CharacterName = UnitName("player");
	local CharacterRealm = GetRealmName();
	local CharTitle = GetTitleName(GetCurrentTitle());
	if (GetCurrentTitle() == -1) then
		CharTitle = "null"
	end
	local AchievePts = GetTotalAchievementPoints();
	local region = GetLocale();
	local CharRace = UnitRace("player")
	local CharLevel = UnitLevel("player")
	local itemString = ""
	CharacterString = ""
	local localizedClass, englishClass, classIndex = UnitClass("player");
	region = string.sub(region,3,5)
	local CharInfo = CharacterName .. "." .. CharacterRealm .. "." .. region .. "." .. CharTitle .. "." .. classIndex .. "." .. AchievePts .."." .. CharRace .. "." .. CharLevel
	local charUnique = CharacterName.."-"..CharacterRealm;
	_G.ArmoryPrefs[charUnique] = Character.new(CharacterName, CharacterRealm, region, classIndex);
	for i = 1, 19, 1 do
		if (GetInventoryItemLink("player", i)) then
			local a, itemLink = GetItemInfo(GetInventoryItemLink("player", i))
			itemString = string.match(itemLink, "item[%-?%d:]+")
			itemString = string.gsub(itemString, "::", ":0:")
			itemString = string.gsub(itemString, "::", ":0:")
			itemString = string.sub(itemString,6,-1)
			_G.ArmoryPrefs[charUnique].inventory[i] = itemString
			CharacterString = CharacterString..itemString
		else
			_G.ArmoryPrefs[charUnique].inventory[i] = nil;
			CharacterString = CharacterString.."empty"
		end
		if (CharacterString ~= "") then
			CharacterString = CharacterString.."."
		end
	end
	CharacterString = CharacterString.."!"..CharInfo.."!"


	CharacterString = CharacterString..Armory.GetSpecData()
	CharacterString = CharacterString..tostring(GetActiveTalentGroup()).."!"
	-- PVP DATA
	CharacterString = CharacterString .. Armory.GetPvPData() .. "!"
	--CharacterString = string.sub(CharacterString,2,-1);
	local ammoID, _ = GetInventoryItemID("player", 0)
	if (ammoID > 0) then
		_G.ArmoryPrefs[charUnique].inventory[0] = "item:"..ammoID
	else
		_G.ArmoryPrefs[charUnique].inventory[0] = nil
	end
	_G.ArmoryPrefs[charUnique].Statistics = Armory.GetStatisticData()
	_G.ArmoryPrefs[charUnique].PvP = Armory.GetPvPData()
	_G.ArmoryPrefs[charUnique].CharacterString = CharacterString
	_G.ArmoryPrefs[charUnique].RecentStats = { GetLatestUpdatedStats() }
	_G.ArmoryPrefs[charUnique].RecentAchieves = { GetLatestCompletedAchievements() }
	_G.ArmoryPrefs[charUnique].Specialization = {Primary = "", Secondary = ""}
	_G.ArmoryPrefs[charUnique].Talents = {"tab1", "tab2", "tab3"}
	_G.ArmoryPrefs[charUnique].Talents["tab1"] = {ID = 1}
	_G.ArmoryPrefs[charUnique].Talents["tab2"] = {ID = 2}
	_G.ArmoryPrefs[charUnique].Talents["tab3"] = {ID = 3}
	_G.ArmoryPrefs[charUnique].Talents["tab1"].Count = GetNumTalents(1)
	_G.ArmoryPrefs[charUnique].Talents["tab2"].Count = GetNumTalents(2)
	_G.ArmoryPrefs[charUnique].Talents["tab3"].Count = GetNumTalents(3)

	local numTabs = GetNumTalentTabs();
	for s=1, 2 do
		for t=1, numTabs do
	    local numTalents = GetNumTalents(t);
			if s == 1 then
				_G.ArmoryPrefs[charUnique].Specialization.Primary = _G.ArmoryPrefs[charUnique].Specialization.Primary..':';
			else 
				_G.ArmoryPrefs[charUnique].Specialization.Secondary = _G.ArmoryPrefs[charUnique].Specialization.Secondary..':';
			end
	    for i=1, numTalents do
	      nameTalent, icon, tier, col, currRank, maxRank = GetTalentInfo(t,i,false,false,s);
				if s == 1 then
					_G.ArmoryPrefs[charUnique].Specialization.Primary = _G.ArmoryPrefs[charUnique].Specialization.Primary..currRank;
				else 
					_G.ArmoryPrefs[charUnique].Specialization.Secondary = _G.ArmoryPrefs[charUnique].Specialization.Secondary..currRank;
				end
	    end
		end
	end
end

function Armory.GetTalentTree(NumTalents)
	local talentString = "";
	local tabs = {"tab1", "tab2", "tab3"}
	for i = 1, 3 do
		for j = 1, NumTalents do
		
		end
	end
end

function Armory.IsDualSpec()
	if (GetNumTalentGroups() > 1) then
		return true
	 else 
		return false
	 end
end

function getnumbersfromtext(txt)
	local str = ""
	string.gsub(txt,"%d+",function(e)
	 str = str .. " ".. e
	end)
	return str;
end

function Armory.GetStatisticData()
	-- 2v2 matches 	363
	-- 2v2 wins 		366
	-- 3v3 matches 	365
	-- 3v3 wins			364
	-- 5v5 matches 	363
	-- 5v5 wins			362
	local Statistics = Statistics.new()

	for _, Achievement in ipairs(AchievementList) do 
		IDNumber, Name, Points, Completed, Month, Day, Year, Description, Flags, Image, RewardText, isGuildAch = GetAchievementInfo(Achievement)
		local stat = GetStatistic(Achievement)

		if (Completed == true) then
			stat = "1"
		end
		if (Day ~= nil) then
			if (string.len(Day) < 2) then
				Day = "0" .. Day
			end
			if (string.len(Month) < 2) then
				Month = "0" .. Month
			end
			if (string.len(Year) < 2) then
				Year = "0" .. Year
			end
			Year = "20" .. Year
		end

		if (stat ~= "0" and string.sub(stat, 1, 3) ~= "0 /" and stat ~= "--") then
			Statistics[tostring(Achievement)] = {};
			Statistics[tostring(Achievement)].Value = stat
			Statistics[tostring(Achievement)].Month = Month
			Statistics[tostring(Achievement)].Day = Day

			Statistics[tostring(Achievement)].Year = Year
			if (string.find(Statistics[tostring(Achievement)].Value, "MoneyFrame") ~= nil) then
				Statistics[tostring(Achievement)].Value = getnumbersfromtext(Statistics[tostring(Achievement)].Value)
				Statistics[tostring(Achievement)].Value = string.gsub(Statistics[tostring(Achievement)].Value, " 0 0 2 0", "")
			end
			-- string.format("%x", Achievement)
			CharacterString = CharacterString .. string.format("%x", Achievement) .. ":" .. Statistics[tostring(Achievement)].Value
			if (Year ~= nil) then
				CharacterString = CharacterString .. "_" .. Year .. Month .. Day
			end
			CharacterString = CharacterString .. "."

			

		end
	end
	return Statistics
end



Armory.EventFrame = CreateFrame("Frame");
Armory.EventFrame:Show();
Armory.EventFrame:SetScript("OnEvent", Armory.OnEvent);
Armory.EventFrame:SetScript("OnUpdate", Armory.OnUpdate);
Armory.EventFrame:RegisterEvent("ADDON_LOADED");
Armory.EventFrame:RegisterEvent("PLAYER_LOGIN");
Armory.EventFrame:RegisterEvent("PLAYER_LOGOUT");
