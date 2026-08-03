-----不加密了二改可以别删这个注释我的b站UID：1531514159
local Translations = {
["Auto Actions"] = "自动动作",
["Auto Superball"] = "自动超级球",
["Collectibles"] = "收藏品",
["TexRBLX"] = "Kenny汉化UID:1531514159",
["Misc"] = "杂项",
["Enable Premium & Donator only Animat "] = "仅限高级和捐赠者动画",
["Activation Distance (studs)"] = "激活距离 (单位)",
["studs"] = "单位",
["Auto Linebounce (Requires Auto Superball ON)"] = "自动线反弹 (需要自动超级球开启)",
["Enable Auto Linebounce"] = "启用自动线反弹",
["Linebounce Delay/Interval (s)"] = "线反弹延迟/间隔 (秒)",
["To chat click here or press the \"/\" key"] = "要聊天请点击这里或按 \"/\" 键",
["Auto Guard (Attachment Method)"] = "自动守护 (附件方法)",
["Auto Guard"] = "自动守护",
["Auto Guard Delay (seconds)"] = "自动守护延迟 (秒)",
["Auto Sword"] = "自动剑",
["Item Teleporter"] = "物品传送器",
["Select Item"] = "选择物品",
["- No Items Found -"] = "- 未找到物品 -",
["Teleport to Selected Item"] = "传送至选定物品",
["button"] = "按钮",
["Card Teleporter"] = "卡片传送器",
["Sword Release Delay (seconds)"] = "剑释放延迟 (秒)",
["Use Sword on Flying Enemies"] = "对飞行敌人使用剑",
["Auto Launcher"] = "自动发射器",
["Select Card"] = "选择卡片",
["- No Cards Found -"] = "- 未找到卡片 -",
["Teleport to Selected Card"] = "传送至选定卡片",
["BUX Teleporter"] = "BUX 传送器",
["Select BUX"] = "选择 BUX",
["- No BUX Found -"] = "- 未找到 BUX -",
["Arena Enemy Targeter"] = "竞技场敌人目标器",
["Target Enemy"] = "目标敌人",
["None"] = "无",
["Auto Superball Action"] = "自动超级球动作",
["Enable Auto Superball"] = "启用自动超级球",
["Enable Auto Launcher"] = "启用自动发射器",
["Auto Dynamite/Slingshot"] = "自动炸药/弹弓",
["Enable Auto Dynamite/Slingshot"] = "启用自动炸药/弹弓",
["General Mods"] = "通用模组",
["Invincibility (Godmode)"] = "无敌 (上帝模式)",
["Speed Boost"] = "速度提升",
["x Multiplier"] = "倍乘数",
["Auto Fish"] = "自动钓鱼",
["Toggle Notifications"] = "切换通知",
["Toggle Debug Messages (Dev Console)"] = "切换调试消息 (开发控制台)",
["Enable Premium & Donor only Animation Flavors"] = "启用仅限高级与捐赠者动画风格",
["Teleport to Selected BUX"] = "传送至选定 BUX",
["Teleport Settings"] = "传送设置",
["Teleport Back To Original Position"] = "传送回原位置",
}

local function translateText(text)
    if not text or type(text) ~= "string" then return text end
    
    if Translations[text] then
        return Translations[text]
    end
    
    for en, cn in pairs(Translations) do
        if text:find(en) then
            return text:gsub(en, cn)
        end
    end
    
    return text
end

local function setupTranslationEngine()
    local success, err = pcall(function()
        local oldIndex = getrawmetatable(game).__newindex
        setreadonly(getrawmetatable(game), false)
        
        getrawmetatable(game).__newindex = newcclosure(function(t, k, v)
            if (t:IsA("TextLabel") or t:IsA("TextButton") or t:IsA("TextBox")) and k == "Text" then
                v = translateText(tostring(v))
            end
            return oldIndex(t, k, v)
        end)
        
        setreadonly(getrawmetatable(game), true)
    end)
    
    if not success then
        warn("元表劫持失败:", err)
       
        local translated = {}
        local function scanAndTranslate()
            for _, gui in ipairs(game:GetService("CoreGui"):GetDescendants()) do
                if (gui:IsA("TextLabel") or gui:IsA("TextButton") or gui:IsA("TextBox")) and not translated[gui] then
                    pcall(function()
                        local text = gui.Text
                        if text and text ~= "" then
                            local translatedText = translateText(text)
                            if translatedText ~= text then
                                gui.Text = translatedText
                                translated[gui] = true
                            end
                        end
                    end)
                end
            end
            
            local player = game:GetService("Players").LocalPlayer
            if player and player:FindFirstChild("PlayerGui") then
                for _, gui in ipairs(player.PlayerGui:GetDescendants()) do
                    if (gui:IsA("TextLabel") or gui:IsA("TextButton") or gui:IsA("TextBox")) and not translated[gui] then
                        pcall(function()
                            local text = gui.Text
                            if text and text ~= "" then
                                local translatedText = translateText(text)
                                if translatedText ~= text then
                                    gui.Text = translatedText
                                    translated[gui] = true
                                end
                            end
                        end)
                    end
                end
            end
        end
        
        local function setupDescendantListener(parent)
            parent.DescendantAdded:Connect(function(descendant)
                if descendant:IsA("TextLabel") or descendant:IsA("TextButton") or descendant:IsA("TextBox") then
                    task.wait(0.1)
                    pcall(function()
                        local text = descendant.Text
                        if text and text ~= "" then
                            local translatedText = translateText(text)
                            if translatedText ~= text then
                                descendant.Text = translatedText
                            end
                        end
                    end)
                end
            end)
        end
        
        pcall(setupDescendantListener, game:GetService("CoreGui"))
        local player = game:GetService("Players").LocalPlayer
        if player and player:FindFirstChild("PlayerGui") then
            pcall(setupDescendantListener, player.PlayerGui)
        end
        
        while true do
            scanAndTranslate()
            task.wait(3)
        end
    end
end

task.wait(2)

setupTranslationEngine()

local success, err = pcall(function()
--这下面填加载外部脚本
loadstring(game:HttpGet("https://raw.githubusercontent.com/TexRBLX/Roblox-stuff/refs/heads/main/block%20tales/revamp.lua"))()
end)

if not success then
    warn("加载失败:", err)
end
