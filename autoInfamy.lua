assert(firesignal, "Exploit not supported")
assert(readfile, "Exploit not supported")
assert(writefile, "Exploit not supported")
assert(isfile, "Exploit not supported")

warn("Hello")

if not game:IsLoaded() then
    game.Loaded:Wait()
end

task.wait(1)

local startTime = tick()

local function startHeist(HeistSTR)
    local args = {
        [1] = HeistSTR,
        [2] = "Nightmare",
        [3] = 1,
        [4] = "PRIVATE",
        [5] = "Stealth",
        [6] = true,
        [7] = false,
        [8] = 1,
        [9] = false,
        [10] = false,
        [11] = {}
    }

    game:GetService("ReplicatedStorage").MakeLobby:InvokeServer(unpack(args))
    task.wait(0.5)
    game:GetService("ReplicatedStorage").StartGame:FireServer(
        game:GetService("ReplicatedStorage").Lobbies[game.Players.LocalPlayer.Name]
    )
end

local function inMainGame()
    if game.Workspace:FindFirstChild("Criminals") then
        return false
    end
    return true
end

local function completeHeist()
    if not inMainGame() then
        if game.Players.LocalPlayer.PlayerGui.SG_Package.MainGui.PregameFrame.Visible then
            game:GetService("ReplicatedStorage").RS_Package.Remotes.PlayerReady:FireServer("Class 1", true)
            task.wait(0.5)
        end

        if
            not game.Players.LocalPlayer.PlayerGui.SG_Package.MainGui.PregameFrame.Visible and
                not game.Players.LocalPlayer.PlayerGui.SG_Package.MainGui.frame_heistResults.Visible
         then
            if game.Players.LocalPlayer.Character then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    game.Workspace.BagSecuredArea.FloorPart.CFrame + Vector3.new(0, 3, 0)
                task.wait()
                for i, v in ipairs(game.Workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") then
                        local args = {
                            [1] = v
                        }

                        game:GetService("ReplicatedStorage").RS_Package.Remotes.CompleteInteraction:FireServer(
                            unpack(args)
                        )
                        game:GetService("ReplicatedStorage").RS_Package.Remotes.ThrowBag:FireServer(
                            Vector3.new(0, 0, 0)
                        )
                        task.wait(0.1)
                    end
                end
                game:GetService("ReplicatedStorage").RS_Package.Remotes.ThrowBag:FireServer(Vector3.new(0, 0, 0))
            end
        end
    end
end

local function getStats()
    if inMainGame() then
        local temp1 = require(game:GetService("Players").LocalPlayer.PlayerScripts.LocalStatsModule).Inventory.Level
        local temp2 = require(game:GetService("Players").LocalPlayer.PlayerScripts.LocalStatsModule).Inventory.Cash
        local temp3 = require(game:GetService("Players").LocalPlayer.PlayerScripts.LocalStatsModule).Inventory.XP
        return temp1, temp2, temp3
    end
    return nil
end

local function canInfamy(level, cash, xp)
    return level >= 100 and cash >= 20000000 and xp <= 0
end

local function completeInfamy()
    if not inMainGame() then
        return nil
    end

    firesignal(
        game.Players.LocalPlayer.PlayerGui.UI.frame_mainMenu.frame_buttonContainer.button_infamy.MouseButton1Click
    )
    local level, cash, xp = getStats()
    local canInfamyVar = canInfamy(level, cash, xp)
    if not canInfamyVar then
        return
    end

    for _, v in ipairs(game.Players.LocalPlayer.PlayerGui.UI.frame_Infamy.frame_tierContainer:GetChildren()) do
        if v:IsA("ImageButton") then
            if not v.tierAcquired.Visible and not v.tierLock.Visible then
                firesignal(v.MouseButton1Click)

                if
                    game.Players.LocalPlayer.PlayerGui.UI.frame_Infamy.frame_buttonContainer.button_infamyPurchase.Visible
                 then
                    firesignal(
                        game.Players.LocalPlayer.PlayerGui.UI.frame_Infamy.frame_buttonContainer.button_infamyPurchase.MouseButton1Click
                    )
                    task.wait(0.5)
                    firesignal(
                        game.Players.LocalPlayer.PlayerGui.UI.frame_messageBox.frame_msgBoxContainer.frame_infamyWarning.button_confirm.MouseButton1Click
                    )
                    return true
                end
                task.wait(0.5)
            end
        end
    end

    return false
end

if not isfile("requiem_autoInfamy.json") then
    writefile("requiem_autoInfamy.json", "0")
end
if not isfile("requiem_blacklisted.json") then
    local now = tick()
    writefile("requiem_blacklisted.json", "[" .. tick() .. "," .. 0 .. "]")
end
local function writeFile(index, content)
    if index <= 0 then
        return
    end
    if isfile("requiem_autoInfamy.json") then
        local test = game:GetService("HttpService"):JSONDecode(readfile("requiem_autoInfamy.json"))
        test[index] = content
        writefile("requiem_autoInfamy.json", game:GetService("HttpService"):JSONEncode(test))
        return true
    end
    return false
end

local function blacklist(index)
    if isfile("requiem_blacklisted.json") then
        local test = game:GetService("HttpService"):JSONDecode(readfile("requiem_blacklisted.json"))
        test[2] = index
        writefile("requiem_blacklisted.json", game:GetService("HttpService"):JSONEncode(test))
        return true
    end
    return false
end

local function clearFile()
    if isfile("requiem_blacklisted.json") then
        local test = game:GetService("HttpService"):JSONDecode(readfile("requiem_blacklisted.json"))
        test[1] = tick()
        test[2] = 0
        writefile("requiem_blacklisted.json", game:GetService("HttpService"):JSONEncode(test))
        return true
    end
    return false
end

local function nextHeist()
    if isfile("requiem_blacklisted.json") then
        local test = game:GetService("HttpService"):JSONDecode(readfile("requiem_blacklisted.json"))
        return test[2] + 1
    end
    return 1
end

local function oldTime()
    if isfile("requiem_blacklisted.json") then
        local test = game:GetService("HttpService"):JSONDecode(readfile("requiem_blacklisted.json"))
        return test[1]
    end
    return nil
end

local function getFile(index)
    if isfile("requiem_autoInfamy.json") then
        local test = game:GetService("HttpService"):JSONDecode(readfile("requiem_autoInfamy.json"))
        return test[index]
    end
end

local heists = {"Authority", "Shadow Raid", "Art Gallery", "Jewelry Shop"}

if tick() - oldTime() >= 86400 then
    clearFile()
end

if inMainGame() then
    local test = completeInfamy()
    local level, cash, xp = getStats()
    writeFile(1, level)
    writeFile(2, cash)
    writeFile(3, xp)
    task.wait(5)
    if test then
        print("Completed Infamy")
    else
        print("Still not enough")
    end
    local index = nextHeist()
    if index > #heists then
        return
    end
    startHeist(heists[index])

    repeat
        task.wait(0.2)
    until not inMainGame()
else
    while true do
        if game.Players.LocalPlayer.PlayerGui.SG_Package.MainGui.frame_heistResults.Visible then
            local totalCash =
                tonumber(
                game.Players.LocalPlayer.PlayerGui.SG_Package.MainGui.frame_heistResults.TotalCash.amt.Text:gsub(
                    ",",
                    ""
                ):match("%d+")
            )
            local totalXP =
                tonumber(
                game.Players.LocalPlayer.PlayerGui.SG_Package.MainGui.frame_heistResults.TotalXP.amt.Text:gsub(",", ""):match(
                    "%d+"
                )
            )
            repeat
                totalCash =
                    tonumber(
                    game.Players.LocalPlayer.PlayerGui.SG_Package.MainGui.frame_heistResults.TotalCash.amt.Text:gsub(
                        ",",
                        ""
                    ):match("%d+")
                )
                totalXP =
                    tonumber(
                    game.Players.LocalPlayer.PlayerGui.SG_Package.MainGui.frame_heistResults.TotalXP.amt.Text:gsub(
                        ",",
                        ""
                    ):match("%d+")
                )
                task.wait(0.2)
            until totalCash and totalXP
            local oldLevel = tonumber(getFile(1))
            local oldCash = tonumber(getFile(2))
            local oldXP = tonumber(getFile(3))

            if (totalCash and totalCash <= 300000) or (totalXP and totalXP <= 200000) then
                if nextHeist() > #heists then
                    return
                end
                blacklist(nextHeist())
                firesignal(
                    game.Players.LocalPlayer.PlayerGui.SG_Package.MainGui.frame_heistResults.Menu.MouseButton1Click
                )
                break
            elseif (oldCash >= 20000000 and oldXP >= 5139204) then
                firesignal(
                    game.Players.LocalPlayer.PlayerGui.SG_Package.MainGui.frame_heistResults.Menu.MouseButton1Click
                )
                break
            else
                oldCash = oldCash + totalCash
                oldXP = oldXP + totalXP
                writeFile(2, oldCash)
                writeFile(3, oldXP)
                firesignal(
                    game.Players.LocalPlayer.PlayerGui.SG_Package.MainGui.frame_heistResults.Restart.MouseButton1Click
                )
                break
            end
        else
            completeHeist()
            if tick() - startTime >= 60 then
                firesignal(
                    game.Players.LocalPlayer.PlayerGui.SG_Package.MainGui.frame_heistResults.Restart.MouseButton1Click
                )
            end
        end
        task.wait(0.2)
    end
end
