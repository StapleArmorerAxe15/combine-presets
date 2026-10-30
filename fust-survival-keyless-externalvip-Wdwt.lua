--[[
    external.vip | FREE BUILD
    Executor-style menu UI only
    No gameplay or exploit functionality

    RightShift = Toggle menu
]]

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local UIS = game:GetService("UserInputService")
local GuiService = game:GetService("GuiService")
local CoreGui = game:GetService("CoreGui")

local DISCORD = "https://discord.gg/P8fHzHSuXF"

local Theme = {
    Background = Color3.fromRGB(9, 12, 13),
    Sidebar = Color3.fromRGB(13, 17, 18),
    Panel = Color3.fromRGB(17, 22, 23),
    Panel2 = Color3.fromRGB(22, 29, 30),
    Border = Color3.fromRGB(38, 50, 52),
    Cyan = Color3.fromRGB(36, 184, 226),
    Pink = Color3.fromRGB(195, 117, 174),
    White = Color3.fromRGB(239, 244, 245),
    Text = Color3.fromRGB(180, 192, 194),
    Muted = Color3.fromRGB(108, 122, 124),
}

local function New(class, props, parent)
    local obj = Instance.new(class)
    for k, v in pairs(props or {}) do
        obj[k] = v
    end
    obj.Parent = parent
    return obj
end

local function Corner(obj, radius)
    New("UICorner", {
        CornerRadius = UDim.new(0, radius or 7)
    }, obj)
end

local function Stroke(obj, color, thickness)
    return New("UIStroke", {
        Color = color or Theme.Border,
        Thickness = thickness or 1,
    }, obj)
end

local function Label(parent, text, pos, size, fontSize, color, bold)
    return New("TextLabel", {
        Position = pos,
        Size = size,
        BackgroundTransparency = 1,
        Text = text,
        TextColor3 = color or Theme.Text,
        Font = bold and Enum.Font.GothamBold or Enum.Font.Gotham,
        TextSize = fontSize or 11,
        TextXAlignment = Enum.TextXAlignment.Left,
        TextYAlignment = Enum.TextYAlignment.Center,
        TextWrapped = true,
    }, parent)
end

local function Button(parent, text, pos, size)
    local b = New("TextButton", {
        Position = pos,
        Size = size,
        BackgroundColor3 = Theme.Panel2,
        BorderSizePixel = 0,
        Text = text,
        TextColor3 = Theme.White,
        Font = Enum.Font.GothamBold,
        TextSize = 10,
        AutoButtonColor = false,
    }, parent)

    Corner(b, 6)
    Stroke(b, Theme.Cyan, 1)

    b.MouseEnter:Connect(function()
        TweenService:Create(b, TweenInfo.new(0.15), {
            BackgroundColor3 = Color3.fromRGB(27, 48, 53)
        }):Play()
    end)

    b.MouseLeave:Connect(function()
        TweenService:Create(b, TweenInfo.new(0.15), {
            BackgroundColor3 = Theme.Panel2
        }):Play()
    end)

    return b
end

-- Clean up previous copy
local parent = CoreGui
pcall(function()
    if gethui then
        parent = gethui()
    end
end)

local old = parent:FindFirstChild("external_vip_free")
if old then
    old:Destroy()
end

local ScreenGui = New("ScreenGui", {
    Name = "external_vip_free",
    ResetOnSpawn = false,
    IgnoreGuiInset = true,
    ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
}, parent)

-- Main window
local Main = New("Frame", {
    Name = "Main",
    Size = UDim2.fromOffset(820, 530),
    Position = UDim2.new(0.5, -410, 0.5, -265),
    BackgroundColor3 = Theme.Background,
    BorderSizePixel = 0,
    ClipsDescendants = true,
}, ScreenGui)

Corner(Main, 9)
Stroke(Main, Theme.Cyan, 1.5)

-- Sidebar
local Sidebar = New("Frame", {
    Size = UDim2.new(0, 195, 1, 0),
    BackgroundColor3 = Theme.Sidebar,
    BorderSizePixel = 0,
}, Main)

New("Frame", {
    Position = UDim2.new(1, -1, 0, 0),
    Size = UDim2.new(0, 1, 1, 0),
    BackgroundColor3 = Theme.Border,
    BorderSizePixel = 0,
}, Sidebar)

local Logo = New("Frame", {
    Position = UDim2.fromOffset(14, 17),
    Size = UDim2.fromOffset(38, 38),
    BackgroundColor3 = Theme.Panel2,
    BorderSizePixel = 0,
}, Sidebar)

Corner(Logo, 7)
Stroke(Logo, Theme.Cyan, 1)

local LogoText = Label(
    Logo, "e",
    UDim2.fromScale(0, 0),
    UDim2.fromScale(1, 1),
    24, Theme.Cyan, true
)
LogoText.TextXAlignment = Enum.TextXAlignment.Center

Label(Sidebar, "external.vip",
    UDim2.fromOffset(61, 17),
    UDim2.fromOffset(120, 22),
    15, Theme.White, true)

Label(Sidebar, "FREE PUBLIC BUILD",
    UDim2.fromOffset(62, 39),
    UDim2.fromOffset(120, 15),
    8, Theme.Cyan, true)

local Nav = New("Frame", {
    Position = UDim2.fromOffset(11, 83),
    Size = UDim2.new(1, -22, 0, 200),
    BackgroundTransparency = 1,
}, Sidebar)

New("UIListLayout", {
    Padding = UDim.new(0, 5),
    SortOrder = Enum.SortOrder.LayoutOrder,
}, Nav)

-- Page container
local Content = New("Frame", {
    Position = UDim2.fromOffset(195, 0),
    Size = UDim2.new(1, -195, 1, 0),
    BackgroundTransparency = 1,
}, Main)

Label(Content, "FREE BUILD",
    UDim2.fromOffset(20, 13),
    UDim2.new(1, -40, 0, 27),
    19, Theme.White, true)

Label(Content, "Feature previews are locked in this version.",
    UDim2.fromOffset(20, 41),
    UDim2.new(1, -40, 0, 18),
    10, Theme.Muted)

local PageHolder = New("Frame", {
    Position = UDim2.fromOffset(20, 72),
    Size = UDim2.new(1, -40, 1, -92),
    BackgroundTransparency = 1,
    ClipsDescendants = true,
}, Content)

local Pages = {}
local NavButtons = {}

local function CreatePage(name)
    local page = New("ScrollingFrame", {
        Name = name,
        Size = UDim2.fromScale(1, 1),
        BackgroundTransparency = 1,
        BorderSizePixel = 0,
        ScrollBarThickness = 3,
        ScrollBarImageColor3 = Theme.Cyan,
        AutomaticCanvasSize = Enum.AutomaticSize.Y,
        CanvasSize = UDim2.new(),
        Visible = false,
    }, PageHolder)

    New("UIListLayout", {
        Padding = UDim.new(0, 10),
        SortOrder = Enum.SortOrder.LayoutOrder,
    }, page)

    New("UIPadding", {
        PaddingRight = UDim.new(0, 4),
        PaddingBottom = UDim.new(0, 8),
    }, page)

    Pages[name] = page
    return page
end

local function SelectPage(name)
    for pageName, page in pairs(Pages) do
        page.Visible = pageName == name
    end

    for navName, b in pairs(NavButtons) do
        b.BackgroundColor3 =
            navName == name and Theme.Panel2 or Theme.Sidebar

        b.TextColor3 =
            navName == name and Theme.Cyan or Theme.Muted
    end
end

local function AddNav(name, symbol)
    local b = New("TextButton", {
        Name = name,
        Size = UDim2.new(1, 0, 0, 34),
        BackgroundColor3 = Theme.Sidebar,
        BorderSizePixel = 0,
        Text = "   " .. symbol .. "    " .. name,
        TextColor3 = Theme.Muted,
        TextSize = 11,
        Font = Enum.Font.GothamMedium,
        TextXAlignment = Enum.TextXAlignment.Left,
        AutoButtonColor = false,
    }, Nav)

    Corner(b, 5)
    NavButtons[name] = b

    b.MouseButton1Click:Connect(function()
        SelectPage(name)
    end)
end

local function AddSection(parent, title, subtitle)
    local card = New("Frame", {
        Size = UDim2.new(1, -2, 0, 65),
        BackgroundColor3 = Theme.Panel,
        BorderSizePixel = 0,
    }, parent)

    Corner(card, 7)
    Stroke(card, Theme.Border, 1)

    New("Frame", {
        Size = UDim2.new(0, 3, 1, 0),
        BackgroundColor3 = Theme.Cyan,
        BorderSizePixel = 0,
    }, card)

    Label(card, title,
        UDim2.fromOffset(13, 8),
        UDim2.new(1, -25, 0, 20),
        11, Theme.White, true)

    Label(card, subtitle,
        UDim2.fromOffset(13, 30),
        UDim2.new(1, -25, 0, 26),
        9, Theme.Muted)

    return card
end

local function AddLockedCard(parent, title, description)
    local card = New("Frame", {
        Size = UDim2.new(1, -2, 0, 67),
        BackgroundColor3 = Theme.Panel,
        BorderSizePixel = 0,
    }, parent)

    Corner(card, 7)
    Stroke(card, Theme.Border, 1)

    local lock = New("Frame", {
        Position = UDim2.fromOffset(10, 13),
        Size = UDim2.fromOffset(39, 39),
        BackgroundColor3 = Theme.Panel2,
        BorderSizePixel = 0,
    }, card)

    Corner(lock, 6)

    Label(lock, "LOCK",
        UDim2.fromScale(0, 0),
        UDim2.fromScale(1, 1),
        9, Theme.Cyan, true).TextXAlignment =
        Enum.TextXAlignment.Center

    Label(card, title,
        UDim2.fromOffset(59, 10),
        UDim2.new(1, -155, 0, 20),
        11, Theme.White, true)

    Label(card, description,
        UDim2.fromOffset(59, 32),
        UDim2.new(1, -155, 0, 22),
        9, Theme.Muted)

    local tag = Label(card, "FULL BUILD",
        UDim2.new(1, -91, 0, 20),
        UDim2.fromOffset(80, 25),
        8, Theme.Pink, true)

    tag.TextXAlignment = Enum.TextXAlignment.Center
    tag.BackgroundTransparency = 0
    tag.BackgroundColor3 = Color3.fromRGB(43, 28, 40)
    Corner(tag, 4)

    -- Intentionally no feature functionality.
end

local Home = CreatePage("Home")
local Features = CreatePage("Features")
local Visuals = CreatePage("Visuals")
local Settings = CreatePage("Settings")

AddNav("Home", "⌂")
AddNav("Features", "◇")
AddNav("Visuals", "◈")
AddNav("Settings", "⚙")

-- Home
AddSection(Home, "WELCOME TO external.vip",
    "A preview of the free-build interface.")

local Promo = New("Frame", {
    Size = UDim2.new(1, -2, 0, 180),
    BackgroundColor3 = Theme.Panel,
    BorderSizePixel = 0,
}, Home)

Corner(Promo, 8)
Stroke(Promo, Theme.Cyan, 1)

Label(Promo, "GET THE FULL VERSION FREE",
    UDim2.fromOffset(14, 12),
    UDim2.new(1, -28, 0, 24),
    15, Theme.Cyan, true)

Label(Promo,
    "The full build is available through our Discord.\n"
    .. "Join the server for the full version.\n\n"
    .. "All features in this free preview are disabled.",
    UDim2.fromOffset(14, 41),
    UDim2.new(1, -28, 0, 67),
    10, Theme.Text)

local Join = Button(Promo, "JOIN DISCORD TO GET THE FULL VERSION",
    UDim2.fromOffset(14, 125),
    UDim2.new(1, -28, 0, 37))

Join.MouseButton1Click:Connect(function()
    pcall(function()
        if setclipboard then
            setclipboard(DISCORD)
        end
    end)

    pcall(function()
        GuiService:OpenBrowserWindow(DISCORD)
    end)
end)

AddSection(Home, "FREE VERSION",
    "Preview the UI. Full features are shown as locked.")

AddLockedCard(Home, "Silent Aim",
    "Available in the full-version feature list.")

-- Features
AddSection(Features, "FEATURE PREVIEW",
    "Visual-only cards. Nothing is enabled.")

AddLockedCard(Features, "Silent Aim", "Full-version preview")
AddLockedCard(Features, "Player ESP", "Full-version preview")
AddLockedCard(Features, "Weapon ESP", "Full-version preview")
AddLockedCard(Features, "World Visuals", "Full-version preview")
AddLockedCard(Features, "Customization", "Full-version preview")

-- Visuals
AddSection(Visuals, "VISUALS",
    "Example categories from the full build.")

AddLockedCard(Visuals, "Player Highlights", "Full-version preview")
AddLockedCard(Visuals, "World Tint", "Full-version preview")
AddLockedCard(Visuals, "Neon Effects", "Full-version preview")

-- Settings
AddSection(Settings, "SETTINGS",
    "Preview settings categories.")

AddLockedCard(Settings, "Theme Options", "Visual-only preview")
AddLockedCard(Settings, "Interface Effects", "Visual-only preview")

local SettingsJoin = Button(Settings,
    "JOIN DISCORD  →",
    UDim2.new(), UDim2.new(1, -2, 0, 38))

SettingsJoin.MouseButton1Click:Connect(function()
    pcall(function()
        GuiService:OpenBrowserWindow(DISCORD)
    end)
end)

-- Footer
local Footer = New("Frame", {
    AnchorPoint = Vector2.new(0, 1),
    Position = UDim2.new(0, 11, 1, -12),
    Size = UDim2.new(1, -22, 0, 56),
    BackgroundColor3 = Theme.Panel,
    BorderSizePixel = 0,
}, Sidebar)

Corner(Footer, 6)
Stroke(Footer, Theme.Border, 1)

Label(Footer, "FREE BUILD",
    UDim2.fromOffset(9, 5),
    UDim2.new(1, -18, 0, 17),
    9, Theme.Cyan, true)

Label(Footer, "Join Discord for full version",
    UDim2.fromOffset(9, 25),
    UDim2.new(1, -18, 0, 18),
    8, Theme.Text)

-- Drag from sidebar
local dragging = false
local dragStart
local startPosition

Sidebar.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = true
        dragStart = input.Position
        startPosition = Main.Position
    end
end)

UIS.InputChanged:Connect(function(input)
    if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
        local delta = input.Position - dragStart

        Main.Position = UDim2.new(
            startPosition.X.Scale,
            startPosition.X.Offset + delta.X,
            startPosition.Y.Scale,
            startPosition.Y.Offset + delta.Y
        )
    end
end)

UIS.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = false
    end
end)

-- RightShift toggles menu visibility
UIS.InputBegan:Connect(function(input, processed)
    if not processed and input.KeyCode == Enum.KeyCode.RightShift then
        ScreenGui.Enabled = not ScreenGui.Enabled
    end
end)

SelectPage("Home")
print("[external.vip] Free UII loaded.")