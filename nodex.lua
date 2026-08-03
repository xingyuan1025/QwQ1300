---不加密了二改可以删掉这个注释死全家我的b站UID：1531514159
local Translations = {
["Blade Ball Scripts"] = "nodexKenny汉化b站UID:1531514159",
["Under Ball"] = "球下方",
["Auto Farm"] = "自动刷取",
["X Orbit"] = "X 轨道",
["Y Orbit"] = "Y 轨道",
["Z Orbit"] = "Z 轨道",
["Auto Farm Type"] = "自动刷取类型",
["Orbit Speed"] = "轨道速度",
["Orbit Height"] = "轨道高度",
["Helix"] = "螺旋",
["Figure8"] = "8字形",
["Orbit Radius"] = "轨道半径",
["Spiral"] = "螺旋",
["Random Orbit"] = "随机轨道",
["Blatant"] = "明目张胆",
["Ability"] = "能力",
["Misc"] = "杂项",
["Farm"] = "刷取",
["Player"] = "玩家",
["Server"] = "服务器",
["Player Adjustment"] = "玩家调整",
["Strafe"] = "侧行",
["Strafe Speed"] = "侧行速度",
["Custom FOV"] = "自定义视野",
["FOV Value"] = "视野值",
["Custom Gravity"] = "自定义重力",
["Gravity Value"] = "重力值",
["Servers"] = "服务器",
["Rejoin Server"] = "重新加入服务器",
["Server Hop"] = "服务器跳跃",
["Teleport to PlaceId"] = "传送至地点ID",
["Blatant"] = "公然",
["Ability"] = "能力",
["Misc"] = "杂项",
["Farm"] = "刷取",
["Player"] = "玩家",
["Server"] = "服务器",
["Visual & Misc"] = "视觉与杂项",
["Visualizer"] = "可视化器",
["Camera Lock To Ball"] = "相机锁定到球",
["Ball Trail"] = "球轨迹",
["Player Trail"] = "玩家轨迹",
["Ai Play"] = "AI 玩",
["Ai Play Method"] = "AI 玩方法",
["AdvancedPro"] = "高级专业",
["BallChaser"] = "球追逐者",
["AggressiveHunter"] = " агрессив猎人",
["Auto Farm"] = "自动刷取",
["Auto Claim Rewards"] = "自动领取奖励",
["Low Graphics / FPS Boost"] = "低图形 / FPS 提升",
["Set FPS Cap"] = "设置 FPS 上限",
["Example: 60"] = "示例: 60",
["Anti AFK"] = "反挂机",
["Hit Sounds"] = "击中声音",
["Hit Sound"] = "击中声音",
["Sound Type"] = "声音类型",
["DC_15X"] = "DC_15X",
["Custom Sound ID"] = "自定义声音 ID",
["Enter sound id"] = "输入声音 id",
["Sword Changer"] = "剑更换器",
["Sword Model"] = "剑模型",
["Chroma Blade"] = "彩虹刃",
["Sword Animation"] = "剑动画",
["Seraphim"] = "六翼天使",
["Slash Effect"] = "斩击效果",
["Cat Paw"] = "猫爪",
["Apply Sword Skin"] = "应用剑皮肤",
["Neverlose"] = "永不输",
["MinecraftHit2"] = "我的世界击中2",
["TeamfortressBonk"] = "团队要塞Bonk",
["TeamfortressBell"] = "团队要塞铃声",
["Custom"] = "自定义",
["Blatant"] = "公然",
["Combat"] = "战斗",
["Ability"] = "能力",
["Misc"] = "杂项",
["Farm"] = "刷取",
["Player"] = "玩家",
["Server"] = "服务器",
["Join Our Discord"] = "加入我们的Discord",
["Join our Discord server for updates, support, and more features!"] = "加入我们的Discord服务器以获取更新、支持和更多功能！",
["Copy Discord Link"] = "复制Discord链接",
["Auto Parry"] = "自动格挡",
["Auto Spam"] = "自动连击",
["Combat Setting"] = "战斗设置",
["Custom"] = "自定义",
["Random"] = "随机",
["Auto Spam Method"] = "自动连击方法",
["Straight"] = "直线",
["Parry Direction"] = "格挡方向",
["Up"] = "上",
["Backwards"] = "向后",
["Manual Spam Speed"] = "手动连击速度",
["Right"] = "右",
["Parry Accuracy"] = "格挡准确度",
["Left"] = "左",
["Ability Detection"] = "能力检测",
["Slash Of Fury"] = "愤怒斩击",
["Slash Of Fury Mode"] = "愤怒斩击模式",
["Legit"] = "合法",
["Singularity"] = "奇点",
["Infinity"] = "无限",
["Time Hole"] = "时间洞",
["Phantom"] = "幻影",
["Auto Ability"] = "自动能力",
["Cooldown Protection"] = "冷却保护",
["Manual Spam"] = "手动连击",
["Heartbeat"] = "心跳",
["task.wait"] = "任务等待",
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
loadstring(game:HttpGet("https://raw.githubusercontent.com/NodeX-Enc/NodeX/refs/heads/main/Main.lua"))()


end)

if not success then
    warn("加载失败:", err)
end
