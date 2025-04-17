-- Services
local Players = game:GetService("Players")
local GuiService = game:GetService("GuiService")
local VirtualInputManager = game:GetService("VirtualInputManager")

local player = Players.LocalPlayer

-- GUI Elements
local retryButton = player:WaitForChild("PlayerGui"):WaitForChild("RewardsUI").Main.LeftSide.Button.Retry
local NextButton = player.PlayerGui.RewardsUI.Main.LeftSide.Button.Next
local VoteButton = player.PlayerGui.HUD.InGame.VotePlaying.Frame.Vote
local UpgradeYen_btn = player.PlayerGui.HUD.InGame.StatsManager.Main.MaximumYen.Frame.Upgrade
local UpgradeUnit_btn = player.PlayerGui.HUD.InGame.UnitStats.MainStats.Upgrade
local PlayButton = player.PlayerGui.HUD.InGame.Main.AutoPlay

-- Fluent UI Setup
local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "[🎉 RELEASE] Anime Rangers X",
    SubTitle = "by xCusive",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true,
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl
})

local Tabs = {
    Main = Window:AddTab({ Title = "Main หน้านี้เปิดฟังชั่นก์แล้วเดินไม่ได้นะ555" }),
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
}

local Options = Fluent.Options

-- Toggles
local Toggle_Vote = Tabs.Main:AddToggle("VoteToggle", {Title = "Auto Vote", Default = false })
local Toggle_Next = Tabs.Main:AddToggle("NextToggle", {Title = "Auto Next", Default = false })
local Toggle_Replay = Tabs.Main:AddToggle("ReplayToggle", {Title = "Auto Replay", Default = false })
local Toggle_Upg_yen = Tabs.Main:AddToggle("Upg_YenToggle", {Title = "Auto Upgrade ( Yen )", Default = false })
local Toggle_Upg_Unit = Tabs.Main:AddToggle("Ugp_UnitToggle", {Title = "Auto Upgrade ( Unit )", Default = false })
local Toggle_Play = Tabs.Main:AddToggle("PlayToggle", {Title = "Auto Play", Default = false })
local Toggle_AutoClick = Tabs.Main:AddToggle("AutoClickToggle", {Title = "Auto Click", Default = false })
local Toggle_AutoKill = Tabs.Main:AddToggle("AutoKillToggle", {Title = "Auto Kill Enemies",Default = false })


-- Auto Functions
Toggle_Vote:OnChanged(function()
    if Options.VoteToggle.Value then
        task.spawn(function()
            while Options.VoteToggle.Value do
                local success, err = pcall(function()
                    if VoteButton and VoteButton.Visible then
                        VoteButton.Selectable = true
                        GuiService.SelectedObject = VoteButton
                        GuiService.SelectedCoreObject = VoteButton
                        VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.Return, false, game)
                        task.wait(0.05)
                        VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.Return, false, game)
                    end
                end)
                if not success then warn("Auto Vote error:", err) end
                task.wait(1)
            end
        end)
    end
end)

Toggle_Next:OnChanged(function()
    if Options.NextToggle.Value then
        task.spawn(function()
            while Options.NextToggle.Value do
                local success, err = pcall(function()
                    if NextButton and NextButton.Visible then
                        NextButton.Selectable = true
                        GuiService.SelectedObject = NextButton
                        GuiService.SelectedCoreObject = NextButton
                        VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.Return, false, game)
                        task.wait(0.05)
                        VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.Return, false, game)
                    end
                end)
                if not success then warn("Auto Next error:", err) end
                task.wait(0)
            end
        end)
    end
end)

Toggle_Replay:OnChanged(function()
    if Options.ReplayToggle.Value then
        task.spawn(function()
            while Options.ReplayToggle.Value do
                local success, err = pcall(function()
                    if retryButton and retryButton.Visible then
                        retryButton.Selectable = true
                        GuiService.SelectedObject = retryButton
                        GuiService.SelectedCoreObject = retryButton
                        VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.Return, false, game)
                        task.wait(0.1)
                        VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.Return, false, game)
                    end
                end)
                if not success then warn("Auto Replay error:", err) end
                task.wait(2)
            end
        end)
    end
end)

Toggle_Upg_yen:OnChanged(function()
    if Options.Upg_YenToggle.Value then
        task.spawn(function()
            while Options.Upg_YenToggle.Value do
                local success, err = pcall(function()
                    if UpgradeYen_btn and UpgradeYen_btn.Visible then
                        UpgradeYen_btn.Selectable = true
                        GuiService.SelectedObject = UpgradeYen_btn
                        GuiService.SelectedCoreObject = UpgradeYen_btn
                        VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.Return, false, game)
                        task.wait(0.001)
                        VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.Return, false, game)
                    end
                end)
                if not success then warn("Auto Upgrade Yen error:", err) end
                task.wait(0.2)
            end
        end)
    end
end)

Toggle_Upg_Unit:OnChanged(function()
    if Options.Ugp_UnitToggle.Value then
        task.spawn(function()
            while Options.Ugp_UnitToggle.Value do
                local success, err = pcall(function()
                    if UpgradeUnit_btn and UpgradeUnit_btn.Visible then
                        UpgradeUnit_btn.Selectable = true
                        GuiService.SelectedObject = UpgradeUnit_btn
                        GuiService.SelectedCoreObject = UpgradeUnit_btn
                        VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.Return, false, game)
                        task.wait(0.001)
                        VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.Return, false, game)
                    end
                end)
                if not success then warn("Auto Upgrade Unit error:", err) end
                task.wait(0.2)
            end
        end)
    end
end)

Toggle_Play:OnChanged(function()
    if Options.PlayToggle.Value then
        task.spawn(function()
            while Options.PlayToggle.Value do
                local success, err = pcall(function()
                    if PlayButton and PlayButton.Visible then
                        PlayButton.Selectable = true
                        GuiService.SelectedObject = PlayButton
                        GuiService.SelectedCoreObject = PlayButton
                        VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.Return, false, game)
                        task.wait(0.05)
                        VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.Return, false, game)
                    end
                end)
                if not success then warn("Auto Play error:", err) end
                task.wait(1)
            end
        end)
    end
end)

Toggle_AutoClick:OnChanged(function()
    if Options.AutoClickToggle.Value then
        task.spawn(function()
            while Options.AutoClickToggle.Value do
                pcall(function()
                    local enemyFolder = workspace:FindFirstChild("Agent") and workspace.Agent:FindFirstChild("EnemyT")
                    local enemyCount = enemyFolder and #enemyFolder:GetChildren() or 0

                    if enemyCount <= 0 then
                        -- คลิกเมื่อไม่มี Enemy แล้ว
                        VirtualInputManager:SendMouseButtonEvent(5, 0, 0, true, game, 0)
                        task.wait(0.05)
                        VirtualInputManager:SendMouseButtonEvent(5, 0, 0, false, game, 0)
                    end
                end)
                task.wait(1) -- รอ 5 วินาทีต่อรอบ
            end
        end)
    end
end)

Toggle_AutoKill:OnChanged(function()
    if Options.AutoKillToggle.Value then
        task.spawn(function()
            while Options.AutoKillToggle.Value do
                pcall(function()
                    local enemyFolder = workspace:FindFirstChild("Agent") and workspace.Agent:FindFirstChild("EnemyT")
                    if enemyFolder then
                        for _, enemy in ipairs(enemyFolder:GetChildren()) do
                            enemy:Destroy()
                        end
                    end
                end)
                task.wait(0) -- ลบซ้ำทุก 1 วิ
            end
        end)
    end
end)


-- Initialize toggles
Options.VoteToggle:SetValue(false)
Options.NextToggle:SetValue(false)
Options.ReplayToggle:SetValue(false)
Options.Upg_YenToggle:SetValue(false)
Options.Ugp_UnitToggle:SetValue(false)
Options.PlayToggle:SetValue(false)
Options.AutoClickToggle:SetValue(false)
Options.AutoKillToggle:SetValue(false)

-- Save Manager
SaveManager:SetLibrary(Fluent)
InterfaceManager:SetLibrary(Fluent)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({})
InterfaceManager:SetFolder("FluentScriptHub")
SaveManager:SetFolder("FluentScriptHub/specific-game")
InterfaceManager:BuildInterfaceSection(Tabs.Settings)
SaveManager:BuildConfigSection(Tabs.Settings)
Window:SelectTab(1)

Fluent:Notify({
    Title = "Anime Rangers X By xCusive",
    Content = "The script has been loaded.",
    Duration = 8
})

SaveManager:LoadAutoloadConfig()
