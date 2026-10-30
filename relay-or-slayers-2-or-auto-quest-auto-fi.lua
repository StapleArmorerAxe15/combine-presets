local RELAY_LOGO = "data:image/png;base64,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fERH/+zHPfY4dP8Hk2pbposgJREIQSQEUQggkASBAFJQSCglQQWFQBIQECo2ND771Kj9B5x78UV//L/hYZ45knxE5575q102773RoCQyXQRpIRAKihQSQp0UlCQIBJC6ACIhNIsomhdHjzl16B+HHTVw4KXVEOaZM8lHdN4ZJx25We9e/UhVBAIWAkhIBEFmIYDMJAkosxBAIRPemXTz9Tf9cdt+J5wxuVqtMs+cSz6i88446fDNem90EiAJBQNIQSEUAsoHEQithEKoE6RGyNTGpmduH35fryOPO/H18RMmMM+cTT6is37df/utNtvkiiRSCFEkgAoEIggkoMgMAQRCIQGFUAgorYlvPv7syI3n77L4X3v12jjTpk1jnjmbfEQ77/iDr554zBEjUq12pE4KSUARaSEhUiMSWgsgIklASiGIFJz0zPNP7/CtDfrc9PDDf2OjjTYK88zx5CPafqft2h570F53ztehw9rUqZCACgoJKKUkiGAggDJdmEFCALHQ9NyLYw65f8TN50yY0CUvvfQSQ4YMYZ45n3xE++67r5tssM6Pv77SshcTKipJQBBBSUJJJQlSkgAVITQLIDUpqIgZ89ob5w254fcHnnHuxVXmmavIR9S1a1f22/eojtt/v8ctbdu2WRcUAgGkINMJBKQugBSkIHWShEKUjHvr7dtHPHXHNrvtcepE5pnryMdgt912dvNvbrziaut89U7giySEUBIBwZAEkRBUiISgUgpSMgVg6ruNT99155BNhz80+rXrrhvKPHMf+Zgs3q2bB++/1yY/3LL31alWFwwBVEIQqQtBIBGkIApICDUJTJtW/ft9dzza57e/vfDJ58aN47XXXmOeuY98jL79rTXcZqvNe23Z57uXSbqSUBcDiIRCQAGlRQoohDQ2Nb125fU3bX3N4BseefbZZ5ln7iUfs65du7L7T3+80g5b9jlngQU7r1udNq0BMKkCghQEpSQCKSFU35k06fGH7n74pwMuvuxvf3vmGeaZu8knYNFFF2WjDb/VbvNem26+2morHTR/5449q9OmtQ0RKhaikoCaSqWSpsamlx59fMS54yY1XnzddcMmDh8+PMwz15NPUI8eX7f7qiu26bXBBqu2lw2/uvSyPTt26ditbUNDh0Dj1MamNx9/4smn29Hmnr/c/sB9L9E4sX///hx11FG5+uqrmWfu9/8A+zgEn0j2PD4AAAAASUVORK5CYII="

local ProjectId = "6a9517176bf508256ce22521"
local Base = "https://cdn.snc.dev/" .. ProjectId .. "/"
local ApiBase = "https://www.relayscripts.lol/api/loader"
local KeyUrl = "https://www.relayscripts.lol/get-key"
local StoreUrl = "https://relayhub.mysellauth.com"
local WebsiteLabel = "relayscripts.lol"
local DiscordInvite = "relayscripts"
local DiscordLabel = "discord.gg/" .. DiscordInvite
local KeyFile = "Relay/key.txt"
local LogoFile = "Relay/logo.png"

local Hubs = {
	{ "Animal Hospital", "d4fw9wf0ki", { 3725359351, 10148749921, 78515283254292 } },
	{ "Arsenal", "df1wzh8el4k", { 111958650, 286090429 } },
	{ "Basketball Legends", "1vfh6t0use", { 4931927012, 14259168147 } },
	{ "Blade Ball", "ntkin5mii2", { 4777817887, 13772394625 } },
	{ "Blox Fruits", "ri1nlgg6ebd", { 994732206, 2753915549, 4442272183, 7449423635 } },
	{ "Bloxstrike", "xel4nlifwyi", { 7633926880, 114234929420007 } },
	{ "Chess Club", "8z4515q457r", { 7266261686, 139394516128799 } },
	{ "Clean All The Leaves", "5d1jhf7nyre", { 10539411000, 92637789841354 } },
	{ "Fisch", "qwjlmqk81s", { 5750914919, 16732694052 } },
	{ "Football Fusion 3", "mnl3or7e7qs", { 9908641400, 82866880824588 } },
	{ "Hoopz", "83qa4pqa6rg", { 2287245386, 104140629757949, 6229116934 } },
	{ "Hostile Skies", "zpi5xpzeag8", { 686030892, 1886551928, 116448363211843 } },
	{ "Operations Siege", "90lnh9389ck", { 4849157113, 13997018456 } },
	{ "Phantom Forces", "b7u9t22gv3", { 113491250, 292439477 } },
	{ "RH2", "k9d7w73i8mi", { 2459091562, 6549794549, 6678600773, 7235817949 } },
	{ "Rivals", "gxwk9fbikko", { 6035872082, 17625359962 } },
	{ "Slayers 2", "vcn4bwdbay", { 5595353122, 16205713724, 136406881576517 } },
	{ "Spelling Bee", "8m5ni3suqni", { 6022371481, 17590362521 } },
	{ "State of Anarchy", "ltfqvecka9", { 595270616, 2000062521, 6128781746 } },
	{ "Superstar Baseball", "buog4eiy6z", { 7128251171, 101432174163538 } },
	{ "Tribes 3v3", "4w2qqm8mvc9", { 10768498581, 72169370437173 } },
	{ "Turbo Soccer", "vkda4rtzzch", { 10767012496, 101880234193261 } },
	{ "Untitled Boxing Game", "1micoadfus1", { 4730278139, 13621938427, 6969237940 } },
}

local Supported, ScriptUrls = {}, {}
for _, hub in ipairs(Hubs) do
	for _, id in ipairs(hub[3]) do
		Supported[id] = hub[1]
		ScriptUrls[id] = Base .. hub[2]
	end
end

local HttpService = game:GetService("HttpService")
local configReady = false
task.spawn(function()
	pcall(function()
		local body = game:HttpGet(ApiBase .. "/config")
		local data = HttpService:JSONDecode(body)
		if type(data.games) == "table" then
			for _, entry in ipairs(data.games) do
				local ids = type(entry.ids) == "table" and entry.ids or { entry.placeId }
				for _, raw in ipairs(ids) do
					local id = tonumber(raw)
					if id and type(entry.loader) == "string" and #entry.loader > 0 then
						Supported[id] = entry.name or Supported[id] or "Supported game"
						ScriptUrls[id] = entry.loader
					end
				end
			end
		end
		if type(data.links) == "table" then
			KeyUrl = data.links.getKey or KeyUrl
			WebsiteLabel = data.links.website or WebsiteLabel
			if type(data.links.discord) == "string" then
				DiscordInvite = data.links.discord:match("discord%.gg/([%w%-_]+)") or DiscordInvite
				DiscordLabel = "discord.gg/" .. DiscordInvite
			end
		end
	end)
	configReady = true
end)

local function awaitConfig(limit)
	local t0 = os.clock()
	while not configReady and os.clock() - t0 < limit do task.wait(0.05) end
	return configReady
end

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local MarketplaceService = game:GetService("MarketplaceService")
local LocalPlayer = Players.LocalPlayer

local genv = getgenv and getgenv() or _G
if genv.RelayKeyGui then pcall(function() genv.RelayKeyGui:Destroy() end) end

local function readKey()
	if not (isfile and readfile) then return nil end
	local ok, v = pcall(function() return isfile(KeyFile) and readfile(KeyFile) or nil end)
	if ok and type(v) == "string" then
		v = v:gsub("^%s+", ""):gsub("%s+$", "")
		if #v > 0 then return v end
	end
	return nil
end

local function saveKey(k)
	if not writefile then return end
	pcall(function()
		if makefolder and isfolder and not isfolder("Relay") then makefolder("Relay") end
		writefile(KeyFile, k)
	end)
end

local function clearKey()
	pcall(function() if delfile and isfile and isfile(KeyFile) then delfile(KeyFile) end end)
end

local function validFormat(k)
	if type(k) ~= "string" then return false end
	k = k:gsub("%s", "")
	if #k < 8 or #k > 128 then return false end
	return k:match("^[%w%-_%.]+$") ~= nil
end

local function executorName()
	local ok, name = pcall(function() return identifyexecutor and identifyexecutor() end)
	if ok and type(name) == "string" and #name > 0 then return name end
	return "Unknown"
end

local productName, productReady = nil, false
task.spawn(function()
	local ok, info = pcall(function() return MarketplaceService:GetProductInfo(game.PlaceId) end)
	if ok and type(info) == "table" and info.Name then productName = tostring(info.Name) end
	productReady = true
end)

local function gameInfo()
	local name = Supported[game.GameId] or Supported[game.PlaceId]
	return name or productName or ("Place " .. tostring(game.PlaceId)), name ~= nil
end

local function checkKey(k)
	local req = (syn and syn.request) or http_request or request or (fluxus and fluxus.request)
	if not req then return true, nil, false end
	local ok, res = pcall(req, { Url = ApiBase .. "/validate", Method = "POST", Headers = { ["Content-Type"] = "application/json" }, Body = HttpService:JSONEncode({ key = k }) })
	if not ok or type(res) ~= "table" then return true, nil, false end
	local okJson, data = pcall(HttpService.JSONDecode, HttpService, res.Body or "")
	if not okJson or type(data) ~= "table" then return true, nil, false end
	if data.valid == true then return true, data.message, true end
	if data.retry == true or (tonumber(res.StatusCode) or 0) >= 500 then return true, nil, false end
	return false, data.message or "That key was rejected.", false
end

local function fetchPlan(k)
	local req = (syn and syn.request) or http_request or request or (fluxus and fluxus.request)
	if not req then return nil end
	local ok, res = pcall(req, { Url = ApiBase .. "/validate", Method = "POST", Headers = { ["Content-Type"] = "application/json" }, Body = HttpService:JSONEncode({ key = k }) })
	if not ok or type(res) ~= "table" then return nil end
	local okJson, data = pcall(HttpService.JSONDecode, HttpService, res.Body or "")
	if okJson and type(data) == "table" and data.valid == true then return data end
	return nil
end

local function timeLeft(unix)
	local seconds = (tonumber(unix) or 0) - os.time()
	if seconds <= 0 then return "expiring soon" end
	local hours = math.floor(seconds / 3600)
	if hours >= 48 then return math.floor(hours / 24) .. " days left" end
	if hours >= 1 then return hours .. "h " .. math.floor((seconds % 3600) / 60) .. "m left" end
	return math.max(1, math.floor(seconds / 60)) .. "m left"
end

local function showUpsell(data)
	local cream = Color3.fromRGB(231, 222, 209)
	local ink = Color3.fromRGB(14, 14, 18)
	local tint = Color3.fromRGB(22, 22, 27)
	local text = Color3.fromRGB(246, 246, 248)
	local sub = Color3.fromRGB(166, 166, 176)
	if genv.RelayUpsellGui then pcall(function() genv.RelayUpsellGui:Destroy() end) end

	local gui = Instance.new("ScreenGui")
	gui.Name = "RelayUpsell"
	gui.ResetOnSpawn = false
	gui.IgnoreGuiInset = true
	gui.DisplayOrder = 99998
	gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	pcall(function() gui.Parent = (gethui and gethui()) or game:GetService("CoreGui") end)
	if not gui.Parent then gui.Parent = LocalPlayer:WaitForChild("PlayerGui") end
	genv.RelayUpsellGui = gui

	local card = Instance.new("Frame")
	card.Size = UDim2.fromOffset(320, 116)
	card.Position = UDim2.new(1, 20, 0, 76)
	card.BackgroundColor3 = tint
	card.BackgroundTransparency = 0.04
	card.BorderSizePixel = 0
	card.Parent = gui
	Instance.new("UICorner", card).CornerRadius = UDim.new(0, 16)
	local border = Instance.new("UIStroke", card)
	border.Color = Color3.new(1, 1, 1)
	border.Transparency = 0.9
	border.Thickness = 1

	local function label(str, y, size, font, colour, h)
		local l = Instance.new("TextLabel")
		l.BackgroundTransparency = 1
		l.Position = UDim2.fromOffset(16, y)
		l.Size = UDim2.new(1, -32, 0, h)
		l.Text = str
		l.Font = font
		l.TextSize = size
		l.TextColor3 = colour
		l.TextXAlignment = Enum.TextXAlignment.Left
		l.Parent = card
		return l
	end

	label("Free key", 13, 15, Enum.Font.BuilderSansBold, text, 18)
	local left = label(timeLeft(data.expiresAtUnix), 13, 13, Enum.Font.BuilderSansMedium, sub, 18)
	left.TextXAlignment = Enum.TextXAlignment.Right
	left.Size = UDim2.new(1, -60, 0, 18)
	label("Skip the gateway for good", 35, 13, Enum.Font.BuilderSansMedium, text, 16)
	label("Weekly $2.99  |  Monthly $4.99  |  Lifetime $12.99", 53, 12, Enum.Font.BuilderSansMedium, sub, 16)

	local buy = Instance.new("TextButton")
	buy.Position = UDim2.fromOffset(16, 76)
	buy.Size = UDim2.new(1, -32, 0, 30)
	buy.BackgroundColor3 = cream
	buy.BorderSizePixel = 0
	buy.AutoButtonColor = false
	buy.Text = "Skip ads"
	buy.Font = Enum.Font.BuilderSansBold
	buy.TextSize = 13
	buy.TextColor3 = ink
	buy.Parent = card
	Instance.new("UICorner", buy).CornerRadius = UDim.new(0, 10)

	local close = Instance.new("TextButton")
	close.Position = UDim2.new(1, -36, 0, 9)
	close.Size = UDim2.fromOffset(24, 24)
	close.BackgroundTransparency = 1
	close.Text = "x"
	close.Font = Enum.Font.BuilderSansBold
	close.TextSize = 15
	close.TextColor3 = sub
	close.Parent = card

	local closed = false
	local function dismiss()
		if closed then return end
		closed = true
		local tween = TweenService:Create(card, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.In), { Position = UDim2.new(1, 20, 0, 76) })
		tween:Play()
		tween.Completed:Wait()
		gui:Destroy()
		if genv.RelayUpsellGui == gui then genv.RelayUpsellGui = nil end
	end

	buy.MouseButton1Click:Connect(function()
		pcall(function() setclipboard(StoreUrl) end)
		buy.Text = "Link copied"
	end)
	close.MouseButton1Click:Connect(dismiss)

	TweenService:Create(card, TweenInfo.new(0.35, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { Position = UDim2.new(1, -336, 0, 76) }):Play()
	task.delay(22, dismiss)
end

local function offerPremium(k)
	task.spawn(function()
		task.wait(6)
		local data = fetchPlan(k)
		if not data then return end
		local plan = tostring(data.plan or "")
		if plan ~= "Free" and plan ~= "Daily" then return end
		pcall(showUpsell, data)
	end)
end

local function logExecution(k, success, err)
	task.spawn(function()
		local req = (syn and syn.request) or http_request or request or (fluxus and fluxus.request)
		if not req then return end
		local lp = Players.LocalPlayer
		local name = gameInfo()
		pcall(req, {
			Url = ApiBase .. "/execution",
			Method = "POST",
			Headers = { ["Content-Type"] = "application/json" },
			Body = HttpService:JSONEncode({
				key = k,
				username = lp and lp.Name or "",
				displayName = lp and lp.DisplayName or "",
				userId = lp and lp.UserId or 0,
				placeId = game.PlaceId,
				gameId = game.GameId,
				jobId = game.JobId,
				game = name,
				executor = executorName(),
				success = success,
				error = err and tostring(err) or nil,
			}),
		})
	end)
end

local function runLoader(k)
	genv.key = k
	_G.key = k
	pcall(function() getfenv(0).key = k end)
	local url = ScriptUrls[game.GameId] or ScriptUrls[game.PlaceId]
	if not url then return false, "Relay does not support this game yet" end
	local ok, src = pcall(game.HttpGet, game, url)
	if not ok or type(src) ~= "string" or #src == 0 then
		task.wait(1)
		ok, src = pcall(game.HttpGet, game, url)
	end
	if not ok or type(src) ~= "string" or #src == 0 then return false, "Could not download the script" end
	if #src < 400 and src:lower():find("not found") then return false, "The script for this game is offline. Ask staff to reupload it." end
	local fn = loadstring(src)
	if not fn then return false, "Script failed to compile" end
	local ran, runErr = pcall(fn)
	if not ran and tostring(runErr):find("is locked") then
		task.wait(1)
		local ok2, src2 = pcall(game.HttpGet, game, url)
		local fn2 = ok2 and type(src2) == "string" and loadstring(src2)
		if fn2 then ran, runErr = pcall(fn2) end
	end
	logExecution(k, ran, not ran and runErr or nil)
	if ran then offerPremium(k) end
	if not ran then return false, tostring(runErr) end
	return true
end

local function openDiscord(code)
	local req = (syn and syn.request) or http_request or request or (fluxus and fluxus.request)
	if not req then return false end
	for port = 6463, 6472 do
		local ok, res = pcall(req, {
			Url = ("http://127.0.0.1:%d/rpc?v=1"):format(port),
			Method = "POST",
			Headers = { ["Content-Type"] = "application/json", Origin = "https://discord.com" },
			Body = HttpService:JSONEncode({ cmd = "INVITE_BROWSER", nonce = HttpService:GenerateGUID(false), args = { code = code } }),
		})
		if ok and res and (res.StatusCode == 200 or res.Success) and not tostring(res.Body or ""):find('"evt"%s*:%s*"ERROR"') then return true end
	end
	return false
end

local forceUI = genv.RelayForceUI == true
genv.RelayForceUI = nil

local function currentLib()
	return _G.RelayLib or genv.RelayLib
end

local function startState(libBefore)
	local s = _G.RelayStatus
	if type(s) == "string" and s:upper():sub(1, 5) == "ERROR" then return "error", s end
	if s == "SUCCESS" then return "ok" end
	local lib = currentLib()
	if lib ~= nil and lib ~= libBefore then return "ok" end
	return nil
end

local function waitStart(libBefore, limit)
	local t0 = os.clock()
	local state, why = startState(libBefore)
	while not state and os.clock() - t0 < limit do
		task.wait(0.25)
		state, why = startState(libBefore)
	end
	return state, why
end

local startupError, startupKind

local function tryFast(k)
	local before = currentLib()
	_G.RelayStatus = nil
	local ok, err = runLoader(k)
	if not ok then
		startupError, startupKind = err, "load"
		return false
	end
	local state, why = waitStart(before, 20)
	if state == "ok" then saveKey(k) return true end
	if state == "error" then
		startupError, startupKind = why, "error"
	elseif genv.SNC_RUNNING then
		startupError, startupKind = "The script server did not accept that key.", "key"
	else
		startupError, startupKind = "The script did not start.", "timeout"
	end
	return false
end

local preset = type(genv.key) == "string" and (genv.key:gsub("%s", "")) or genv.key
local saved = readKey()
local presetOk = not forceUI and type(preset) == "string" and validFormat(preset)
local savedOk = not forceUI and saved ~= nil and validFormat(saved)
if presetOk or savedOk then awaitConfig(4) end
local detectedName, supported = gameInfo()

if presetOk and supported then
	if tryFast(preset) then return end
end

if savedOk and supported and saved ~= preset and (startupKind == nil or startupKind == "key") then
	if tryFast(saved) then return end
end
if forceUI then saved = nil end

task.spawn(function() pcall(openDiscord, DiscordInvite) end)

local Lucide
local pendingIcons = {}

local function paintIcon(img, name)
	if not Lucide then
		pendingIcons[img] = name
		return
	end
	local asset = Lucide.GetAsset and Lucide.GetAsset(name)
	if asset then
		img.Image = asset.Url
		img.ImageRectSize = asset.ImageRectSize
		img.ImageRectOffset = asset.ImageRectOffset
	end
end

task.spawn(function()
	local LUCIDE_URL = "https://raw.githubusercontent.com/mstudio45/lucide-roblox-direct/refs/heads/main/source.lua"
	for attempt = 1, 2 do
		local ok, lib = pcall(function() return loadstring(game:HttpGet(LUCIDE_URL))() end)
		if ok and type(lib) == "table" then
			Lucide = lib
			break
		end
		if attempt == 1 then task.wait(1) end
	end
	if not Lucide then return end
	local queued = pendingIcons
	pendingIcons = {}
	for img, name in pairs(queued) do pcall(paintIcon, img, name) end
end)

local function icon(parent, name, size, colour, pos)
	local img = Instance.new("ImageLabel")
	img.BackgroundTransparency = 1
	img.Size = UDim2.fromOffset(size, size)
	img.Position = pos
	img.ImageColor3 = colour
	img.Parent = parent
	paintIcon(img, name)
	return img
end

local logoImage = ""
pcall(function()
	local raw = RELAY_LOGO:match("base64,(.+)$")
	local decode = (crypt and crypt.base64decode) or base64_decode or (base64 and base64.decode)
	if raw and decode and writefile and getcustomasset then
		if makefolder and isfolder and not isfolder("Relay") then makefolder("Relay") end
		if not (isfile and isfile(LogoFile)) then writefile(LogoFile, decode(raw)) end
		logoImage = getcustomasset(LogoFile)
	end
end)

local function relayLoaderUI()
	local U = {}
	local RunService = game:GetService("RunService")
	local Lighting = game:GetService("Lighting")
	local TextService = game:GetService("TextService")
	local AssetService = game:GetService("AssetService")

	local T = {
		Accent = Color3.fromRGB(231, 222, 209),
		Ink = Color3.fromRGB(14, 14, 18),
		Tint = Color3.fromRGB(22, 22, 27),
		Raised = Color3.fromRGB(30, 30, 36),
		Text = Color3.fromRGB(246, 246, 248),
		Sub = Color3.fromRGB(166, 166, 176),
		Muted = Color3.fromRGB(112, 112, 122),
		Green = Color3.fromRGB(110, 220, 150),
		Red = Color3.fromRGB(238, 108, 108),
	}
	local ACCENT, TEXT, DIM, RED, GREEN, WHITE = T.Accent, T.Text, T.Sub, T.Red, T.Green, Color3.new(1, 1, 1)
	U.FAINT = T.Muted
	U.INK = T.Ink
	U.BLACK = Color3.new(0, 0, 0)
	local F = { R = Enum.Font.BuilderSans, M = Enum.Font.BuilderSansMedium, B = Enum.Font.BuilderSansBold, H = Enum.Font.BuilderSansExtraBold }
	local Q = {
		Quint = Enum.EasingStyle.Quint,
		Quad = Enum.EasingStyle.Quad,
		Back = Enum.EasingStyle.Back,
		Sine = Enum.EasingStyle.Sine,
		Linear = Enum.EasingStyle.Linear,
		Out = Enum.EasingDirection.Out,
		In = Enum.EasingDirection.In,
		InOut = Enum.EasingDirection.InOut,
	}
	U.CLARITY = 0.3
	local W, H = 560, 420
	local ISL = { W = 112, H = 34, Y = 10 }

	local function nseq(...)
		local p, k = { ... }, {}
		for i = 1, #p, 2 do k[#k + 1] = NumberSequenceKeypoint.new(p[i], p[i + 1]) end
		return NumberSequence.new(k)
	end

	local function new(class, props, children)
		local o = Instance.new(class)
		local parent = props and props.Parent
		if props then
			for k, v in pairs(props) do
				if k ~= "Parent" then o[k] = v end
			end
		end
		if children then
			for _, c in ipairs(children) do c.Parent = o end
		end
		if parent then o.Parent = parent end
		return o
	end

	local function tw(o, t, props, style, dir)
		local tr = TweenService:Create(o, TweenInfo.new(t, style or Q.Quint, dir or Q.Out), props)
		tr:Play()
		return tr
	end

	local function corner(o, r)
		return new("UICorner", { CornerRadius = UDim.new(0, r), Parent = o })
	end

	local function round(o)
		return new("UICorner", { CornerRadius = UDim.new(1, 0), Parent = o })
	end

	local function rim(o, a, thick)
		local s = new("UIStroke", { Color = WHITE, Thickness = thick or 1, Transparency = 0, ApplyStrokeMode = Enum.ApplyStrokeMode.Border, Parent = o })
		new("UIGradient", {
			Rotation = 125,
			Transparency = nseq(0, a, 0.3, math.min(a + 0.62, 0.96), 0.7, math.min(a + 0.7, 0.97), 1, math.min(a + 0.6, 0.96)),
			Parent = s,
		})
		return s
	end

	local function sheen(o, r, strength)
		local f = new("Frame", { Name = "Sheen", Size = UDim2.fromScale(1, 1), BackgroundColor3 = WHITE, BorderSizePixel = 0, ZIndex = 1, Parent = o })
		local c = corner(f, r)
		new("UIGradient", { Rotation = 90, Transparency = nseq(0, strength or 0.88, 0.45, 1, 1, 1), Parent = f })
		return f, c
	end

	local function hairline(o, a)
		return new("UIStroke", { Color = WHITE, Transparency = a or 0.9, Thickness = 1, ApplyStrokeMode = Enum.ApplyStrokeMode.Border, Parent = o })
	end

	local function label(parent, text, pos, size, font, tsize, colour, align, z)
		return new("TextLabel", { Position = pos, Size = size, BackgroundTransparency = 1, Text = text, Font = font, TextSize = tsize, TextColor3 = colour, TextXAlignment = align or Enum.TextXAlignment.Left, TextTruncate = Enum.TextTruncate.AtEnd, ZIndex = z or 1, Parent = parent })
	end

	local function textWidth(text, size, font)
		local ok, v = pcall(function() return TextService:GetTextSize(text, size, font, Vector2.new(2000, 200)).X end)
		return ok and v or (#text * size * 0.5)
	end

	local function clamp01(x)
		return math.clamp(x, 0, 1)
	end

	local function smooth(x)
		x = clamp01(x)
		return x * x * (3 - 2 * x)
	end

	U.swapGen, U.swapWant = setmetatable({}, { __mode = "k" }), setmetatable({}, { __mode = "k" })
	local function swapText(lbl, text, colour)
		if (U.swapWant[lbl] or lbl.Text) == text then
			if colour then tw(lbl, 0.2, { TextColor3 = colour }, Q.Quad) end
			return
		end
		local g = (U.swapGen[lbl] or 0) + 1
		U.swapGen[lbl] = g
		if lbl.Text == text then
			U.swapWant[lbl] = nil
			tw(lbl, 0.2, colour and { TextColor3 = colour, TextTransparency = 0 } or { TextTransparency = 0 }, Q.Quad)
			return
		end
		U.swapWant[lbl] = text
		tw(lbl, 0.09, { TextTransparency = 1 }, Q.Quad)
		task.delay(0.09, function()
			if U.swapGen[lbl] ~= g then return end
			U.swapWant[lbl] = nil
			lbl.Text = text
			if colour then lbl.TextColor3 = colour end
			tw(lbl, 0.2, { TextTransparency = 0 }, Q.Quad)
		end)
	end

	U.images = {}
	local function paint(w, h, fn)
		local ok, img = pcall(function()
			local ei = AssetService:CreateEditableImage({ Size = Vector2.new(w, h) })
			local buf = buffer.create(w * h * 4)
			for y = 0, h - 1 do
				for x = 0, w - 1 do
					local r, g, b, a = fn(x + 0.5, y + 0.5)
					local i = (y * w + x) * 4
					buffer.writeu8(buf, i, r)
					buffer.writeu8(buf, i + 1, g)
					buffer.writeu8(buf, i + 2, b)
					buffer.writeu8(buf, i + 3, a)
				end
			end
			ei:WritePixelsBuffer(Vector2.zero, ei.Size, buf)
			return ei
		end)
		if not (ok and img) then return nil end
		U.images[#U.images + 1] = img
		local okC, c = pcall(function() return Content.fromObject(img) end)
		return okC and c or nil
	end

	U.SOFT = paint(64, 64, function(x, y)
		local d = math.sqrt((x - 32) ^ 2 + (y - 32) ^ 2) - 16
		local a = d <= 0 and 1 or math.max(0, 1 - d / 16)
		return 255, 255, 255, math.floor(a * a * 255 + 0.5)
	end)

	U.GLOW = paint(96, 96, function(x, y)
		local d = math.sqrt((x - 48) ^ 2 + (y - 48) ^ 2) / 48
		local a = math.max(0, 1 - d)
		return 255, 255, 255, math.floor(a * a * a * 255 + 0.5)
	end)

	local function halo(parent, pos, size, r, colour, alpha, drop, z)
		if not U.SOFT then return nil end
		local pad = r
		return new("ImageLabel", {
			BackgroundTransparency = 1,
			Position = UDim2.new(pos.X.Scale, pos.X.Offset - pad, pos.Y.Scale, pos.Y.Offset - pad + (drop or 0)),
			Size = UDim2.new(size.X.Scale, size.X.Offset + pad * 2, size.Y.Scale, size.Y.Offset + pad * 2),
			ImageContent = U.SOFT,
			ImageColor3 = colour,
			ImageTransparency = alpha,
			ScaleType = Enum.ScaleType.Slice,
			SliceCenter = Rect.new(31, 31, 33, 33),
			SliceScale = r / 16,
			ZIndex = z or 0,
			Parent = parent,
		})
	end

	local function stick(parent, cx, cy, w, h, rot, colour, z)
		local f = new("Frame", { AnchorPoint = Vector2.new(0.5, 0.5), Position = UDim2.fromOffset(cx, cy), Size = UDim2.fromOffset(w, h), Rotation = rot, BackgroundColor3 = colour, BorderSizePixel = 0, ZIndex = z or 1, Parent = parent })
		round(f)
		return f
	end

	local function spinner(parent, size, colour, z)
		local f = new("Frame", { AnchorPoint = Vector2.new(0.5, 0.5), Position = UDim2.fromScale(0.5, 0.5), Size = UDim2.fromOffset(size, size), BackgroundTransparency = 1, Visible = false, ZIndex = z, Parent = parent })
		round(f)
		local st = new("UIStroke", { Color = colour, Thickness = 2, ApplyStrokeMode = Enum.ApplyStrokeMode.Border, Parent = f })
		new("UIGradient", { Transparency = nseq(0, 0, 0.45, 0.1, 0.75, 1, 1, 1), Parent = st })
		local o = { frame = f }
		function o.start()
			f.Visible = true
			if not o.tw then
				f.Rotation = 0
				o.tw = TweenService:Create(f, TweenInfo.new(0.7, Q.Linear, Q.In, -1), { Rotation = 360 })
				o.tw:Play()
			end
		end
		function o.stop()
			if o.tw then
				o.tw:Cancel()
				o.tw = nil
			end
			f.Visible = false
		end
		return o
	end

	local function mark(parent, size, kind, colour, th, z)
		local box = new("Frame", { AnchorPoint = Vector2.new(0.5, 0.5), Position = UDim2.fromScale(0.5, 0.5), Size = UDim2.fromOffset(size, size), BackgroundTransparency = 1, Visible = false, ZIndex = z, Parent = parent })
		local segs = kind == "check" and { { 0.2, 0.54, 0.42, 0.75 }, { 0.42, 0.75, 0.82, 0.3 } } or { { 0.27, 0.27, 0.73, 0.73 }, { 0.73, 0.27, 0.27, 0.73 } }
		local legs = {}
		for i = 1, 2 do
			legs[i] = new("Frame", { AnchorPoint = Vector2.new(0.5, 0.5), BackgroundColor3 = colour, BorderSizePixel = 0, Visible = false, ZIndex = z, Parent = box })
			round(legs[i])
		end
		local prog = new("NumberValue", { Value = 0, Parent = box })
		local function layout()
			local v = prog.Value
			for i = 1, 2 do
				local s, leg = segs[i], legs[i]
				local k = math.clamp(v - (i - 1), 0, 1)
				if k <= 0 then
					leg.Visible = false
				else
					local ax, ay = s[1] * size, s[2] * size
					local dx, dy = (s[3] - s[1]) * size, (s[4] - s[2]) * size
					local len = math.sqrt(dx * dx + dy * dy)
					local l = len * k
					leg.Visible = true
					leg.Position = UDim2.fromOffset(ax + dx / len * l / 2, ay + dy / len * l / 2)
					leg.Size = UDim2.fromOffset(l + th, th)
					leg.Rotation = math.deg(math.atan2(dy, dx))
				end
			end
		end
		prog.Changed:Connect(layout)
		local m = { box = box, legs = legs }
		function m.draw(delay)
			if m.tw then m.tw:Cancel() end
			box.Visible = true
			prog.Value = 0
			layout()
			m.tw = TweenService:Create(prog, TweenInfo.new(0.38, Q.Sine, Q.InOut, 0, false, delay or 0), { Value = 2 })
			m.tw:Play()
		end
		function m.hide()
			if m.tw then
				m.tw:Cancel()
				m.tw = nil
			end
			prog.Value = 0
			box.Visible = false
		end
		return m
	end

	local alive = true
	local closing = false
	U.handoff = false
	local busy = false
	local progressMode = "idle"
	U.conns = {}
	local function bind(signal, fn)
		local c = signal:Connect(fn)
		U.conns[#U.conns + 1] = c
		return c
	end

	local gui = new("ScreenGui", { Name = "RelayKey", ResetOnSpawn = false, ZIndexBehavior = Enum.ZIndexBehavior.Sibling, IgnoreGuiInset = true, DisplayOrder = 999 })
	pcall(function() gui.Parent = (gethui and gethui()) or game:GetService("CoreGui") end)
	if not gui.Parent then gui.Parent = LocalPlayer:WaitForChild("PlayerGui") end
	genv.RelayKeyGui = gui

	local blur = Instance.new("BlurEffect")
	blur.Name = "RelayKeyBlur"
	blur.Size = 0
	pcall(function() blur.Parent = Lighting end)

	U.jobs, U.stepConn = {}, nil
	gui.Destroying:Connect(function()
		alive = false
		for _, c in ipairs(U.conns) do pcall(function() c:Disconnect() end) end
		if U.stepConn then pcall(function() U.stepConn:Disconnect() end) end
		U.stepConn = nil
		table.clear(U.jobs)
		pcall(function() blur:Destroy() end)
		for _, img in ipairs(U.images) do pcall(function() img:Destroy() end) end
	end)

	local function stepAll(dt)
		local any = false
		for key, fn in pairs(U.jobs) do
			local ok, keep = pcall(fn, dt)
			if ok and keep then
				any = true
			else
				U.jobs[key] = nil
			end
		end
		if not any and U.stepConn then
			U.stepConn:Disconnect()
			U.stepConn = nil
		end
	end

	local function run(key, fn)
		if not alive then return end
		U.jobs[key] = fn
		if not U.stepConn then U.stepConn = RunService.RenderStepped:Connect(stepAll) end
	end

	U.dim = new("Frame", { Name = "Dim", Size = UDim2.fromScale(1, 1), BackgroundColor3 = WHITE, BackgroundTransparency = 1, BorderSizePixel = 0, ZIndex = 1, Parent = gui })
	new("UIGradient", { Color = ColorSequence.new(Color3.fromRGB(14, 14, 18), U.BLACK), Rotation = 90, Parent = U.dim })

	local function setBlur(want, t)
		tw(blur, t or 0.5, { Size = want and 16 or 0 }, Q.Quad)
		tw(U.dim, t or 0.5, { BackgroundTransparency = want and 0.6 or 1 }, Q.Quad)
	end

	local function viewport()
		local cam = workspace.CurrentCamera
		return cam and cam.ViewportSize or Vector2.new(1280, 720)
	end

	local island = new("Frame", { Name = "Island", AnchorPoint = Vector2.new(0.5, 0), Position = UDim2.new(0.5, 0, 0, ISL.Y), Size = UDim2.fromOffset(ISL.H, ISL.H), BackgroundColor3 = T.Tint, BackgroundTransparency = 0.22, BorderSizePixel = 0, ClipsDescendants = true, ZIndex = 50, Parent = gui })
	corner(island, ISL.H / 2)
	U.islandRim = rim(island, 0.16)
	U.islandSheen = sheen(island, ISL.H / 2, 0.82)
	U.islandScale = new("UIScale", { Scale = 0.4, Parent = island })

	local faces = {}
	local function makeFace()
		local g = new("CanvasGroup", { Size = UDim2.fromOffset(440, ISL.H), BackgroundTransparency = 1, GroupTransparency = 1, ZIndex = 3, Parent = island })
		local glyph = new("Frame", { AnchorPoint = Vector2.new(0.5, 0.5), Position = UDim2.fromOffset(22, ISL.H / 2), Size = UDim2.fromOffset(18, 18), BackgroundTransparency = 1, ZIndex = 4, Parent = g })
		local f = { group = g, glyph = glyph, scale = new("UIScale", { Parent = glyph }) }
		if logoImage ~= "" then
			f.logo = new("ImageLabel", { Size = UDim2.fromScale(1, 1), BackgroundTransparency = 1, Image = logoImage, ImageColor3 = ACCENT, ScaleType = Enum.ScaleType.Fit, ZIndex = 5, Parent = glyph })
		else
			f.logo = label(glyph, ">>", UDim2.new(), UDim2.fromScale(1, 1), F.H, 12, ACCENT, Enum.TextXAlignment.Center, 5)
		end
		f.spin = spinner(glyph, 15, ACCENT, 5)
		f.check = mark(glyph, 18, "check", GREEN, 2.2, 5)
		f.cross = mark(glyph, 18, "cross", RED, 2.2, 5)
		f.text = label(g, "", UDim2.fromOffset(39, 0), UDim2.new(0, 370, 1, 0), F.B, 13, TEXT, nil, 4)
		f.dot = new("Frame", { AnchorPoint = Vector2.new(0, 0.5), Size = UDim2.fromOffset(6, 6), BackgroundColor3 = supported and GREEN or DIM, BorderSizePixel = 0, Visible = false, ZIndex = 4, Parent = g })
		round(f.dot)
		return f
	end
	faces[1], faces[2] = makeFace(), makeFace()

	local IS = { gen = 0, fgen = 0, rgen = 0, face = 1, kind = nil, text = nil, w = ISL.H }
	U.ISLAND_TEXT = { err = Color3.fromRGB(255, 190, 190), ok = Color3.fromRGB(198, 242, 214) }

	local function islandShow(kind, text, hold)
		if not alive then return end
		IS.gen += 1
		local g = IS.gen
		if IS.kind ~= kind or IS.text ~= text then
			IS.kind, IS.text = kind, text
			IS.fgen += 1
			local fg = IS.fgen
			local old = faces[IS.face]
			IS.face = 3 - IS.face
			local f = faces[IS.face]
			local w = math.clamp(math.floor(39 + textWidth(text, 13, F.B) + (kind == "idle" and 32 or 18) + 0.5), ISL.W, 420)
			local grow = w > IS.w + 1
			IS.w = w
			tw(island, grow and 0.55 or 0.42, { Size = UDim2.fromOffset(w, ISL.H) }, grow and Q.Back or Q.Quint)
			tw(old.group, 0.12, { GroupTransparency = 1 }, Q.Quad)
			tw(old.scale, 0.12, { Scale = 0.6 }, Q.Quad)
			task.delay(0.14, function()
				if faces[IS.face] ~= old then
					old.spin.stop()
					old.check.hide()
					old.cross.hide()
				end
			end)
			f.text.Text = text
			f.text.TextColor3 = U.ISLAND_TEXT[kind] or TEXT
			f.logo.Visible = kind == "idle"
			f.dot.Visible = kind == "idle"
			f.dot.Position = UDim2.fromOffset(w - 20, ISL.H / 2)
			f.check.hide()
			f.cross.hide()
			if kind == "busy" then f.spin.start() else f.spin.stop() end
			f.group.Position = UDim2.fromOffset(0, 5)
			f.group.GroupTransparency = 1
			f.scale.Scale = 0.4
			task.delay(0.08, function()
				if IS.fgen ~= fg or not alive then return end
				tw(f.group, 0.3, { GroupTransparency = 0, Position = UDim2.fromOffset(0, 0) }, Q.Quad)
				tw(f.scale, 0.5, { Scale = 1 }, Q.Back)
				if kind == "ok" then f.check.draw(0.05) elseif kind == "err" then f.cross.draw(0.05) end
			end)
			local col = kind == "ok" and GREEN or kind == "err" and RED or nil
			IS.rgen += 1
			local rg = IS.rgen
			tw(U.islandRim, 0.25, { Color = col or WHITE }, Q.Quad)
			if col then
				task.delay(1.2, function()
					if IS.rgen == rg and alive then tw(U.islandRim, 0.6, { Color = WHITE }, Q.Quad) end
				end)
			end
		end
		if hold then
			task.delay(hold, function()
				if IS.gen == g and alive and not closing then islandShow("idle", "Relay") end
			end)
		end
	end

	local function shortName(n)
		n = tostring(n)
		local len = utf8.len(n)
		if len and len > 24 then
			local cut = utf8.offset(n, 23)
			if cut then return n:sub(1, cut - 1) .. "â¦" end
		end
		return n
	end

	local holder = new("Frame", { Name = "Card", AnchorPoint = Vector2.new(0.5, 0.5), Position = UDim2.fromScale(0.5, 0.5), Size = UDim2.fromOffset(W, H), BackgroundTransparency = 1, ZIndex = 10, Parent = gui })
	U.popScale = new("UIScale", { Scale = 0.1, Parent = holder })
	U.shaker = new("Frame", { Size = UDim2.fromScale(1, 1), BackgroundTransparency = 1, Parent = holder })
	U.cardShadow = halo(U.shaker, UDim2.new(), UDim2.fromScale(1, 1), 28, U.BLACK, 1, 12, 0)
	local body = new("Frame", { Name = "Body", Size = UDim2.fromScale(1, 1), BackgroundColor3 = T.Tint, BackgroundTransparency = 1, BorderSizePixel = 0, ZIndex = 1, Parent = U.shaker })
	U.bodyCorner = corner(body, 28)
	U.bodyRim = rim(body, 0.06, 1.2)
	U.bodySheen, U.bodySheenCorner = sheen(body, 28, 0.84)
	local light = new("CanvasGroup", { Size = UDim2.fromScale(1, 1), BackgroundTransparency = 1, GroupTransparency = 1, ZIndex = 2, Parent = body })
	U.lightCorner = corner(light, 28)
	U.orbs = {}
	if U.GLOW then
		for i, spec in ipairs({ { 420, -150, -190, 0.9 }, { 360, W - 210, H - 190, 0.93 } }) do
			U.orbs[i] = { img = new("ImageLabel", { Size = UDim2.fromOffset(spec[1], spec[1]), Position = UDim2.fromOffset(spec[2] - 30, spec[3] - 20), BackgroundTransparency = 1, ImageContent = U.GLOW, ImageColor3 = ACCENT, ImageTransparency = 1, ZIndex = 1, Parent = light }), x = spec[2], y = spec[3], a = spec[4] }
		end
	end
	U.cursorGlow = U.GLOW and new("ImageLabel", { AnchorPoint = Vector2.new(0.5, 0.5), Position = UDim2.fromOffset(W / 2, H / 2), Size = UDim2.fromOffset(440, 440), BackgroundTransparency = 1, ImageContent = U.GLOW, ImageColor3 = ACCENT, ImageTransparency = 1, ZIndex = 2, Parent = light }) or nil
	U.errTint = new("Frame", { Size = UDim2.fromScale(1, 1), BackgroundColor3 = RED, BackgroundTransparency = 1, BorderSizePixel = 0, ZIndex = 3, Parent = light })
	U.okTint = new("Frame", { Size = UDim2.fromScale(1, 1), BackgroundColor3 = GREEN, BackgroundTransparency = 1, BorderSizePixel = 0, ZIndex = 3, Parent = light })
	local content = new("CanvasGroup", { Name = "Content", Size = UDim2.fromScale(1, 1), BackgroundTransparency = 1, GroupTransparency = 1, ZIndex = 3, Parent = body })
	U.contentCorner = corner(content, 28)

	U.TOP = ISL.Y + ISL.H + 12
	U.dragOff = Vector2.zero
	local function fitScale()
		local vp = viewport()
		return math.clamp(math.min((vp.X - 24) / W, (vp.Y - U.TOP - 12) / H), 0.42, 1)
	end
	local function restLayout()
		local vp = viewport()
		local s = fitScale()
		local cy = math.max(vp.Y / 2, U.TOP + H * s / 2)
		return s, Vector2.new(vp.X / 2 + U.dragOff.X, cy + U.dragOff.Y)
	end
	local function place()
		local s, c = restLayout()
		U.popScale.Scale = s
		holder.Position = UDim2.fromOffset(c.X, c.Y)
	end

	local morph = { dir = "open", v = 1, v0 = 1, s0 = 1, c0 = Vector2.zero, active = false, id = 0 }
	local function render(v)
		morph.v = v
		local vp = viewport()
		local s0, c0 = morph.s0, morph.c0
		local ci = Vector2.new(vp.X / 2, ISL.Y + ISL.H / 2)
		local s = math.max(s0 + (ISL.H * 0.8 / H - s0) * v, 0.01)
		local c = c0 + (ci - c0) * v
		holder.Position = UDim2.fromOffset(c.X, c.Y)
		U.popScale.Scale = s
		local rs = 28 * s0 + (H * s / 2 - 28 * s0) * smooth(v / 0.7)
		local cr = UDim.new(0, math.min(rs / s, H / 2))
		U.bodyCorner.CornerRadius = cr
		U.bodySheenCorner.CornerRadius = cr
		U.lightCorner.CornerRadius = cr
		U.contentCorner.CornerRadius = cr
		local cf = smooth(v / 0.28)
		content.GroupTransparency = cf
		light.GroupTransparency = cf
		if U.cardShadow then U.cardShadow.ImageTransparency = 0.5 + 0.5 * clamp01(v / 0.24) end
		local d = smooth((v - 0.66) / 0.28)
		body.BackgroundTransparency = math.min(U.CLARITY + 0.16 * clamp01(v / 0.2) + (1 - U.CLARITY) * d, 1)
		U.bodyRim.Transparency = d
		U.bodySheen.BackgroundTransparency = d
		if v > 0.55 and v < 0.999 then
			U.islandScale.Scale = 1 + 0.07 * math.sin(math.pi * clamp01((v - 0.55) / 0.45))
		elseif U.islandScale.Scale ~= 1 and (v <= 0.55 or morph.dir == "close") then
			U.islandScale.Scale = 1
		end
	end

	U.drive = new("NumberValue", { Value = 0, Parent = holder })
	local function frameMorph()
		local t = U.drive.Value
		if morph.dir == "close" then
			render(morph.v0 + (1 - morph.v0) * (0.3 * t + 0.7 * smooth(t)))
		else
			render(morph.v0 * (1 - t) ^ 3)
		end
	end
	U.drive.Changed:Connect(frameMorph)

	U.islandPop = nil
	local function morphTo(dir, dur)
		if morph.tween then morph.tween:Cancel() end
		if U.islandPop then
			U.islandPop:Cancel()
			U.islandPop = nil
		end
		morph.dir, morph.v0, morph.active = dir, morph.v, true
		morph.s0, morph.c0 = restLayout()
		morph.id += 1
		local id = morph.id
		U.drive.Value = 0
		frameMorph()
		morph.tween = TweenService:Create(U.drive, TweenInfo.new(dur, Q.Linear), { Value = 1 })
		morph.tween:Play()
		task.delay(dur + 0.03, function()
			if morph.id == id then
				morph.active = false
				morph.tween = nil
				if dir == "open" and not closing and alive then place() end
			end
		end)
	end

	morph.s0, morph.c0 = restLayout()
	render(1)

	local sections = {}
	local function section(y, h)
		local sec = new("CanvasGroup", { Position = UDim2.fromOffset(0, y + 14), Size = UDim2.new(1, 0, 0, h), BackgroundTransparency = 1, GroupTransparency = 1, ZIndex = 2, Parent = content })
		sections[#sections + 1] = { frame = sec, y = y }
		return sec
	end

	local function press(btn, scale, rest)
		btn.MouseButton1Down:Connect(function() tw(scale, 0.1, { Scale = 0.97 }, Q.Quad) end)
		btn.MouseButton1Up:Connect(function() tw(scale, 0.45, { Scale = rest and rest() or 1 }, Q.Back) end)
		btn.MouseLeave:Connect(function() tw(scale, 0.3, { Scale = 1 }, Q.Back) end)
	end

	local header = section(0, 90)
	U.grabber = new("Frame", { AnchorPoint = Vector2.new(0.5, 0), Position = UDim2.new(0.5, 0, 0, 8), Size = UDim2.fromOffset(38, 5), BackgroundColor3 = WHITE, BackgroundTransparency = 0.86, BorderSizePixel = 0, Parent = header })
	round(U.grabber)
	U.logoBox = new("Frame", { Position = UDim2.fromOffset(24, 26), Size = UDim2.fromOffset(46, 46), BackgroundColor3 = WHITE, BackgroundTransparency = 0.93, BorderSizePixel = 0, Parent = header })
	round(U.logoBox)
	U.logoRim = rim(U.logoBox, 0.1)
	if logoImage ~= "" then
		local img = new("ImageLabel", { AnchorPoint = Vector2.new(0.5, 0.5), Position = UDim2.fromScale(0.5, 0.5), Size = UDim2.fromOffset(26, 26), BackgroundTransparency = 1, Image = logoImage, ScaleType = Enum.ScaleType.Fit, ImageColor3 = ACCENT, ZIndex = 2, Parent = U.logoBox })
		U.logoScale = new("UIScale", { Scale = 0.5, Parent = img })
	else
		local t = label(U.logoBox, ">>", UDim2.new(), UDim2.fromScale(1, 1), F.H, 18, ACCENT, Enum.TextXAlignment.Center, 2)
		U.logoScale = new("UIScale", { Scale = 0.5, Parent = t })
	end
	U.titleRow = new("Frame", { Position = UDim2.fromOffset(84, 26), Size = UDim2.new(1, -170, 0, 46), BackgroundTransparency = 1, Parent = header }, {
		new("UIListLayout", { FillDirection = Enum.FillDirection.Horizontal, VerticalAlignment = Enum.VerticalAlignment.Center, Padding = UDim.new(0, 12), SortOrder = Enum.SortOrder.LayoutOrder }),
	})
	U.title = new("TextLabel", { Size = UDim2.fromOffset(0, 34), AutomaticSize = Enum.AutomaticSize.X, BackgroundTransparency = 1, Text = "relay", Font = F.H, TextSize = 30, TextColor3 = TEXT, LayoutOrder = 1, Parent = U.titleRow })
	U.titleGrad = new("UIGradient", {
		Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, TEXT), ColorSequenceKeypoint.new(0.45, TEXT), ColorSequenceKeypoint.new(0.5, ACCENT), ColorSequenceKeypoint.new(0.55, TEXT), ColorSequenceKeypoint.new(1, TEXT) }),
		Offset = Vector2.new(-1, 0),
		Parent = U.title,
	})
	U.badge = new("Frame", { Size = UDim2.fromOffset(0, 26), AutomaticSize = Enum.AutomaticSize.X, BackgroundColor3 = ACCENT, BackgroundTransparency = 0.88, BorderSizePixel = 0, LayoutOrder = 2, Parent = U.titleRow }, {
		new("UIPadding", { PaddingLeft = UDim.new(0, 10), PaddingRight = UDim.new(0, 12) }),
		new("UIListLayout", { FillDirection = Enum.FillDirection.Horizontal, VerticalAlignment = Enum.VerticalAlignment.Center, Padding = UDim.new(0, 6), SortOrder = Enum.SortOrder.LayoutOrder }),
	})
	round(U.badge)
	new("UIStroke", { Color = ACCENT, Transparency = 0.6, Thickness = 1, ApplyStrokeMode = Enum.ApplyStrokeMode.Border, Parent = U.badge })
	U.badgeIcon = new("ImageLabel", { Size = UDim2.fromOffset(12, 12), BackgroundTransparency = 1, ImageColor3 = ACCENT, LayoutOrder = 1, Parent = U.badge })
	paintIcon(U.badgeIcon, "shield-check")
	U.badgeText = new("TextLabel", { Size = UDim2.fromOffset(0, 26), AutomaticSize = Enum.AutomaticSize.X, BackgroundTransparency = 1, Text = "KEY SYSTEM", Font = F.B, TextSize = 11, TextColor3 = ACCENT, LayoutOrder = 2, Parent = U.badge })
	U.badgeShimmer = new("UIGradient", {
		Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, ACCENT), ColorSequenceKeypoint.new(0.45, ACCENT), ColorSequenceKeypoint.new(0.5, WHITE), ColorSequenceKeypoint.new(0.55, ACCENT), ColorSequenceKeypoint.new(1, ACCENT) }),
		Offset = Vector2.new(-1, 0),
		Parent = U.badgeText,
	})
	local closeBtn = new("TextButton", { AnchorPoint = Vector2.new(0.5, 0.5), Position = UDim2.new(1, -41, 0, 49), Size = UDim2.fromOffset(34, 34), BackgroundColor3 = WHITE, BackgroundTransparency = 0.92, BorderSizePixel = 0, Text = "", AutoButtonColor = false, ZIndex = 3, Parent = header })
	round(closeBtn)
	U.closeStroke = hairline(closeBtn, 0.88)
	U.closeScale = new("UIScale", { Parent = closeBtn })
	U.closeXa = stick(closeBtn, 17, 17, 13, 1.8, 45, DIM, 4)
	U.closeXb = stick(closeBtn, 17, 17, 13, 1.8, -45, DIM, 4)

	U.divider = new("Frame", { Position = UDim2.fromOffset(24, 92), Size = UDim2.new(1, -48, 0, 1), BackgroundColor3 = WHITE, BackgroundTransparency = 1, BorderSizePixel = 0, ZIndex = 2, Parent = content })
	new("UIGradient", { Transparency = nseq(0, 1, 0.15, 0, 0.85, 0, 1, 1), Parent = U.divider })

	U.cardSec = section(104, 84)
	U.gameCard = new("Frame", { Position = UDim2.fromOffset(24, 3), Size = UDim2.new(1, -48, 0, 78), BackgroundColor3 = WHITE, BackgroundTransparency = 0.955, BorderSizePixel = 0, ClipsDescendants = true, Parent = U.cardSec })
	corner(U.gameCard, 20)
	U.gameCardRim = rim(U.gameCard, 0.55)
	U.cardSweep = new("Frame", { Size = UDim2.new(0, 110, 1, 0), Position = UDim2.new(0, -140, 0, 0), BackgroundColor3 = WHITE, BackgroundTransparency = 0.9, BorderSizePixel = 0, Parent = U.gameCard })
	new("UIGradient", { Transparency = nseq(0, 1, 0.5, 0, 1, 1), Parent = U.cardSweep })
	U.gameIcon = new("ImageLabel", { Position = UDim2.fromOffset(13, 13), Size = UDim2.fromOffset(52, 52), BackgroundColor3 = T.Raised, BorderSizePixel = 0, ScaleType = Enum.ScaleType.Crop, ZIndex = 2, Parent = U.gameCard })
	corner(U.gameIcon, 15)
	new("UIStroke", { Color = WHITE, Transparency = 0.86, Thickness = 1, Parent = U.gameIcon })
	U.gameIconScale = new("UIScale", { Scale = 0.6, Parent = U.gameIcon })
	task.spawn(function()
		local file = "Relay/gameicon_" .. tostring(game.GameId) .. ".png"
		local ok = pcall(function()
			if not (isfile and isfile(file)) then
				local res = game:HttpGet("https://thumbnails.roblox.com/v1/games/icons?universeIds=" .. tostring(game.GameId) .. "&size=150x150&format=Png")
				local url = res:match('"imageUrl":"([^"]+)"')
				if url and writefile then
					if makefolder and isfolder and not isfolder("Relay") then makefolder("Relay") end
					writefile(file, game:HttpGet(url))
				end
			end
			if getcustomasset and isfile and isfile(file) then U.gameIcon.Image = getcustomasset(file) end
		end)
		if not ok or U.gameIcon.Image == "" then
			pcall(function() U.gameIcon.Image = "rbxthumb://type=GameIcon&id=" .. tostring(game.PlaceId) .. "&w=150&h=150" end)
		end
	end)
	label(U.gameCard, "DETECTED GAME", UDim2.fromOffset(80, 14), UDim2.fromOffset(200, 12), F.B, 10, U.FAINT, nil, 2)
	U.gameName = label(U.gameCard, detectedName, UDim2.fromOffset(80, 28), UDim2.new(1, -210, 0, 22), F.B, 17, TEXT, nil, 2)
	U.supportRing = new("Frame", { AnchorPoint = Vector2.new(0.5, 0.5), Position = UDim2.fromOffset(84, 61), Size = UDim2.fromOffset(6, 6), BackgroundColor3 = supported and GREEN or DIM, BackgroundTransparency = 1, BorderSizePixel = 0, ZIndex = 2, Parent = U.gameCard })
	round(U.supportRing)
	U.supportDot = new("Frame", { AnchorPoint = Vector2.new(0.5, 0.5), Position = UDim2.fromOffset(84, 61), Size = UDim2.fromOffset(6, 6), BackgroundColor3 = supported and GREEN or DIM, BorderSizePixel = 0, ZIndex = 3, Parent = U.gameCard })
	round(U.supportDot)
	U.supportText = label(U.gameCard, supported and "Supported by Relay" or "Not supported yet", UDim2.fromOffset(94, 52), UDim2.fromOffset(240, 18), F.M, 13, supported and GREEN or DIM, nil, 2)
	U.execPill = new("Frame", { AnchorPoint = Vector2.new(1, 0.5), Position = UDim2.new(1, -14, 0.5, 0), Size = UDim2.fromOffset(110, 34), BackgroundColor3 = WHITE, BackgroundTransparency = 0.94, BorderSizePixel = 0, ZIndex = 2, Parent = U.gameCard })
	round(U.execPill)
	hairline(U.execPill, 0.9)
	icon(U.execPill, "cpu", 14, ACCENT, UDim2.fromOffset(13, 10))
	label(U.execPill, executorName(), UDim2.fromOffset(33, 0), UDim2.new(1, -42, 1, 0), F.B, 13, TEXT, nil, 3)

	local function pulseSupport()
		U.supportRing.Size = UDim2.fromOffset(6, 6)
		U.supportRing.BackgroundTransparency = 0.35
		TweenService:Create(U.supportRing, TweenInfo.new(1.1, Q.Quad, Q.Out, 2, false, 0.1), { Size = UDim2.fromOffset(20, 20), BackgroundTransparency = 1 }):Play()
	end

	local function paintSupport(sup)
		local c = sup and GREEN or DIM
		tw(U.supportDot, 0.3, { BackgroundColor3 = c }, Q.Quad)
		U.supportRing.BackgroundColor3 = c
		for _, f in ipairs(faces) do tw(f.dot, 0.3, { BackgroundColor3 = c }, Q.Quad) end
		pulseSupport()
	end

	U.keySec = section(198, 102)
	label(U.keySec, "LICENSE KEY", UDim2.fromOffset(26, 2), UDim2.fromOffset(200, 14), F.B, 10, DIM)
	local fieldGlow = halo(U.keySec, UDim2.fromOffset(24, 22), UDim2.new(1, -48, 0, 58), 20, ACCENT, 1, 0, 0)
	local field = new("Frame", { Position = UDim2.fromOffset(24, 22), Size = UDim2.new(1, -48, 0, 58), BackgroundColor3 = WHITE, BackgroundTransparency = 0.95, BorderSizePixel = 0, ZIndex = 1, Parent = U.keySec })
	corner(field, 20)
	local fieldStroke = new("UIStroke", { Color = WHITE, Transparency = 0.88, Thickness = 1.2, ApplyStrokeMode = Enum.ApplyStrokeMode.Border, Parent = field })
	U.fieldFx = new("CanvasGroup", { Size = UDim2.fromScale(1, 1), BackgroundTransparency = 1, ZIndex = 1, Parent = field })
	corner(U.fieldFx, 20)
	U.shimmer = new("Frame", { Size = UDim2.new(0.32, 0, 1, 0), Position = UDim2.new(-0.4, 0, 0, 0), BackgroundColor3 = WHITE, BackgroundTransparency = 0.88, BorderSizePixel = 0, Visible = false, Parent = U.fieldFx })
	new("UIGradient", { Transparency = nseq(0, 1, 0.5, 0, 1, 1), Rotation = 0, Parent = U.shimmer })
	local keyIcon = icon(field, "key-round", 16, DIM, UDim2.fromOffset(19, 21))
	keyIcon.ZIndex = 2
	U.keyIconScale = new("UIScale", { Parent = keyIcon })
	U.pasteW = getclipboard and 40 or 0
	local box = new("TextBox", { Position = UDim2.fromOffset(46, 0), Size = UDim2.new(1, -186 - U.pasteW, 1, 0), BackgroundTransparency = 1, Text = "", PlaceholderText = "Paste your Relay key", PlaceholderColor3 = U.FAINT, Font = F.M, TextSize = 15, TextColor3 = TEXT, TextXAlignment = Enum.TextXAlignment.Left, ClearTextOnFocus = false, ClipsDescendants = true, ZIndex = 2, Parent = field })
	if getclipboard then
		local pasteBtn = new("TextButton", { AnchorPoint = Vector2.new(1, 0.5), Position = UDim2.new(1, -140, 0.5, 0), Size = UDim2.fromOffset(32, 32), BackgroundColor3 = WHITE, BackgroundTransparency = 0.93, BorderSizePixel = 0, Text = "", AutoButtonColor = false, ZIndex = 2, Parent = field })
		round(pasteBtn)
		local pasteStroke = hairline(pasteBtn, 0.9)
		local pasteScale = new("UIScale", { Parent = pasteBtn })
		local pasteIcon = icon(pasteBtn, "clipboard-paste", 14, DIM, UDim2.fromOffset(9, 9))
		pasteIcon.ZIndex = 3
		pasteBtn.MouseEnter:Connect(function()
			tw(pasteIcon, 0.15, { ImageColor3 = ACCENT })
			tw(pasteStroke, 0.15, { Color = ACCENT, Transparency = 0.5 })
		end)
		pasteBtn.MouseLeave:Connect(function()
			tw(pasteIcon, 0.15, { ImageColor3 = DIM })
			tw(pasteStroke, 0.2, { Color = WHITE, Transparency = 0.9 })
		end)
		press(pasteBtn, pasteScale)
		pasteBtn.MouseButton1Click:Connect(function()
			local ok, clip = pcall(getclipboard)
			if ok and type(clip) == "string" and #clip > 0 then box.Text = clip:gsub("%s", "") end
		end)
	end
	local submit = new("TextButton", { AnchorPoint = Vector2.new(1, 0.5), Position = UDim2.new(1, -8, 0.5, 0), Size = UDim2.fromOffset(124, 42), BackgroundColor3 = ACCENT, BorderSizePixel = 0, Text = "", AutoButtonColor = false, ClipsDescendants = true, ZIndex = 2, Parent = field })
	round(submit)
	local submitScale = new("UIScale", { Parent = submit })
	new("UIGradient", { Color = ColorSequence.new(WHITE, Color3.fromRGB(205, 196, 183)), Rotation = 90, Parent = submit })
	U.shine = new("Frame", { Size = UDim2.new(0, 40, 1, 0), Position = UDim2.new(0, -60, 0, 0), BackgroundColor3 = WHITE, BackgroundTransparency = 0.55, BorderSizePixel = 0, Rotation = 18, ZIndex = 3, Parent = submit })
	new("UIGradient", { Transparency = nseq(0, 1, 0.5, 0, 1, 1), Parent = U.shine })
	U.submitText = label(submit, "Submit", UDim2.new(), UDim2.new(1, -26, 1, 0), F.B, 14, U.INK, Enum.TextXAlignment.Center, 4)
	U.submitGlyph = new("Frame", { AnchorPoint = Vector2.new(0.5, 0.5), Position = UDim2.new(1, -24, 0.5, 0), Size = UDim2.fromOffset(18, 18), BackgroundTransparency = 1, ZIndex = 4, Parent = submit })
	U.submitIcon = icon(U.submitGlyph, "arrow-right", 15, U.INK, UDim2.fromOffset(1.5, 1.5))
	U.submitIcon.ZIndex = 5
	U.submitSpin = spinner(U.submitGlyph, 15, U.INK, 5)
	U.submitCheck = mark(U.submitGlyph, 18, "check", U.INK, 2.2, 5)
	U.track = new("Frame", { Position = UDim2.fromOffset(42, 92), Size = UDim2.new(1, -84, 0, 2), BackgroundColor3 = WHITE, BackgroundTransparency = 0.93, BorderSizePixel = 0, ClipsDescendants = true, Parent = U.keySec })
	round(U.track)
	local bar = new("Frame", { Size = UDim2.fromScale(0, 1), Position = UDim2.fromScale(0.5, 0), BackgroundColor3 = ACCENT, BorderSizePixel = 0, Parent = U.track })
	round(bar)
	new("UIGradient", { Transparency = nseq(0, 1, 0.3, 0, 0.7, 0, 1, 1), Parent = bar })

	U.msgSec = section(306, 46)
	U.msgIcon = icon(U.msgSec, "lock", 13, DIM, UDim2.fromOffset(28, 3))
	U.msgIconScale = new("UIScale", { Parent = U.msgIcon })
	U.message = new("TextLabel", { Position = UDim2.fromOffset(49, 0), Size = UDim2.new(1, -78, 0, 40), BackgroundTransparency = 1, Text = "", Font = F.M, TextSize = 13, TextColor3 = DIM, TextXAlignment = Enum.TextXAlignment.Left, TextYAlignment = Enum.TextYAlignment.Top, TextWrapped = true, Parent = U.msgSec })

	U.btnSec = section(H - 70, 60)
	local function pillButton(x, w, iconName, text, filled)
		local bg, bgA = filled and ACCENT or WHITE, filled and 0.86 or 0.94
		local b = new("TextButton", { Position = UDim2.fromOffset(x, 8), Size = UDim2.fromOffset(w, 42), BackgroundColor3 = bg, BackgroundTransparency = bgA, BorderSizePixel = 0, Text = "", AutoButtonColor = false, Parent = U.btnSec })
		round(b)
		local st = new("UIStroke", { Color = filled and ACCENT or WHITE, Transparency = filled and 0.55 or 0.88, Thickness = 1, ApplyStrokeMode = Enum.ApplyStrokeMode.Border, Parent = b })
		local sc = new("UIScale", { Parent = b })
		local ic = icon(b, iconName, 15, filled and ACCENT or DIM, UDim2.fromOffset(16, 13.5))
		ic.ZIndex = 2
		local t = label(b, text, UDim2.fromOffset(39, 0), UDim2.new(1, -44, 1, 0), F.B, 13, TEXT, nil, 2)
		b.MouseEnter:Connect(function()
			tw(b, 0.22, { Position = UDim2.fromOffset(x, 5), BackgroundTransparency = bgA - 0.05 })
			tw(st, 0.22, { Color = ACCENT, Transparency = 0.35 })
			tw(ic, 0.22, { ImageColor3 = ACCENT })
		end)
		b.MouseLeave:Connect(function()
			tw(b, 0.25, { Position = UDim2.fromOffset(x, 8), BackgroundTransparency = bgA })
			tw(st, 0.25, { Color = filled and ACCENT or WHITE, Transparency = filled and 0.55 or 0.88 })
			tw(ic, 0.25, { ImageColor3 = filled and ACCENT or DIM })
		end)
		press(b, sc)
		return b, t
	end
	U.getKey, U.getKeyText = pillButton(24, 120, "sparkles", "Get a key", true)
	U.discordBtn, U.discordText = pillButton(154, 112, "message-circle", "Discord", false)
	U.siteBtn, U.siteText = pillButton(276, 112, "globe", "Website", false)
	U.storeBtn, U.storeText = pillButton(398, 138, "crown", "Skip ads", true)

	U.msgToken = 0
	local function setMessage(text, colour, iconName)
		U.msgToken += 1
		local mine = U.msgToken
		colour = colour or DIM
		U.message.Text = tostring(text)
		U.message.TextColor3 = colour
		tw(U.msgIcon, 0.2, { ImageColor3 = colour })
		paintIcon(U.msgIcon, iconName or (colour == RED and "circle-alert" or colour == GREEN and "circle-check" or "lock"))
		U.msgIconScale.Scale = 0.55
		tw(U.msgIconScale, 0.45, { Scale = 1 }, Q.Back)
		U.message.MaxVisibleGraphemes = 0
		task.spawn(function()
			local total = utf8.len(U.message.Text) or #U.message.Text
			local step = math.max(1, math.floor(total / 30))
			local shown = 0
			while shown < total and mine == U.msgToken and alive do
				shown = math.min(total, shown + step)
				U.message.MaxVisibleGraphemes = shown
				task.wait(0.014)
			end
			if mine == U.msgToken then U.message.MaxVisibleGraphemes = -1 end
		end)
	end

	local function flashTint(f, a, t)
		f.BackgroundTransparency = a
		tw(f, t, { BackgroundTransparency = 1 }, Q.Quad)
	end

	U.rimGen = 0
	local function flashRim(c, hold)
		U.rimGen += 1
		local g = U.rimGen
		tw(U.bodyRim, 0.25, { Color = c }, Q.Quad)
		task.delay(hold, function()
			if U.rimGen == g and alive then tw(U.bodyRim, 0.7, { Color = WHITE }, Q.Quad) end
		end)
	end

	U.ISLAND_STATUS = {
		CHECKING = { "busy", "Checking keyâ¦" },
		LOADED = { "ok", "Loaded" },
		["KEY REJECTED"] = { "err", "Key rejected", 4 },
		["KEY REQUIRED"] = { "err", "Game not supported", 4 },
		FAILED = { "err", "Couldn't start", 4 },
		["SCRIPT ERROR"] = { "err", "Script error", 4 },
		["SCRIPT DID NOT START"] = { "err", "Script didn't start", 4 },
	}

	local function setStatus(status, colour)
		local c = colour == RED and RED or colour == GREEN and GREEN or colour == ACCENT and ACCENT or WHITE
		tw(fieldStroke, 0.3, { Color = c, Transparency = (colour == RED or colour == GREEN) and 0.25 or colour == ACCENT and 0.5 or 0.88 })
		if status == "LOADING" then
			islandShow("ok", "Key valid")
			local g = IS.gen
			task.delay(0.85, function()
				if alive and not closing and IS.gen == g then islandShow("busy", "Loading " .. shortName(detectedName) .. "â¦") end
			end)
			return
		end
		if status == "LOADED" then
			U.handoff = true
			flashTint(U.okTint, 0.88, 0.9)
			flashRim(GREEN, 0.9)
		end
		local s = U.ISLAND_STATUS[status]
		if s then islandShow(s[1], s[2], s[3]) end
	end

	U.shakeV = new("NumberValue", { Value = 1, Parent = holder })
	U.shakeV.Changed:Connect(function()
		local t = U.shakeV.Value
		U.shaker.Position = UDim2.fromOffset(math.sin(t * math.pi * 7) * 13 * (1 - t) ^ 2, 0)
	end)
	U.shakeTw = nil
	local function shake()
		if U.shakeTw then U.shakeTw:Cancel() end
		U.shakeV.Value = 0
		U.shakeTw = TweenService:Create(U.shakeV, TweenInfo.new(0.55, Q.Linear), { Value = 1 })
		U.shakeTw:Play()
		fieldStroke.Color = RED
		fieldStroke.Transparency = 0.1
		tw(fieldStroke, 0.9, { Color = WHITE, Transparency = 0.88 }, Q.Quad)
		flashTint(U.errTint, 0.86, 0.8)
		flashRim(RED, 0.5)
		if fieldGlow then
			fieldGlow.ImageColor3 = RED
			fieldGlow.ImageTransparency = 0.72
			tw(fieldGlow, 0.9, { ImageTransparency = box:IsFocused() and 0.8 or 1 }, Q.Quad)
		end
	end

	U.busyLoops = {}
	local function stopBusy()
		for i = #U.busyLoops, 1, -1 do
			pcall(function() U.busyLoops[i]:Cancel() end)
			U.busyLoops[i] = nil
		end
		U.shimmer.Visible = false
	end
	local function startBusy()
		stopBusy()
		U.shimmer.Position = UDim2.new(-0.4, 0, 0, 0)
		U.shimmer.Visible = true
		bar.BackgroundColor3 = ACCENT
		bar.Size = UDim2.fromScale(0.35, 1)
		bar.Position = UDim2.fromScale(-0.35, 0)
		U.busyLoops[1] = TweenService:Create(U.shimmer, TweenInfo.new(1.15, Q.Quad, Q.InOut, -1, false, 0.15), { Position = UDim2.new(1.1, 0, 0, 0) })
		U.busyLoops[2] = TweenService:Create(bar, TweenInfo.new(1.1, Q.Linear, Q.In, -1), { Position = UDim2.fromScale(1, 0) })
		for _, l in ipairs(U.busyLoops) do l:Play() end
	end

	local function setButton(state, text)
		if state == "busy" then
			progressMode = "busy"
			swapText(U.submitText, text or "Checking")
			U.submitIcon.Visible = false
			U.submitCheck.hide()
			U.submitSpin.start()
			tw(submit, 0.2, { BackgroundColor3 = ACCENT })
			startBusy()
		elseif state == "done" then
			progressMode = "done"
			stopBusy()
			U.submitSpin.stop()
			U.submitIcon.Visible = false
			swapText(U.submitText, text or "Loaded")
			U.submitCheck.draw(0.05)
			tw(submit, 0.25, { BackgroundColor3 = GREEN })
			submitScale.Scale = 0.9
			tw(submitScale, 0.45, { Scale = 1 }, Q.Back)
			bar.BackgroundColor3 = GREEN
			tw(bar, 0.45, { Size = UDim2.fromScale(1, 1), Position = UDim2.fromScale(0, 0) })
		else
			progressMode = "idle"
			stopBusy()
			U.submitSpin.stop()
			U.submitCheck.hide()
			U.submitIcon.Visible = true
			paintIcon(U.submitIcon, "arrow-right")
			swapText(U.submitText, text or "Submit")
			tw(submit, 0.2, { BackgroundColor3 = ACCENT })
			bar.BackgroundColor3 = ACCENT
			if box:IsFocused() then
				tw(bar, 0.4, { Size = UDim2.fromScale(1, 1), Position = UDim2.fromScale(0, 0) })
			else
				tw(bar, 0.35, { Size = UDim2.fromScale(0, 1), Position = UDim2.fromScale(0.5, 0) })
			end
		end
	end

	local function closeUi(after)
		if closing then return end
		closing = true
		pcall(function() box:ReleaseFocus() end)
		stopBusy()
		setBlur(false, 0.6)
		local success = U.handoff
		if not success then islandShow("idle", "Relay") end
		if U.cursorGlow then tw(U.cursorGlow, 0.2, { ImageTransparency = 1 }, Q.Quad) end
		morphTo("close", 0.62)
		task.delay(0.62 + (success and 0.5 or 0.1), function()
			if gui.Parent then
				tw(U.islandScale, 0.32, { Scale = 0.55 }, Q.Quint, Q.In)
				tw(island, 0.28, { BackgroundTransparency = 1 }, Q.Quad)
				tw(U.islandRim, 0.28, { Transparency = 1 }, Q.Quad)
				tw(U.islandSheen, 0.28, { BackgroundTransparency = 1 }, Q.Quad)
				for _, f in ipairs(faces) do tw(f.group, 0.2, { GroupTransparency = 1 }, Q.Quad) end
			end
			task.delay(0.34, function()
				gui:Destroy()
				if after then after() end
			end)
		end)
	end

	closeBtn.MouseEnter:Connect(function()
		tw(closeBtn, 0.2, { BackgroundColor3 = RED, BackgroundTransparency = 0.82 })
		tw(U.closeStroke, 0.2, { Color = RED, Transparency = 0.5 })
		tw(U.closeXa, 0.2, { BackgroundColor3 = RED, Rotation = 135 })
		tw(U.closeXb, 0.2, { BackgroundColor3 = RED, Rotation = 45 })
	end)
	closeBtn.MouseLeave:Connect(function()
		tw(closeBtn, 0.25, { BackgroundColor3 = WHITE, BackgroundTransparency = 0.92 })
		tw(U.closeStroke, 0.25, { Color = WHITE, Transparency = 0.88 })
		tw(U.closeXa, 0.25, { BackgroundColor3 = DIM, Rotation = 45 })
		tw(U.closeXb, 0.25, { BackgroundColor3 = DIM, Rotation = -45 })
	end)
	press(closeBtn, U.closeScale)
	closeBtn.MouseButton1Click:Connect(function() closeUi() end)

	box.Focused:Connect(function()
		tw(fieldStroke, 0.2, { Color = ACCENT, Transparency = 0.35 })
		tw(field, 0.2, { BackgroundTransparency = 0.92 })
		tw(keyIcon, 0.2, { ImageColor3 = ACCENT })
		if fieldGlow then
			fieldGlow.ImageColor3 = ACCENT
			tw(fieldGlow, 0.35, { ImageTransparency = 0.8 }, Q.Quad)
		end
		if progressMode == "idle" then tw(bar, 0.45, { Size = UDim2.fromScale(1, 1), Position = UDim2.fromScale(0, 0) }) end
	end)
	box.FocusLost:Connect(function()
		tw(fieldStroke, 0.25, { Color = WHITE, Transparency = 0.88 })
		tw(field, 0.25, { BackgroundTransparency = 0.95 })
		tw(keyIcon, 0.25, { ImageColor3 = DIM })
		if fieldGlow then tw(fieldGlow, 0.35, { ImageTransparency = 1 }, Q.Quad) end
		if progressMode == "idle" then tw(bar, 0.35, { Size = UDim2.fromScale(0, 1), Position = UDim2.fromScale(0.5, 0) }) end
	end)
	bind(box:GetPropertyChangedSignal("Text"), function()
		if progressMode ~= "idle" then return end
		local n = #box.Text:gsub("%s", "")
		if n > 0 then
			U.keyIconScale.Scale = 1.14
			tw(U.keyIconScale, 0.3, { Scale = 1 }, Q.Back)
		end
	end)

	U.submitHot = false
	submit.MouseEnter:Connect(function()
		U.submitHot = true
		tw(submitScale, 0.25, { Scale = 1.03 }, Q.Back)
		U.shine.Position = UDim2.new(0, -60, 0, 0)
		tw(U.shine, 0.55, { Position = UDim2.new(1, 20, 0, 0) }, Q.Quad)
	end)
	submit.MouseLeave:Connect(function()
		U.submitHot = false
		tw(submitScale, 0.3, { Scale = 1 }, Q.Back)
	end)
	submit.MouseButton1Down:Connect(function() tw(submitScale, 0.1, { Scale = 0.97 }, Q.Quad) end)
	submit.MouseButton1Up:Connect(function() tw(submitScale, 0.45, { Scale = U.submitHot and 1.03 or 1 }, Q.Back) end)

	U.flashGen = setmetatable({}, { __mode = "k" })
	local function flash(lbl, text, orig)
		local g = (U.flashGen[lbl] or 0) + 1
		U.flashGen[lbl] = g
		swapText(lbl, text)
		task.delay(1.6, function()
			if alive and U.flashGen[lbl] == g then swapText(lbl, orig) end
		end)
	end
	local function islandFlash(text)
		if not busy and not closing then islandShow("ok", text, 2.2) end
	end
	U.getKey.MouseButton1Click:Connect(function()
		pcall(function() setclipboard(KeyUrl) end)
		flash(U.getKeyText, "Copied", "Get a key")
		setMessage("Key link copied. Open it in your browser to get a key.", GREEN, "link")
		islandFlash("Key link copied")
	end)
	U.discordBtn.MouseButton1Click:Connect(function()
		pcall(function() setclipboard("https://discord.gg/" .. DiscordInvite) end)
		if openDiscord(DiscordInvite) then
			flash(U.discordText, "Opening", "Discord")
			islandFlash("Opening Discord")
		else
			flash(U.discordText, "Copied", "Discord")
			islandFlash("Invite copied")
		end
	end)
	U.siteBtn.MouseButton1Click:Connect(function()
		local site = tostring(WebsiteLabel)
		if not site:match("^https?://") then site = "https://www." .. site:gsub("^www%.", "") end
		pcall(function() setclipboard(site) end)
		flash(U.siteText, "Copied", "Website")
		islandFlash("Website copied")
	end)
	U.storeBtn.MouseButton1Click:Connect(function()
		pcall(function() setclipboard(StoreUrl) end)
		flash(U.storeText, "Copied", "Skip ads")
		setMessage("Store link copied. Open it in your browser to skip the gateway.", GREEN, "link")
		islandFlash("Store link copied")
	end)

	U.lights = {}
	local function addLight(obj, stroke)
		local g = stroke and stroke:FindFirstChildOfClass("UIGradient")
		if g then U.lights[#U.lights + 1] = { gui = obj, grad = g, angle = g.Rotation } end
	end
	addLight(body, U.bodyRim)
	addLight(island, U.islandRim)
	addLight(U.gameCard, U.gameCardRim)
	addLight(U.logoBox, U.logoRim)

	U.glowPos, U.glowOn = Vector2.new(W / 2, H / 2), false
	local function lightStep(dt)
		local m = UserInputService:GetMouseLocation()
		local sp = gui.AbsolutePosition
		local a = 1 - math.exp(-dt * 10)
		local moving = false
		for i = #U.lights, 1, -1 do
			local L = U.lights[i]
			if not L.gui.Parent then
				table.remove(U.lights, i)
			else
				local p, z = L.gui.AbsolutePosition, L.gui.AbsoluteSize
				local goal = math.deg(math.atan2(p.Y - sp.Y + z.Y / 2 - m.Y, p.X - sp.X + z.X / 2 - m.X))
				local d = (goal - L.angle + 180) % 360 - 180
				if math.abs(d) > 0.4 then
					moving = true
					L.angle += d * a
				else
					L.angle += d
				end
				L.grad.Rotation = L.angle
			end
		end
		if U.cursorGlow then
			local s = math.max(U.popScale.Scale, 0.01)
			local bp = body.AbsolutePosition - sp
			local goal = Vector2.new((m.X - bp.X) / s, (m.Y - bp.Y) / s)
			local inside = goal.X > -30 and goal.Y > -30 and goal.X < W + 30 and goal.Y < H + 30 and not closing and not morph.active
			if inside ~= U.glowOn then
				U.glowOn = inside
				if inside then U.glowPos = goal end
				tw(U.cursorGlow, 0.35, { ImageTransparency = inside and 0.9 or 1 }, Q.Quad)
			end
			if inside then
				local delta = goal - U.glowPos
				if delta.Magnitude > 0.5 then
					moving = true
					U.glowPos += delta * a
				else
					U.glowPos = goal
				end
				U.cursorGlow.Position = UDim2.fromOffset(U.glowPos.X, U.glowPos.Y)
			end
		end
		return moving
	end
	bind(UserInputService.InputChanged, function(io)
		local t = io.UserInputType
		if t == Enum.UserInputType.MouseMovement or t == Enum.UserInputType.Touch then run("light", lightStep) end
	end)

	do
		local dragInput, dragStart, startOff
		header.InputBegan:Connect(function(io)
			local t = io.UserInputType
			if (t == Enum.UserInputType.MouseButton1 or t == Enum.UserInputType.Touch) and not morph.active and not closing then
				dragInput, dragStart, startOff = io, io.Position, U.dragOff
				tw(U.grabber, 0.25, { BackgroundTransparency = 0.6, Size = UDim2.fromOffset(48, 5) }, Q.Back)
			end
		end)
		bind(UserInputService.InputChanged, function(io)
			if not dragInput or closing or morph.active then return end
			local t = io.UserInputType
			local mine = (t == Enum.UserInputType.Touch and io == dragInput)
				or (t == Enum.UserInputType.MouseMovement and dragInput.UserInputType == Enum.UserInputType.MouseButton1)
			if mine then
				local d = io.Position - dragStart
				U.dragOff = Vector2.new(startOff.X + d.X, startOff.Y + d.Y)
				place()
			end
		end)
		bind(UserInputService.InputEnded, function(io)
			if not dragInput then return end
			if io == dragInput or (io.UserInputType == Enum.UserInputType.MouseButton1 and dragInput.UserInputType == Enum.UserInputType.MouseButton1) then
				dragInput = nil
				tw(U.grabber, 0.3, { BackgroundTransparency = 0.86, Size = UDim2.fromOffset(38, 5) })
			end
		end)
	end

	if workspace.CurrentCamera then
		bind(workspace.CurrentCamera:GetPropertyChangedSignal("ViewportSize"), function()
			if not closing and not morph.active then place() end
		end)
	end

	local function trySubmit()
		if busy then return end
		local k = box.Text:gsub("%s", "")
		if not validFormat(k) then
			shake()
			setMessage("That key is not in a valid format.", RED)
			islandShow("err", "Invalid key format", 4)
			return
		end
		if not supported and configReady then
			shake()
			setMessage("Relay does not support this game yet.", RED)
			islandShow("err", "Game not supported", 4)
			return
		end
		busy = true
		setButton("busy", "Checking")
		setMessage("Checking your key with Relay...", DIM, "shield-check")
		setStatus("CHECKING", ACCENT)
		task.spawn(function()
			if not supported then
				awaitConfig(8)
				detectedName, supported = gameInfo()
				if not supported then
					busy = false
					setButton("idle")
					setStatus("KEY REQUIRED", ACCENT)
					shake()
					setMessage("Relay does not support this game yet.", RED)
					return
				end
			end
			local valid, why, confirmed = checkKey(k)
			if not valid then
				busy = false
				setButton("idle")
				shake()
				setMessage(why or "That key was rejected.", RED)
				setStatus("KEY REJECTED", RED)
				return
			end
			setButton("busy", "Loading")
			setStatus("LOADING", ACCENT)
			setMessage("Key verified. Downloading " .. detectedName .. "...", ACCENT, "download")
			local before = currentLib()
			_G.RelayStatus = nil
			local ok, err = runLoader(k)
			if not ok then
				busy = false
				if confirmed then saveKey(k) end
				setButton("idle")
				shake()
				setMessage(err or "Could not start.", RED)
				setStatus("FAILED", RED)
				return
			end
			local state, failure = waitStart(before, 20)
			if state == "ok" then
				saveKey(k)
				setStatus("LOADED", GREEN)
				setButton("done", "Loaded")
				setMessage("Key accepted. Loading " .. detectedName .. "...", GREEN)
				task.wait(1)
				closeUi()
			elseif state == "error" then
				busy = false
				saveKey(k)
				setButton("idle")
				shake()
				setMessage("The script hit an error while starting: " .. tostring(failure):gsub("^ERROR:%s*", ""), RED)
				setStatus("SCRIPT ERROR", RED)
			elseif confirmed or genv.SNC_RUNNING then
				busy = false
				saveKey(k)
				setButton("idle")
				shake()
				setMessage("Key accepted, but the script did not start. Try again or ask support.", RED)
				setStatus("SCRIPT DID NOT START", RED)
			else
				busy = false
				clearKey()
				genv.key = nil
				_G.key = nil
				setButton("idle")
				shake()
				setMessage("That key was rejected. Use Get a key to grab a new one.", RED)
				setStatus("KEY REJECTED", RED)
			end
		end)
	end

	submit.MouseButton1Click:Connect(trySubmit)
	box.FocusLost:Connect(function(enter) if enter then trySubmit() end end)

	U.initialText, U.initialTextColour = "Your key is saved after the first successful load.", DIM
	if saved then box.Text = saved end
	if startupKind == "key" and saved then
		U.initialText, U.initialTextColour = "Your saved key did not work" .. (startupError and (": " .. tostring(startupError)) or ". Paste a new one."), RED
	elseif startupError then
		U.initialText, U.initialTextColour = tostring(startupError), RED
	end
	U.unsupportedText = "Relay does not have a script for this game yet. Check the Discord for the game list."
	if not supported and configReady then U.initialText, U.initialTextColour = U.unsupportedText, RED end

	local function startupTitle()
		if configReady and not supported then return "Game not supported" end
		if startupKind == "key" then return saved and "Saved key didn't work" or "Key rejected" end
		if startupKind == "error" then return "Script error" end
		if startupKind == "timeout" then return "Script didn't start" end
		return "Couldn't start"
	end

	task.spawn(function()
		awaitConfig(15)
		local t0 = os.clock()
		while not productReady and os.clock() - t0 < 10 do task.wait(0.1) end
		if not gui.Parent then return end
		local wasSupported = supported
		detectedName, supported = gameInfo()
		swapText(U.gameName, detectedName)
		paintSupport(supported)
		swapText(U.supportText, supported and "Supported by Relay" or "Not supported yet", supported and GREEN or DIM)
		if not supported then
			if not busy then
				setMessage(U.unsupportedText, RED)
				if not closing and IS.kind == "idle" then islandShow("err", "Game not supported", 4) end
			end
		elseif not wasSupported and not busy and not startupError then
			setMessage("Your key is saved after the first successful load.", DIM)
		end
	end)

	setBlur(true, 0.55)
	U.islandPop = tw(U.islandScale, 0.45, { Scale = 1 }, Q.Back)
	islandShow("idle", "Relay")
	task.delay(0.46, function()
		if alive and not closing then morphTo("open", 0.62) end
	end)
	for i, sec in ipairs(sections) do
		task.delay(0.62 + i * 0.07, function()
			if not alive or closing then return end
			tw(sec.frame, 0.55, { Position = UDim2.fromOffset(0, sec.y), GroupTransparency = 0 })
		end)
	end
	task.delay(0.7, function()
		if not alive or closing then return end
		tw(U.divider, 0.6, { BackgroundTransparency = 0.9 }, Q.Quad)
		for _, o in ipairs(U.orbs) do tw(o.img, 1.4, { ImageTransparency = o.a, Position = UDim2.fromOffset(o.x, o.y) }, Q.Quint) end
		tw(U.logoScale, 0.6, { Scale = 1 }, Q.Back)
	end)
	task.delay(0.85, function()
		if not alive or closing then return end
		tw(U.gameIconScale, 0.5, { Scale = 1 }, Q.Back)
		tw(U.cardSweep, 0.9, { Position = UDim2.new(1, 30, 0, 0) }, Q.Quad)
		tw(U.titleGrad, 1.1, { Offset = Vector2.new(1.6, 0) }, Q.Quad)
		pulseSupport()
		run("light", lightStep)
	end)
	task.delay(1.2, function()
		if not alive or closing then return end
		tw(U.badgeShimmer, 0.9, { Offset = Vector2.new(1.6, 0) }, Q.Quad)
	end)
	task.delay(0.7, function()
		if not alive or busy then return end
		if configReady and not supported then
			setMessage(U.unsupportedText, RED)
		else
			setMessage(U.initialText, U.initialTextColour)
		end
		if U.initialTextColour == RED or (configReady and not supported) then islandShow("err", startupTitle(), 4) end
	end)
end

relayLoaderUI()
