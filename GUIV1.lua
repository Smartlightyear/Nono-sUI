game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Nono’s UI",
    Text = "Made by Moonlight and Smartlightyear",
    Icon = "rbxassetid://109523353085474"
})
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Nono’s UI",
    Text = "Nono clan will rule da world",
    Icon = "rbxassetid://79763022004094"
})

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local Window = Library.CreateLib("Nono's GUI V1 | Created By Moonlight, & Smartlightyear | " .. game.Players.LocalPlayer.DisplayName, "BloodTheme")

local MainTab = Window:NewTab("Main🏡")

local MSection = MainTab:NewSection("Main")

MSection:NewButton("BetterBypasser", "Loads Bypasser", function()
    loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Synergy-Networks/products/main/BetterBypasser/loader.lua"))()
end)

MSection:NewSlider("Speed", "Bypasses speed anti-cheat", 500, 16, function(s)
    local player = game.Players.LocalPlayer
    if player and player.Character and player.Character:FindFirstChild("Humanoid") then
        player.Character.Humanoid.WalkSpeed = s
    end
end)

MSection:NewSlider("JumpPower", "Bypasses jumppower anti-cheat", 1000, 50, function(s)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)

-- Infinite Jump
local infiniteJumpEnabled = false
local userInputService = game:GetService("UserInputService")
local player = game.Players.LocalPlayer

userInputService.JumpRequest:Connect(function()
    if infiniteJumpEnabled then
        player.Character:FindFirstChildOfClass("Humanoid"):ChangeState("Jumping")
    end
end)

MSection:NewToggle("Infinite Jump", "Toggle Infinite Jump", function(state)
    infiniteJumpEnabled = state
end)

-- Noclip
local noclipEnabled = false
local runService = game:GetService("RunService")

local function noclip()
    if noclipEnabled then
        for _, part in pairs(player.Character:GetDescendants()) do
            if part:IsA("BasePart") and part.CanCollide then
                part.CanCollide = false
            end
        end
    else
        for _, part in pairs(player.Character:GetDescendants()) do
            if part:IsA("BasePart") and not part.CanCollide then
                part.CanCollide = true
            end
        end
    end
end

runService.Stepped:Connect(noclip)

MSection:NewToggle("Noclip", "Toggle Noclip", function(state)
    noclipEnabled = state
end)

MSection:NewButton("TP Tool", "Teleport tool", function()
    local mouse = game.Players.LocalPlayer:GetMouse()
    local tool = Instance.new("Tool")
    tool.RequiresHandle = false
    tool.Name = "Click Teleport"
    tool.Activated:Connect(function()
        local pos = mouse.Hit + Vector3.new(0, 2.5, 0)
        pos = CFrame.new(pos.X, pos.Y, pos.Z)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
    end)
    tool.Parent = game.Players.LocalPlayer.Backpack
end)

MSection:NewButton("FLY GUI V3", "Loads fly gui", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.txt"))()
end)

local FEScriptsSection = MainTab:NewSection("FE Scripts")

local function loadScript(url)
    loadstring(game:HttpGet(url))()
end

local function loadFE_KJ()
    loadScript("https://pastebin.com/raw/5KnPXUEm")
end

local function loadFE_SHOOTER()
    loadScript("https://pastefy.app/ZGWONifX/raw")
end

local function loadFE_jerk_R15()
    loadScript("https://pastefy.app/YZoglOyJ/raw")
end

local function loadFE_Goner_Divine_Edge()
    loadScript("https://raw.githubusercontent.com/Fe-ProjectR/FE-Files/refs/heads/main/Fe%20Divine%20Edge.lua")
end

local function loadFE_Gale()
    loadScript("https://raw.githubusercontent.com/Fe-ProjectR/FE-Files/refs/heads/main/Fe%20gale.lua")
end

local function loadFE_Gale_No_Cutscene()
    loadScript("https://raw.githubusercontent.com/Fe-ProjectR/FE-Files/785403033b2b9161076ddaddc65923a7290e274d/Fe%20fighter%20optimized")
end

local function loadFE_Jerk_off()
    loadScript("https://pastefy.app/wa3v2Vgm/raw")
end

local function loadFE_Hug()
    loadScript("https://raw.githubusercontent.com/JSFKGBASDJKHIOAFHDGHIUODSGBJKLFGDKSB/fe/refs/heads/main/FEHUGG")
end

local function loadFE_SCP_096()
    loadScript("https://pastefy.app/YsJgITXR/raw")
end

local function loadFE_Energize_UI()
    loadScript("https://pastebin.com/raw/1p6xnBNf")
end

local function loadFE_Nameless_Animation_V4()
    loadScript("https://scriptblox.com/raw/Universal-Script-Silly-Fe-Nameless-Animation-V4-But-with-Less-Shake-24226")
end

local function loadFE_Headless()
    loadScript("https://raw.githubusercontent.com/Gazer-Ha/Valiant-Ui-Lib-Gazed-/refs/heads/main/Head%20Pack")
end

local function loadFE_Anim_Hub()
    loadScript("https://gist.githubusercontent.com/MelonsStuff/f018928d2f010789a150b4924e279b16/raw/8de399eb9cbccbde430fcd37270cd4ff171f8b8e/AnimationGUI.txt")
end

local function loadFE_Seraphic_Blade()
    loadScript("https://pastebin.com/raw/K51MUGBu")
end

local function loadFE_Hawk_Guy()
    loadScript("https://pastefy.app/9O46YtFx/raw")
end

local function loadFE_Zombie()
    loadScript("https://pastefy.app/JOWniO6o/raw")
end

local function loadFE_Touch_Fling()
    loadScript("https://pastebin.com/raw/CwqqSjsx")
end

-- Add buttons for the FE script loading functions
FEScriptsSection:NewButton("Load FE_KJ", "Loads FE_KJ script", function()
    loadFE_KJ()
end)

FEScriptsSection:NewButton("Load FE_SHOOTER", "Loads FE_SHOOTER script", function()
    loadFE_SHOOTER()
end)

FEScriptsSection:NewButton("Load FE_jerk_R15", "Loads FE_jerk_R15 script", function()
    loadFE_jerk_R15()
end)

FEScriptsSection:NewButton("Load FE_Goner_Divine_Edge", "Loads FE_Goner_Divine_Edge script", function()
    loadFE_Goner_Divine_Edge()
end)

FEScriptsSection:NewButton("Load FE_Gale", "Loads FE_Gale script", function()
    loadFE_Gale()
end)

FEScriptsSection:NewButton("Load FE_Gale_No_Cutscene", "Loads FE_Gale_No_Cutscene script", function()
    loadFE_Gale_No_Cutscene()
end)

FEScriptsSection:NewButton("Load FE_Jerk_off", "Loads FE_Jerk_off script", function()
    loadFE_Jerk_off()
end)

FEScriptsSection:NewButton("Load FE_Hug", "Loads FE_Hug script", function()
    loadFE_Hug()
end)

FEScriptsSection:NewButton("Load FE_SCP_096", "Loads FE_SCP_096 script", function()
    loadFE_SCP_096()
end)

FEScriptsSection:NewButton("Load FE_Energize_UI", "Loads FE_Energize_UI script", function()
    loadFE_Energize_UI()
end)

FEScriptsSection:NewButton("Load FE_Nameless_Animation_V4", "Loads FE_Nameless_Animation V4 script", function()
    loadFE_Nameless_Animation_V4()
end)

FEScriptsSection:NewButton("Load FE_Headless", "Loads FE_Headless script", function()
    loadFE_Headless()
end)

FEScriptsSection:NewButton("Load FE_Anim_Hub", "Loads FE_Anim_Hub script", function()
    loadFE_Anim_Hub()
end)

FEScriptsSection:NewButton("Load FE_Seraphic_Blade", "Loads FE_Seraphic_Blade script", function()
    loadFE_Seraphic_Blade()
end)

FEScriptsSection:NewButton("Load FE_Hawk_Guy", "Loads FE_Hawk_Guy script", function()
    loadFE_Hawk_Guy()
end)

FEScriptsSection:NewButton("Load FE_Zombie", "Loads FE_Zombie script", function()
    loadFE_Zombie()
end)

FEScriptsSection:NewButton("Load FE_Touch_Fling", "Loads FE_Touch_Fling script", function()
    loadFE_Touch_Fling()
end)

-- Game Scripts Section
local GameScriptsSection = MainTab:NewSection("Game Scripts")

local function loadMSPaint_V3()
    loadScript("https://api.luarmor.net/files/v3/loaders/002c19202c9946e6047b0c6e0ad51f84.lua")
end

local function loadBedwars()
    loadScript("https://raw.githubusercontent.com/VapeVoidware/vapevoidware/main/NewMainScript.lua", true)
end

local function loadArsenal()
    loadScript('https://raw.githubusercontent.com/tbao143/thaibao/main/TbaoHubArsenal')
end

local function loadSprinHub()
    loadScript('https://raw.githubusercontent.com/dqvh/dqvh/main/SprinHub', true)
end

local function loadBreakIn2()
    loadScript("https://luau.tech/build")
end

local function loadBladeball()
    loadScript('https://raw.githubusercontent.com/7190000/Corolla-Hub/main/ch.lua')
end

local function loadBloxfruits()
    getgenv().Hide_UI = true
    getgenv().BlackScreen = false
    _G.HopFruit1M = false
    _G.KaitunConfig = {
        -- ... (Your KaitunConfig table goes here)
    }
    loadScript('https://raw.githubusercontent.com/memaybeohub/NewPage/main/Kaitun.lua')
end

local function loadDTI()
    loadScript('https://raw.githubusercontent.com/hellohellohell012321/DTI-GUI-V2/main/dti_gui_v2.lua',true)
end

local function loadMM2()
    loadScript('https://raw.githubusercontent.com/Au0yX/Community/main/XhubMM2')
end

local function runFloppaSave()
    local args = {
        [1] = {
            ["BadGraphics"] = false,
            ["Products"] = {},
            ["Rent"] = 100,
            ["Age"] = math.huge,
            ["TutorialsViewed"] = {},
            ["Happiness"] = math.huge,
            ["customBloppaID"] = game.Players.LocalPlayer.UserId,
            ["Hunger"] = math.huge,
            ["Cleanliness"] = math.huge,
            ["CashAdder"] = math.huge,
            ["PlayedAnimation"] = false,
            ["Energy"] = math.huge,
            ["Cash"] = math.huge
        },
        [2] = true
    }
    game:GetService("ReplicatedStorage").Save:FireServer(unpack(args))
end

local function enableReset()
    loadScript("https://pastebin.com/raw/pvNpdimg")
end

local function fireballPower()
    local Players = game:GetService("Players")
    local UserInputService = game:GetService("UserInputService")
    local player = Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
    local FIREBALL_SPEED = 70
    local EXPLOSION_RADIUS = 10
    local DAMAGE = 40
    local COOLDOWN = 0
    local canShoot = true

    local function createFireball()
        local fireball = Instance.new("Part")
        fireball.Name = "Fireball"
        fireball.Size = Vector3.new(2, 2, 2)
        fireball.Shape = Enum.PartType.Ball
        fireball.Material = Enum.Material.Neon
        fireball.BrickColor = BrickColor.new("Really red")
        fireball.CanCollide = false

        local fire = Instance.new("Fire")
        fire.Heat = 25
        fire.Size = 5
        fire.Parent = fireball

        local light = Instance.new("PointLight")
        light.Color = Color3.fromRGB(255, 100, 0)
        light.Range = 10
        light.Brightness = 2
        light.Parent = fireball

        return fireball
    end

    local function createExplosion(position)
        local explosion = Instance.new("Explosion")
        explosion.Position = position
        explosion.BlastRadius = EXPLOSION_RADIUS
        explosion.BlastPressure = 500000
        explosion.DestroyJointRadiusPercent = 0
        explosion.Parent = workspace
    end

    local function shootFireball()
        if not canShoot then return end
        canShoot = false

        local fireball = createFireball()
        fireball.CFrame = humanoidRootPart.CFrame * CFrame.new(0, 0, -2)
        fireball.Parent = workspace

        local direction = humanoidRootPart.CFrame.LookVector
        local bodyVelocity = Instance.new("BodyVelocity")
        bodyVelocity.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
        bodyVelocity.Velocity = direction * FIREBALL_SPEED
        bodyVelocity.Parent = fireball

        fireball.Touched:Connect(function(hit)
            if hit.Parent and hit.Parent:FindFirstChild("Humanoid") then
                local humanoid = hit.Parent:FindFirstChild("Humanoid")
                humanoid.Health = humanoid.Health - DAMAGE
                createExplosion(fireball.Position)
                fireball:Destroy()
            end
        end)

        game:GetService("Debris"):AddItem(fireball, 5)
        wait(COOLDOWN)
        canShoot = true
    end

    UserInputService.InputBegan:Connect(function(input, gameProcessed)
        if not gameProcessed and input.KeyCode == Enum.KeyCode.Three then
            shootFireball()
        end
    end)

    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Fire Powers Activated",
        Text = "Press 3 to shoot fireballs!",
        Duration = 5
    })
end

local function importantNote()
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "wsg g",
        Text = "Thanks for testing our script " .. game.Players.LocalPlayer.DisplayName .. "!",
        Duration = 5
    })
end

local function loadExtraScript()
    loadScript("https://github.com/sjdhfiuyhknamsldwadkij/-/blob/main/1")
end

-- Add buttons for the game script loading functions
GameScriptsSection:NewButton("Load MSPaint V3", "Loads MSPaint V3 script", function()
    loadMSPaint_V3()
end)

GameScriptsSection:NewButton("Load Bedwars", "Loads Bedwars script", function()
    loadBedwars()
end)

GameScriptsSection:NewButton("Load Arsenal", "Loads Arsenal script", function()
    loadArsenal()
end)

GameScriptsSection:NewButton("Load SprinHub", "Loads SprinHub script", function()
    loadSprinHub()
end)

GameScriptsSection:NewButton("Load Break In 2", "Loads Break In 2 script", function()
    loadBreakIn2()
end)

GameScriptsSection:NewButton("Load Bladeball", "Loads Bladeball script", function()
    loadBladeball()
end)

GameScriptsSection:NewButton("Load Bloxfruits", "Loads Bloxfruits script", function()
    loadBloxfruits()
end)

GameScriptsSection:NewButton("Load DTI", "Loads DTI script", function()
    loadDTI()
end)

GameScriptsSection:NewButton("Load MM2", "Loads MM2 script", function()
    loadMM2()
end)

GameScriptsSection:NewButton("Run Floppa Save", "Runs Floppa Save script", function()
    runFloppaSave()
end)

GameScriptsSection:NewButton("Enable Reset", "Enables reset", function()
    enableReset()
end)

GameScriptsSection:NewButton("Fireball Power", "Activates fireball power", function()
    fireballPower()
end)

GameScriptsSection:NewButton("Important Note", "Displays an important note", function()
    importantNote()
end)

GameScriptsSection:NewButton("Load Extra Script", "Loads extra script", function()
    loadExtraScript()
end)

