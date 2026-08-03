-----不加密了二改可以别删这个注释我的b站UID:1531514159
local Translations = {["77wiki"] = "Kenny汉化b站UID:1531514159",
["Main"]= "主菜单",
["Player"]= "玩家",
["Others"]= "其他",
["Fling"]= "投掷",
["Fling Aura"]= "投掷光环",
["Anti-Fling"]= "反投掷",
["Safezone"]= "安全区",
["Teleport To Lobby"]= "传送至大厅",
["Search"]= "搜索",
["Visuals"]= "视觉",
["Player ESP"]= "玩家透视",
["Name ESP"]= "名称透视",
["Generator ESP"]= "发电机透视",
["Pallet ESP"]= "木板透视",
["Vault ESP"]= "翻越点透视",
["Hook ESP"]= "钩子透视",
["Toggle"]= "切换",
["Lock"]= "锁定",
["7Twiki"]= "7Twiki",
["Emotes"]= "表情",
["Select Emote"]= "选择表情",
["The Dab"]= "Dab舞",
["Play Emote"]= "播放表情",
["Killer"]= "杀手",
["Madded Speed"]= "疯狂速度",
["Walkspeed"]= "移动速度",
["Camera"]= "相机",
["Set FOV"]= "设置视野",
["Field Of View"]= "视野范围",
["Topgle"]= "切换",
["Survivor"]= "幸存者",
["Miscellaneous"]= "杂项",
["Immune Horizontal Slash"]= "免疫水平斩击",
["Be Able To Jump"]= "能够跳跃",
["Disable Jump Coddown"]= "禁用跳跃冷却",
["Dash Step (Q)"]= "冲刺步 (Q)",
["Fullbright"]= "全亮",
["Remove Gate"]= "移除大门",
["Items"]= "物品",
["Disable Flashlight"]= "禁用闪光灯",
["Stud Based Aimbot"]= "基于Stud的自动瞄准",
["Lock Distance"]= "锁定距离",  
["Wave"] = "挥手",
["Madded Speed"] = "疯狂速度",
["Search"] = "搜索",
["Perfect Generator Repair"] = "完美修复发电机",
["Disable Generator Minigame"] = "禁用发电机小游戏",
["Disable Heal Minigame"] = "禁用治疗小游戏",
["Invisible (Use Noclip)"] = "隐身（使用穿墙）",
["Speed Multiplier"] = "速度倍数",
["Boosting The Speed By 1/2"] = "将速度提升1/2",
["Miscellaneous"] = "其他",
["Disable Jump Cooldown"] = "禁用跳跃冷却",
["Keybirds Are Allowed"] = "允许按键",
["Use Gate Ability No CD (G)"] = "使用大门能力无冷却（G）",
["Use Shadow Clone No CD (N)"] = "使用影分身无冷却（N）",
["Use Parrying Dagger No CD (H)"] = "使用格挡匕首无冷却（H）",
["Ultra Instinct"] = "极致本能",
["Disable Parry Animation"] = "禁用格挡动画",
["Keypinds Are Allowed"] = "允许按键绑定",
["Fake Parry (R)"] = "虚假格挡（R）",
["Gun & Flashlight Aimbot"] = "枪和手电筒自瞄",
["Universal"] = "通用",
["Fly"] = "飞行",
["Noclip"] = "穿墙",
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
getgenv().key = "https://discord.gg/SRG7QTvEuR"
loadstring(game:HttpGet("https://raw.githubusercontent.com/areyourealforme/77wiki/refs/heads/main/violencedistrict.lua"))()

end)

if not success then
    warn("加载失败:", err)
end
