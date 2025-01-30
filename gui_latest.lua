local library = {}

function library:CreateWindow(name)
    function randomString(leng, seed)
        local array = {}

        for i = 0, leng do
            local leNumberPlus = (math.floor((i * 256)))
            math.randomseed(seed + leNumberPlus)
            array[i] = string.char(math.random(33, 126))
        end

        return table.concat(array)
    end

    local ImpostorGui = Instance.new("ScreenGui")
    local Background = Instance.new("Frame")
    local DeleteGui = Instance.new("TextButton")
    local DeleteGuiCorners = Instance.new("UICorner")
    local HideGui = Instance.new("TextButton")
    local HideGuiCorners = Instance.new("UICorner")
    local Title = Instance.new("Frame")
    local EmptynessGui = Instance.new("TextLabel")
    local Line = Instance.new("Frame")
    local NextPage = Instance.new("TextButton")
    local PrevPage = Instance.new("TextButton")
    local Pages = Instance.new("Frame")
    local UIPageLayout = Instance.new("UIPageLayout")


    ImpostorGui.Name = randomString(10, 0)
    ImpostorGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

    Background.Name = randomString(10, 1)
    Background.Parent = ImpostorGui
    Background.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    Background.BorderSizePixel = 2
    Background.Position = UDim2.new(0.0606601238, 0, 0.0904204398, 0)
    Background.Size = UDim2.new(0, 520, 0, 350)
    Background.ZIndex = -1

    DeleteGui.Name = randomString(10, 2)
    DeleteGui.Parent = Background
    DeleteGui.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    DeleteGui.BackgroundTransparency = 0.850
    DeleteGui.BorderColor3 = Color3.fromRGB(0, 0, 0)
    DeleteGui.BorderSizePixel = 0
    DeleteGui.Position = UDim2.new(0.917784631, 0, 0.0457142852, 0)
    DeleteGui.Selectable = false
    DeleteGui.Size = UDim2.new(0, 22, 0, 22)
    DeleteGui.Font = Enum.Font.Ubuntu
    DeleteGui.Text = ""
    DeleteGui.TextColor3 = Color3.fromRGB(255, 255, 255)
    DeleteGui.TextSize = 50.000
    DeleteGui.TextWrapped = true

    DeleteGuiCorners.CornerRadius = UDim.new(2, 8)
    DeleteGuiCorners.Name = randomString(10, 3)
    DeleteGuiCorners.Parent = DeleteGui

    HideGui.Name = randomString(10, 4)
    HideGui.Parent = Background
    HideGui.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    HideGui.BackgroundTransparency = 0.850
    HideGui.BorderColor3 = Color3.fromRGB(0, 0, 0)
    HideGui.BorderSizePixel = 0
    HideGui.Position = UDim2.new(0.859846115, 0, 0.0454285741, 0)
    HideGui.Size = UDim2.new(0, 22, 0, 22)
    HideGui.Font = Enum.Font.Ubuntu
    HideGui.Text = ""
    HideGui.TextColor3 = Color3.fromRGB(255, 255, 255)
    HideGui.TextSize = 35.000
    HideGui.TextWrapped = true

    HideGuiCorners.CornerRadius = UDim.new(2, 8)
    HideGuiCorners.Name = randomString(10, 5)
    HideGuiCorners.Parent = HideGui

    Title.Name = randomString(10, 6)
    Title.Parent = Background
    Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Title.BackgroundTransparency = 0.850
    Title.BorderColor3 = Color3.fromRGB(255, 0, 0)
    Title.BorderSizePixel = 0
    Title.Size = UDim2.new(0, 520, 0, 55)

    EmptynessGui.Name = randomString(10, 7)
    EmptynessGui.Parent = Title
    EmptynessGui.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    EmptynessGui.BackgroundTransparency = 1.000
    EmptynessGui.BorderColor3 = Color3.fromRGB(0, 0, 0)
    EmptynessGui.BorderSizePixel = 0
    EmptynessGui.Size = UDim2.new(0, 419, 0, 55)
    EmptynessGui.Font = Enum.Font.Ubuntu
    EmptynessGui.Text = "Emptyness UI"
    EmptynessGui.TextSize = 40.000
    EmptynessGui.TextWrapped = true

    Line.Name = randomString(10, 8)
    Line.Parent = Title
    Line.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    Line.BorderSizePixel = 2
    Line.Position = UDim2.new(0, 0, -0.00285705575, 0)
    Line.Size = UDim2.new(0, 520, 0, 55)
    Line.ZIndex = 0

    NextPage.Name = randomString(10, 9)
    NextPage.Parent = Background
    NextPage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    NextPage.BackgroundTransparency = 0.850
    NextPage.BorderColor3 = Color3.fromRGB(255, 255, 255)
    NextPage.Position = UDim2.new(0.655846179, 0, 0.885285676, 0)
    NextPage.Selectable = false
    NextPage.Size = UDim2.new(0, 22, 0, 22)
    NextPage.Font = Enum.Font.Ubuntu
    NextPage.Text = ">"
    NextPage.TextColor3 = Color3.fromRGB(255, 255, 0)
    NextPage.TextSize = 16.000
    NextPage.TextWrapped = true

    PrevPage.Name = randomString(10, 10)
    PrevPage.Parent = Background
    PrevPage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    PrevPage.BackgroundTransparency = 0.850
    PrevPage.BorderColor3 = Color3.fromRGB(255, 255, 255)
    PrevPage.Position = UDim2.new(0.301076919, 0, 0.885285676, 0)
    PrevPage.Selectable = false
    PrevPage.Size = UDim2.new(0, 22, 0, 22)
    PrevPage.Font = Enum.Font.Ubuntu
    PrevPage.Text = "<"
    PrevPage.TextColor3 = Color3.fromRGB(255, 255, 0)
    PrevPage.TextSize = 16.000
    PrevPage.TextWrapped = true

    Pages.Name = randomString(10, 11)
    Pages.Parent = Background
    Pages.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Pages.BackgroundTransparency = 1.000
    Pages.ClipsDescendants = true
    Pages.Size = UDim2.new(0, 521, 0, 350)

    UIPageLayout.Parent = Pages
    UIPageLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIPageLayout.EasingStyle = Enum.EasingStyle.Exponential

    local function JJAV_fake_script()
        local script = Instance.new("LocalScript", Background)

        local frame = script.Parent
        local mouse = game:GetService("Players").LocalPlayer:GetMouse()

        local keybind = "q"

        mouse.KeyDown:connect(
            function(key)
                key = key:lower()
                if key == keybind then
                    frame.Visible = not frame.Visible
                end
            end
        )

        print("Current keybind is:", keybind)
    end
    coroutine.wrap(JJAV_fake_script)()
    local function FCVY_fake_script()
        local script = Instance.new("LocalScript", Background)

        local UserInputService = game:GetService("UserInputService")

        local gui = script.Parent

        local dragging
        local dragInput
        local dragStart
        local startPos

        local function update(input)
            local delta = input.Position - dragStart
            gui.Position =
                UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
        end

        gui.InputBegan:Connect(
            function(input)
                if
                    input.UserInputType == Enum.UserInputType.MouseButton1 or
                        input.UserInputType == Enum.UserInputType.Touch
                 then
                    dragging = true
                    dragStart = input.Position
                    startPos = gui.Position

                    input.Changed:Connect(
                        function()
                            if input.UserInputState == Enum.UserInputState.End then
                                dragging = false
                            end
                        end
                    )
                end
            end
        )

        gui.InputChanged:Connect(
            function(input)
                if
                    input.UserInputType == Enum.UserInputType.MouseMovement or
                        input.UserInputType == Enum.UserInputType.Touch
                 then
                    dragInput = input
                end
            end
        )

        UserInputService.InputChanged:Connect(
            function(input)
                if input == dragInput and dragging then
                    update(input)
                end
            end
        )
    end
    coroutine.wrap(FCVY_fake_script)()
    local function YOSQZU_fake_script()
        local script = Instance.new("LocalScript", DeleteGui)

        buttonDelete = script.Parent

        buttonDelete.MouseEnter:Connect(
            function()
                buttonDelete.BackgroundTransparency = 0.0
                buttonDelete.BackgroundColor3 = Color3.new(255, 0, 0)
            end
        )

        buttonDelete.MouseLeave:Connect(
            function()
                buttonDelete.BackgroundTransparency = 0.85
                buttonDelete.BackgroundColor3 = Color3.new(255, 255, 255)
            end
        )
    end
    coroutine.wrap(YOSQZU_fake_script)()
    local function PTMQ_fake_script()
        local script = Instance.new("LocalScript", HideGui)

        buttonHide = script.Parent

        buttonHide.MouseEnter:Connect(
            function()
                buttonHide.BackgroundTransparency = 0.0
                buttonHide.BackgroundColor3 = Color3.new(255, 255, 0)
            end
        )

        buttonHide.MouseLeave:Connect(
            function()
                buttonHide.BackgroundTransparency = 0.85
                buttonHide.BackgroundColor3 = Color3.new(255, 255, 255)
            end
        )
    end
    coroutine.wrap(PTMQ_fake_script)()
    local function JDKM_fake_script()
        local script = Instance.new("LocalScript", ImpostorGui)

        local pageLayout = script.Parent[randomString(10, 1)][randomString(10, 11)].UIPageLayout
        local nextButton = script.Parent[randomString(10, 1)][randomString(10, 9)]
        local prevButton = script.Parent[randomString(10, 1)][randomString(10, 10)]

        nextButton.MouseButton1Click:Connect(
            function()
                pageLayout:Next()
            end
        )

        prevButton.MouseButton1Click:Connect(
            function()
                pageLayout:Previous()
            end
        )
    end
    coroutine.wrap(JDKM_fake_script)()
    DeleteGui.MouseButton1Click:Connect(
        function()
            game.Players.LocalPlayer.PlayerGui[randomString(10, 0)]:Destroy()
        end
    )
    HideGui.MouseButton1Click:Connect(
        function()
            if game.Players.LocalPlayer.PlayerGui[randomString(10, 0)][randomString(10, 1)].Visible == true then
                game.Players.LocalPlayer.PlayerGui[randomString(10, 0)][randomString(10, 1)].Visible = false
            else
                game.Players.LocalPlayer.PlayerGui[randomString(10, 0)][randomString(10, 1)].Visible = true
            end
        end
    )

    nameXX = "Created by %q"
    name = string.format(nameXX, name)

    game.StarterGui:SetCore(
        "SendNotification",
        {
            Title = "NotyGui",
            Text = name,
            Icon = "rbxassetid://8136342519",
            Duration = 5
        }
    )

    function library:Page(pagename)
        local Buttons = Instance.new("Frame")
        local UIGridLayout = Instance.new("UIGridLayout")
        local Page = Instance.new("Frame")
        local PageText = Instance.new("TextLabel")

        Page.Name = pagename
        Page.Parent = Pages
        Page.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        Page.BackgroundTransparency = 1.000
        Page.BorderColor3 = Color3.fromRGB(255, 0, 0)
        Page.BorderSizePixel = 2
        Page.Position = UDim2.new(-0.000878337771, 0, -0.00100813061, 0)
        Page.Size = UDim2.new(0, 520, 0, 350)
        Page.ZIndex = -1

        nameX = "Page %s"

        PageText.Name = pagename
        PageText.Parent = Page
        PageText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        PageText.BackgroundTransparency = 0.850
        PageText.BorderColor3 = Color3.fromRGB(255, 255, 255)
        PageText.Position = UDim2.new(0.117307693, 124, 0.886722386, 0)
        PageText.Size = UDim2.new(0, 150, 0, 22)
        PageText.Font = Enum.Font.Ubuntu
        pagename = string.format(nameX, pagename)
        PageText.Text = pagename
        PageText.TextColor3 = Color3.fromRGB(255, 255, 0)
        PageText.TextSize = 14.000

        Buttons.Name = randomString(10, 14)
        Buttons.Parent = Page
        Buttons.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Buttons.BackgroundTransparency = 1.000
        Buttons.BorderSizePixel = 0
        Buttons.Position = UDim2.new(0.0540000312, 0, 0.200000003, 0)
        Buttons.Size = UDim2.new(0, 462, 0, 220)

        UIGridLayout.Parent = Buttons
        UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
        UIGridLayout.CellSize = UDim2.new(0, 150, 0, 50)

        function library:Button(text, callback)
            local callback = callback or function()
                end
            local TextButton = Instance.new("TextButton")

            TextButton.Parent = Buttons
            TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextButton.BackgroundTransparency = 0.850
            TextButton.BorderColor3 = Color3.fromRGB(255, 255, 255)
            TextButton.Position = UDim2.new(0.0134615386, 0, 0.0304053854, 0)
            TextButton.Size = UDim2.new(0, 150, 0, 50)
            TextButton.Font = Enum.Font.Ubuntu
            TextButton.Text = text
            TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
            TextButton.TextSize = 16.000

            TextButton.MouseButton1Click:Connect(
                function()
                    pcall(callback)
                end
            )
        end
    end

    function TypingTitle()
        spawn(
            function()
                while true do --to do: for loop
                    i = 0
                    wait(timer)
                    while i == 0 do
                        EmptynessGui.Text = ""
                        wait(0.05 * 10)
                        i = i + 1
                    end
                    while i == 1 do
                        EmptynessGui.Text = "E"
                        wait(0.05 * 10)
                        i = i + 1
                    end
                    while i == 2 do
                        EmptynessGui.Text = "Em"
                        wait(0.05 * 10)
                        i = i + 1
                    end
                    while i == 3 do
                        EmptynessGui.Text = "Emp"
                        wait(0.05 * 10)
                        i = i + 1
                    end
                    while i == 4 do
                        EmptynessGui.Text = "Empt"
                        wait(0.05 * 10)
                        i = i + 1
                    end
                    while i == 5 do
                        EmptynessGui.Text = "Empty"
                        wait(0.05 * 10)
                        i = i + 1
                    end
                    while i == 6 do
                        EmptynessGui.Text = "Emptyn"
                        wait(0.05 * 10)
                        i = i + 1
                    end
                    while i == 7 do
                        EmptynessGui.Text = "Emptyne"
                        wait(0.05 * 10)
                        i = i + 1
                    end
                    while i == 8 do
                        EmptynessGui.Text = "Emptynes"
                        wait(0.05 * 10)
                        i = i + 1
                    end
                    while i == 9 do
                        EmptynessGui.Text = "Emptyness"
                        wait(0.05 * 10)
                        i = i + 1
                    end
                    while i == 10 do
                        EmptynessGui.Text = "Emptyness U"
                        wait(0.05 * 10)
                        i = i + 1
                    end
                    while i == 11 do
                        EmptynessGui.Text = "Emptyness UI"
                        wait(0.05 * 100)
                        i = i + 1
                    end
                    while i == 12 do
                        EmptynessGui.Text = "Emptyness U"
                        wait(0.05 * 10)
                        i = i + 1
                    end
                    while i == 13 do
                        EmptynessGui.Text = "Emptyness"
                        wait(0.05 * 10)
                        i = i + 1
                    end
                    while i == 14 do
                        EmptynessGui.Text = "Emptynes"
                        wait(0.05 * 10)
                        i = i + 1
                    end
                    while i == 15 do
                        EmptynessGui.Text = "Emptyne"
                        wait(0.05 * 10)
                        i = i + 1
                    end
                    while i == 16 do
                        EmptynessGui.Text = "Emptyn"
                        wait(0.05 * 10)
                        i = i + 1
                    end
                    while i == 17 do
                        EmptynessGui.Text = "Empty"
                        wait(0.05 * 10)
                        i = i + 1
                    end
                    while i == 18 do
                        EmptynessGui.Text = "Empt"
                        wait(0.05 * 10)
                        i = i + 1
                    end
                    while i == 19 do
                        EmptynessGui.Text = "Emp"
                        wait(0.05 * 10)
                        i = i + 1
                    end
                    while i == 20 do
                        EmptynessGui.Text = "Em"
                        wait(0.05 * 10)
                        i = i + 1
                    end
                    while i == 21 do
                        EmptynessGui.Text = "E"
                        wait(0.05 * 10)
                        i = i + 1
                    end
                    while i == 22 do
                        EmptynessGui.Text = ""
                        wait(0.05 * 10)
                        i = i + 1
                    end
                    if i == 23 then
                        i = 0
                    end
                end
            end
        )
    end
    top = 255
    function SuperRGB()
        spawn(
            function()
                while true do --i think the rgb is kind fucked but i dont really care
                    wait(0.05)

                    for i = 0, top, 1 do
                        local aShauShinBlisikt69 = Color3.new(i / top, 0 / top, 0 / top)
                        EmptynessGui.TextColor3 = aShauShinBlisikt69
                        Line.BorderColor3 = aShauShinBlisikt69
                        Background.BorderColor3 = aShauShinBlisikt69
                        wait(0.05)
                    end

                    for i = 0, top, 1 do
                        local bShauShinBlisikt69 = Color3.new(top / top, i / top, 0 / top)
                        EmptynessGui.TextColor3 = bShauShinBlisikt69
                        Line.BorderColor3 = bShauShinBlisikt69
                        Background.BorderColor3 = bShauShinBlisikt69
                        wait(0.05)
                    end

                    for i = 0, top, 1 do
                        local cShauShinBlisikt69 = Color3.new(top / top, top / top, i / top)
                        EmptynessGui.TextColor3 = cShauShinBlisikt69
                        Line.BorderColor3 = cShauShinBlisikt69
                        Background.BorderColor3 = cShauShinBlisikt69
                        wait(0.05)
                    end

                    for i = top, 0, -1 do
                        local dShauShinBlisikt69 = Color3.new(i / top, top / top, top / top)
                        EmptynessGui.TextColor3 = dShauShinBlisikt69
                        Line.BorderColor3 = dShauShinBlisikt69
                        Background.BorderColor3 = dShauShinBlisikt69
                        wait(0.05)
                    end

                    for i = top, 0, -1 do
                        local eShauShinBlisikt69 = Color3.new(0 / top, i / top, top / top)
                        EmptynessGui.TextColor3 = eShauShinBlisikt69
                        Line.BorderColor3 = eShauShinBlisikt69
                        Background.BorderColor3 = eShauShinBlisikt69
                        wait(0.05)
                    end

                    for i = top, 0, -1 do
                        local fShauShinBlisikt69 = Color3.new(0 / top, 0 / top, i / top)
                        EmptynessGui.TextColor3 = fShauShinBlisikt69
                        Line.BorderColor3 = fShauShinBlisikt69
                        Background.BorderColor3 = fShauShinBlisikt69
                        wait(0.05)
                    end
                end
            end
        )
    end

    SuperRGB()
    TypingTitle()
end

local remoteKey = ""

local gGC = getgc()
for i = 1, #gGC do
    local v = gGC[i]
    if (debug.getinfo(v).name == "shoot") then
        remoteKey = debug.getupvalue(v, 21)
        break
    end
end

local Mouse = game:GetService("Players").LocalPlayer:GetMouse()

library:CreateWindow("_nullThe!Reaper")

library:Page("69")

library:Button(
    "Infinite Stamina",
    function()
        playerLocal = game.Players.LocalPlayer
        game.Workspace.Criminals[playerLocal.Name].Stamina.Value = 2 ^ 60
    end
)

library:Button(
    "Force Equip Mask",
    function()
        game:GetService("ReplicatedStorage").RS_Package.Assets.Remotes.MaskOn:FireServer()
    end
)

library:Button(
    "Respawn",
    function()
        game.Players.LocalPlayer.Character.Humanoid.Name = 1
        local l = game.Players.LocalPlayer.Character["1"]:Clone()
        l.Parent = game.Players.LocalPlayer.Character
        l.Name = "Humanoid"
        wait()
        game.Players.LocalPlayer.Character["1"]:Destroy()
        game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
        game.Players.LocalPlayer.Character.Animate.Disabled = true
        wait()
        game.Players.LocalPlayer.Character.Animate.Disabled = false
        game.Players.LocalPlayer.Character.Humanoid.DisplayDistanceType = "None"
        wait()
        local prt = Instance.new("Model", workspace)
        Instance.new("Part", prt).Name = "Torso"
        Instance.new("Part", prt).Name = "Head"
        Instance.new("Humanoid", prt).Name = "Humanoid"
        game.Players.LocalPlayer.Character = prt
    end
)

library:Button(
    "TP Bags To Car",
    function()
        for _, v in pairs(game.Workspace.Bags:GetChildren()) do
            v:MoveTo(game.Workspace.BagSecuredArea.FloorPart.Position)
        end
    end
)

library:Button(
    "TP Bags To Self",
    function()
        for _, v in pairs(game.Workspace.Bags:GetChildren()) do
            v:MoveTo(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
        end
    end
)

library:Button(
    "CTRL TP",
    function()
        Mouse.Button1Down:connect(
            function()
                if not game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftControl) then
                    return
                end
                if not Mouse.Target then
                    return
                end
                game.Players.LocalPlayer.Character:MoveTo(Mouse.Hit.p)
            end
        )
	end
)

library:Button(
    "Infinite Jump",
    function()
        game:GetService("UserInputService").JumpRequest:connect(
            function()
                    game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):ChangeState("Jumping")
            end
        )
    end
)

library:Button(
    "Noclip",
    function()
        noclip = false
        game:GetService("RunService").Stepped:connect(
            function()
                if noclip then
                    game.Players.LocalPlayer.Character.Head.CanCollide = false
                    game.Players.LocalPlayer.Character.Torso.CanCollide = false
                end
            end
        )
        plr = game.Players.LocalPlayer
        mouse = plr:GetMouse()
        mouse.KeyDown:connect(
            function(key)
                key = string.lower(key)
                if key == "e" then
                    noclip = not noclip
                    game.Players.LocalPlayer.Character.Head.CanCollide = true
                    game.Players.LocalPlayer.Character.Torso.CanCollide = true
                end
            end
        )
    end
)

library:Button(
    "Force Vote Reset",
    function()
        game:GetService("ReplicatedStorage").RS_Package.Remotes.VoteReset:FireServer()
    end
)

library:Button(
    "Get BodyBags",
    function()
        playerLocal = game.Players.LocalPlayer
        game.Workspace.Criminals[playerLocal.Name].BodyBags.Value = 1
    end
)

library:Button(
    "Get CableTies",
    function()
        playerLocal = game.Players.LocalPlayer
        game.Workspace.Criminals[playerLocal.Name].CableTies.Value = 1
    end
)

library:Button(
    "TP Cards - SR",
    function()
        for i, v in pairs(game.Workspace.Map:GetChildren()) do
            if v.Name == "KeyCard" then
                game.Players.LocalPlayer.Character:MoveTo(v.KeyCard.Position)
            end
        end
    end
)

library:Page("Sus")

library:Button(
    "Instant interactions",
    function()
	
	
	
        local mt = getrawmetatable(game)
        local oldNamecall = mt.__namecall
        setreadonly(mt, false)
        mt.__namecall =
            newcclosure(
            function(self, ...)
                if getnamecallmethod() == "FireServer" and self.Name == "StartInteraction" then
                    return oldNamecall(
                        game.GetService(game, "ReplicatedStorage").RS_Package.Remotes.CompleteInteraction,
                        ...
                    )
                end

                return oldNamecall(self, ...)
            end
        )
        setreadonly(mt, true)
		
		
		
		
    end
)

library:Button(
    "ESP",
    function()
        for i, v in pairs(game.Workspace.Police:GetChildren()) do
            for i, l in pairs(v:GetChildren()) do
                if l:IsA("Part") and not l:FindFirstChild("Chams") then
                    local Box = Instance.new("BoxHandleAdornment", l)
                    Box.Size = l.Size
                    Box.Name = "Chams"
                    Box.Color3 = Color3.new(1, 0, 0)
                    Box.Adornee = l
                    Box.AlwaysOnTop = true
                    Box.ZIndex = 5
                    Box.Transparency = .5
                end
            end
        end
        for i, v in pairs(game.Workspace.Cameras:GetChildren()) do
            for i, l in pairs(v:GetChildren()) do
                if l:IsA("MeshPart") and not l:FindFirstChild("Chams") then
                    local Box = Instance.new("BoxHandleAdornment", l)
                    Box.Size = l.Size
                    Box.Name = "Chams"
                    Box.Color3 = Color3.new(0, 0, 1)
                    Box.Adornee = l
                    Box.AlwaysOnTop = true
                    Box.ZIndex = 5
                    Box.Transparency = .5
                end
            end
        end
        for i, v in pairs(game.Workspace.Citizens:GetChildren()) do
            for i, l in pairs(v:GetChildren()) do
                if l:IsA("Part") and not l:FindFirstChild("Chams") then
                    local Box = Instance.new("BoxHandleAdornment", l)
                    Box.Size = l.Size
                    Box.Name = "Chams"
                    Box.Color3 = Color3.new(1, 1, 1)
                    Box.Adornee = l
                    Box.AlwaysOnTop = true
                    Box.ZIndex = 5
                    Box.Transparency = .5
                end
            end
        end

        for i, v in pairs(game.Workspace.SafeSpots:GetChildren()) do
            for i, l in pairs(v:GetChildren()) do
                if l:IsA("Part") or l:IsA("UnionOperation") and not l:FindFirstChild("Chams") then
                    local Box = Instance.new("BoxHandleAdornment", l)
                    Box.Size = l.Size
                    Box.Name = "Chams"
                    Box.Color3 = Color3.new(0, 1, 0)
                    Box.Adornee = l
                    Box.AlwaysOnTop = true
                    Box.ZIndex = 5
                    Box.Transparency = .5
                end
            end
        end

        for i, v in pairs(game.Workspace.Lootables:GetChildren()) do
            for i, l in pairs(v:GetChildren()) do
                if l:IsA("Part") or l:IsA("UnionOperation") and not l:FindFirstChild("Chams") then
                    local Box = Instance.new("BoxHandleAdornment", l)
                    Box.Size = l.Size
                    Box.Name = "Chams"
                    Box.Color3 = Color3.new(0, 1, 0)
                    Box.Adornee = l
                    Box.AlwaysOnTop = true
                    Box.ZIndex = 5
                    Box.Transparency = .5
                end
            end
        end

        if game.Workspace:FindFirstChild("BigLoot") then
            for i, v in pairs(game.Workspace.BigLoot:GetChildren()) do
                for i, l in pairs(v:GetChildren()) do
                    if l:IsA("Part") or l:IsA("UnionOperation") and not l:FindFirstChild("Chams") then
                        local Box = Instance.new("BoxHandleAdornment", l)
                        Box.Size = l.Size
                        Box.Name = "Chams"
                        Box.Color3 = Color3.new(0, 1, 0)
                        Box.Adornee = l
                        Box.AlwaysOnTop = true
                        Box.ZIndex = 5
                        Box.Transparency = .5
                    end
                end
            end
        else
            for i, v in pairs(game.Workspace:GetChildren()) do
                if
                    v.Name == "DepositGoldBar" or v.Name == "DepositMoney" or v.Name == "DepositMoneyStack" or
                        v.Name == "DepositRing"
                 then
                    for i, l in pairs(v:GetChildren()) do
                        if l:IsA("Part") and not l:FindFirstChild("Chams") then
                            local Box = Instance.new("BoxHandleAdornment", l)
                            Box.Size = l.Size
                            Box.Name = "Chams"
                            Box.Color3 = Color3.new(0, 1, 0)
                            Box.Adornee = l
                            Box.AlwaysOnTop = true
                            Box.ZIndex = 5
                            Box.Transparency = .5
                        end
                    end
                end
            end
        end

        for i, v in pairs(game.Workspace.Map:GetChildren()) do
            if v.Name == "MilitaryCrateTimed" or v.Name == "OpenMilitaryCrate" or v.Name == "MilitaryCrateUntimed" then
                for i, l in pairs(v:GetChildren()) do
                    if l:IsA("Part") and not l:FindFirstChild("Chams") then
                        local Box = Instance.new("BoxHandleAdornment", l)
                        Box.Size = l.Size
                        Box.Name = "Chams"
                        Box.Color3 = Color3.new(0, 1, 0)
                        Box.Adornee = l
                        Box.AlwaysOnTop = true
                        Box.ZIndex = 5
                        Box.Transparency = .5
                    end
                end
            end
        end

        for i, v in pairs(game.Workspace.RandomLoot:GetChildren()) do
            if v.Name == "DepositGoldBar" or v.Name == "DepositMoneyStack" then
                for i, l in pairs(v:GetChildren()) do
                    if l:IsA("Part") and not l:FindFirstChild("Chams") then
                        local Box = Instance.new("BoxHandleAdornment", l)
                        Box.Size = l.Size
                        Box.Name = "Chams"
                        Box.Color3 = Color3.new(0, 1, 0)
                        Box.Adornee = l
                        Box.AlwaysOnTop = true
                        Box.ZIndex = 5
                        Box.Transparency = .5
                    end
                end
            end
        end

        for i, v in pairs(game.Workspace.Map.Houses:GetChildren()) do
            for i, l in pairs(v.doorBell:GetChildren()) do
                if b.IsA("Part") and not l:FindFirstChild("Chams") then
                    local Box = Instance.new("BoxHandleAdornment", l)
                    Box.Size = l.Size
                    Box.Name = "Chams"
                    Box.Color3 = Color3.new(0, 1, 0)
                    Box.Adornee = l
                    Box.AlwaysOnTop = true
                    Box.ZIndex = 5
                    Box.Transparency = .5
                end
            end
        end
        for i, v in pairs(game.Workspace.Map:GetChildren()) do
            for i, l in pairs(v.doorBell:GetChildren()) do
                if b.IsA("Part") and not l:FindFirstChild("Chams") then
                    local Box = Instance.new("BoxHandleAdornment", l)
                    Box.Size = l.Size
                    Box.Name = "Chams"
                    Box.Color3 = Color3.new(0, 1, 0)
                    Box.Adornee = l
                    Box.AlwaysOnTop = true
                    Box.ZIndex = 5
                    Box.Transparency = .5
                end
            end
        end
    end
)

library:Button( --not working, will (not) prob update
    "WIP Aimbot",
    function()
    end
)

library:Button(
    "Infinite Damage",
    function()
        for i, v in pairs(getgc(true)) do
            if typeof(v) == "table" and rawget(v, "Damage") then
                v.Damage = 999999999
            end
        end
    end
)

library:Button(
    "WalkSpeed++",
    function()
        local mt = getrawmetatable(game)
        local oldIndex = mt.__newindex

        setreadonly(mt, false)

        mt.__newindex =
            newcclosure(
            function(o, k, v)
                if tostring(o) == "Humanoid" and tostring(k) == "WalkSpeed" then
                    return oldIndex(o, k, 60)
                end

                return oldIndex(o, k, v)
            end
        )
        setreadonly(mt, true)
    end
)

library:Button(
    "JumpPower++",
    function()
        print("This changes gravity, not jumpower itself")
        game.Workspace.Gravity = 20
    end
)

library:Button(
    "Zero G",
    function()
        game.Workspace.Gravity = 0
    end
)

library:Button(
    "Show Hitboxes",
    function()
        settings():GetService("RenderSettings").ShowBoundingBoxes = true
    end
)

library:Button(
    "CTRL Delete",
    function()
        Mouse.Button1Down:connect(
            function()
                if not game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftControl) then
                    return
                end
                if not Mouse.Target then
                    return
                end
                Mouse.Target:Destroy()
            end
        )
    end
)

library:Button(
    "Interact Aura",
    function()
        for i, v in pairs(game.Workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") then
                local args = {
                    [1] = v
                }

                game:GetService("ReplicatedStorage").RS_Package.Remotes.StartInteraction:FireServer(unpack(args))
                game:GetService("ReplicatedStorage").RS_Package.Remotes.CompleteInteraction:FireServer(unpack(args))
            end
        end
    end
)

library:Button( --not working, will (not) prob update
    "Kill Police",
    function()
    end
)

library:Button( --idk but this probably also doesnt work, will (not) prob update
    "Hit Cams",
    function()
    end
)

library:Page("Page")

library:Button( --not working, will (not) prob update
"Loop Kill Police",
function()
      end)

library:Button( --not working, will (not) prob update
    "Loop Yell Citizens",
    function()
    end
)

library:Button(
    "Delete Bodies",
    function()
        game.Workspace.Bodies:Destroy()
    end
)

library:Button(
    "Asnwer pagers",
    function()
        print("Bruh imagine you click delete bodies and then click answer pagers")
        print(
            'Also ur prob fucked if you use this, cause like: it asnwers all pagers instantly so the thing "pager was not convinced" will happen fs'
        )

        for _, v in pairs(game.Workspace.Bodies:GetChildren()) do
            if (v.Name == "Pager") then
                for a, b in pairs(v:GetDescendants()) do
                    if b:IsA("ProximityPrompt") then
                        local args = {
                            [1] = b
                        }

                        game:GetService("ReplicatedStorage").RS_Package.Remotes.StartInteraction:FireServer(
                            unpack(args)
                        )
                        game:GetService("ReplicatedStorage").RS_Package.Remotes.CompleteInteraction:FireServer(
                            unpack(args)
                        )
                    end
                end
            end
        end
    end
)

for i = 0, 256, 1 do --anti dumper... kinda? (b4 was obfuscated, u can delete this shit obv)
    print(randomString(32, math.random(0, i)))
    print(randomString(32, math.random(0, i)))
    print(randomString(32, math.random(0, i)))
    wait()
end
