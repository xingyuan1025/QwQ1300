local Players = game:GetService("Players")
local VirtualInputManager = game:GetService("VirtualInputManager")
local TeleportService = game:GetService("TeleportService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local StarterGui = game:GetService("StarterGui")

local LocalPlayer = Players.LocalPlayer
local RootPart = (LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()):WaitForChild("HumanoidRootPart")
local GizmoFolder = workspace.Local.Gizmos.White

local PatrolPoints = {
    Vector3.new(-1137, 78, -1953),
    Vector3.new(-44, 63, -2083),
    Vector3.new(194, 60, -2884),
    Vector3.new(-412, 106, -1301),
    Vector3.new(-377, 410, -741),
    Vector3.new(-985, 380, -1145),
    Vector3.new(-854, 406, -1505)
}

local IsRunning = true
local TimeElapsed = 0
local TimeoutThreshold = 30

local function ShowNotification(title, text, duration)
    pcall(function()
        StarterGui:SetCore("SendNotification", {
            Title = title,
            Text = text,
            Duration = duration or 5
        })
    end)
end

local function GetBasePart(instance)
    if instance:IsA("BasePart") then
        return instance
    end
    for _, descendant in ipairs(instance:GetDescendants()) do
        if descendant:IsA("BasePart") then
            return descendant
        end
    end
end

local function IsValidTarget(instance)
    local typeAttr = instance:GetAttribute("gizmoType")
    return typeAttr == "ATM" or typeAttr == "Register"
end

local function FindClosestTarget()
    local minDistance = math.huge
    local closestPart = nil
    
    for _, item in ipairs(GizmoFolder:GetChildren()) do
        if IsValidTarget(item) then
            local part = GetBasePart(item)
            if part then
                local dist = (RootPart.Position - part.Position).Magnitude
                if dist < minDistance then
                    closestPart = part
                    minDistance = dist
                end
            end
        end
    end
    return closestPart
end

local function TeleportTo(target)
    if typeof(target) ~= "Instance" then
        if typeof(target) == "Vector3" then
            RootPart.CFrame = CFrame.new(target)
        end
    else
        RootPart.CFrame = target.CFrame * CFrame.new(0, 5, 0)
    end
end

local function SpamInteract(duration)
    local start = tick()
    while tick() - start < duration do
        VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.E, false, game)
        VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.E, false, game)
        task.wait(0.05)
    end
end

local function ProcessCollection(targetPart)
    local start = tick()
    local maxWait = 3
    while tick() - start < maxWait and (targetPart.Parent and not targetPart:GetAttribute("Collected")) do
        task.wait(0.1)
    end
    SpamInteract(1.5)
end

local function ServerHop()
    local placeId = game.PlaceId
    local success, result = pcall(function()
        local url = "https://games.roblox.com/v1/games/" .. placeId .. "/servers/Public?sortOrder=Asc&limit=100"
        return HttpService:JSONDecode(game:HttpGet(url)).data
    end)
    
    if success and result then
        local serverList = {}
        for _, server in pairs(result) do
            if server.playing < server.maxPlayers and server.id ~= game.JobId then
                table.insert(serverList, server.id)
            end
        end
        
        if #serverList > 0 then
            TeleportService:TeleportToPlaceInstance(placeId, serverList[math.random(1, #serverList)], LocalPlayer)
        end
    end
end

ShowNotification("KENNY自动换服启动", "b站UID:1531514159", 5)

task.spawn(function()
    while IsRunning do
        local target = FindClosestTarget()
        if target then
            TeleportTo(target)
            task.wait(0.3)
            SpamInteract(1.5)
            ProcessCollection(target)
            TimeElapsed = 0
        else
            TimeElapsed = TimeElapsed + 0.7
            TeleportTo(PatrolPoints[math.random(1, #PatrolPoints)])
            
            if TimeoutThreshold <= TimeElapsed then
                ShowNotification("切换服务器", "30秒未找到ATM，正在切换服务器...", 5)
                task.wait(1)
                ServerHop()
                break
            end
        end
        task.wait(0.7)
    end
end)