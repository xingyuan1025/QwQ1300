-----不加密了二改可以别删这个注释我的b站UID:1531514159
local Translations = {["Configuration"] = "配置",
["Market"] = "商店",
["Native"] = "Kenny汉化b站UID:1531514159",
["Autos"] = "自动",
["Miscellaneous"] = "杂项",
["Settings"] = "设置",
["Debug"] = "调试",
["Combat"] = "战斗",
["Auto Parry"] = "自动格挡",
["Auto Spam Parry"] = "自动连续格挡",
["Auto Ability"] = "自动技能",
["Modifier"] = "修改器",
["Field of View"] = "视野",
["Max Zoom"] = "最大缩放",
["Ping Compensation Multiplier"] = "延迟补偿倍率",
["Perfect Parry"] = "完美格挡",
["Perfect Parry Multiplier"] = "完美格挡倍率",
["Infinite Jump"] = "无限跳跃",
["No Dash Cooldown"] = "无冲刺冷却",
["Keybinds"] = "按键绑定",
["Summon"] = "召唤",
["Auto Purchase"] = "自动购买",
["Banner"] = "横幅",
["None"] = "无",
["Aura"] = "光环",
["Corrupted"] = "腐化",
["Cyber"] = "赛博",
["Divine"] = "神圣",
["Emote"] = "表情",
["Explosion"] = "爆炸",
["Finisher"] = "终结技",
["Inferno"] = "炼狱",
["Legacy"] = "传承",
["Limited1"] = "限定1",
["Limited2"] = "限定2",
["Limited3"] = "限定3",
["Limited4"] = "限定4",
["Pose"] = "姿势",
["Premium1"] = "特级1",
["Spray"] = "喷漆",
["Standard"] = "标准",
["Quest"] = "任务",
["Auto Claim Quest"] = "自动领取任务",
["Fruit"] = "果实",
["Auto Fruit"] = "自动果实",
["Fruits"] = "果实",
["Sword"] = "剑",
["Configuration"] = "配置",
["Quest"] = "任务",
["Auto Claim Quest"] = "自动领取任务",
["Double Gems"] = "双倍宝石",
["Double Luck"] = "双倍运气",
["Double XP"] = "双倍经验",
["Fruit"] = "水果",
["Auto Fruit"] = "自动水果",
["Fruits"] = "水果",
["Placeholder"] = "占位符",
["Sword"] = "剑",
["Delete Sword"] = "删除剑",
["Swords"] = "剑",
["Autos"] = "自动",
["Miscellaneous"] = "杂项",
["Settings"] = "设置",
["Debug"] = "调试",
["Visual"] = "视觉",
["Clone Ball"] = "克隆球",
["Deflect"] = "偏转",
["Thresholds"] = "阈值",
["Anti AFK"] = "反AFK",
["Auto Rejoin (In Development)"] = "自动重新加入（开发中）",
["Mod Detection"] = "模组检测",
["Warning"] = "警告",
["Game"] = "游戏",
["Others"] = "其他",
["Player"] = "玩家",
["Join JobId"] = "加入JobId",
["JobId..."] = "JobId...",
["Hide Identity"] = "隐藏身份",
["Hide All Characters"] = "隐藏所有角色",
["Boost FPS"] = "提升FPS",
["Auto Join Match"] = "自动加入匹配",
["Claim All Jiro Cards"] = "领取所有Jiro卡",
["Leave"] = "离开",
["None"] = "无",
["Main"] = "主要",
["Save Settings"] = "保存设置",
["Reset Settings"] = "重置设置",
["Copy Settings"] = "复制设置",
["Silent Execution"] = "静默执行",
["FPS"] = "FPS",
["Infinite Yield"] = "无限Yield",
["Market"] = "市场",
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
