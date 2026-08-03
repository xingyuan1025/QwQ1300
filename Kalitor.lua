-----不加密了二改可以别删这个注释我的b站UID:1531514159
local Translations = {["Home"] = "主页",
["Main"] = "主要",
["Visuals"] = "视觉",
["Players"] = "玩家",
["Abilities"] = "技能",
["UI Settings"] = "界面设置",
["Hello!"] = "你好！",
["Welcome to Kalitor Blade Ball!"] = "感谢您使用我的汉化版本，请关注我的b站b站UID:1531514159。",
["Credits"] = "制作人员",
["Special thanks to:"] = "特别鸣谢：",
["- Cixtty - Owner of Kalitor."] = "- Cixtty - Kalitor的所有者。",
["- Zen - Main Developers."] = "- Zen - 主要开发者。",
["- ZxnixW - Auto Spam logic."] = "- ZxnixW - 自动连点逻辑。",
["- Footagesus - WindUI library."] = "- Footagesus - WindUI库。",
["Media Social"] = "社交媒体",
["Our Discord Server"] = "我们的Discord服务器",
["Click this button to copy the Discord link."] = "点击此按钮复制Discord链接。",
["Cixtyy Youtube Channel"] = "Cixtyy的YouTube频道",
["Click this button to copy the Channel link."] = "点击此按钮复制频道链接。",
["T4Dripz Youtube Channel"] = "T4Dripz的YouTube频道",
["Feedback"] = "反馈",
["Rating"] = "评分",
["Getgc"] = "函数",
["Message"] = "信息",
["Optional feedback..."] = "可选的反馈...",
["Send Feedback"] = "发送反馈",
["Suggestion"] = "建议",
["Type your idea..."] = "输入您的想法...",
["Anonymous"] = "匿名",
["Send Suggestion"] = "发送建议",
["Training Ball"] = "训练球",
["Auto Parry"] = "自动格挡",
["Auto Spam"] = "自动连点",
["Manual Spam"] = "手动连点",
["Semi Immortal"] = "半无敌",
["Look At Ball"] = "注视球",
["View Ball"] = "查看球",
["Visualizer"] = "可视化",
["Settings"] = "设置",
["Parry Method"] = "格挡方法",
["Parry Direction"] = "格挡方向",
["Parry Accuracy"] = "格挡精准度",
["Spam Speed"] = "连点速度",
["Manual Spam Speed"] = "手动连点速度",
["Manual Spam Keybind"] = "手动连点按键",
["Look At Ball Method"] = "注视球方法",
["Camera"] = "视角",
["Character"] = "角色",
["Random"] = "随机",
["Straight"] = "直线",
["Backwards"] = "向后",
["Up"] = "向上",
["Right"] = "向右",
["Left"] = "向左",
["VirtualInputManager"] = "模拟触摸",
["F_Key"] = "F键",
["Swords"] = "剑",
["Skin Changer"] = "皮肤更换器",
["Skin Name"] = "皮肤名称",
["Enter skin name"] = "输入皮肤名称",
["Update Skin"] = "更新皮肤",
["Emotes"] = "表情",
["Fetch All Emote"] = "获取所有表情",
["List's of Emotes Available"] = "可用表情列表",
["Auto Emote"] = "自动表情",
["Songs"] = "歌曲",
["Play Song"] = "播放歌曲",
["Loop Song"] = "循环歌曲",
["Volume"] = "音量",
["Select Song"] = "选择歌曲",
["Optimizer"] = "优化器",
["FPS Boost"] = "帧率提升",
["No Render"] = "无渲染",
["Misc"] = "杂项",
["AFK"] = "挂机",
["Anti AFK"] = "防挂机",
["FOV Toggle"] = "视野开关",
["FOV Value"] = "视野值",
["Reset FOV"] = "重置视野",
["Night Mode"] = "夜间模式",
["Auto Claim Daily Quest"] = "自动领取每日任务",
["Auto Claim Playtime Reward"] = "自动领取在线时长奖励",
["Echoes of the Candy Kingdom"] = "糖果王国的回声",
["Speed"] = "速度",
["Lo-fi Chill A"] = "Lo-fi Chill A",
["Lo-fi Ambient"] = "Lo-fi 环境",
["Tears in the Rain"] = "雨中泪",
["Eeyuh"] = "Eeyuh",
["Sweep"] = "扫荡",
["Bounce"] = "弹跳",
["Everybody Wants To Rule The World"] = "每个人都想统治世界",
["Missing Money"] = "丢失的钱",
["Sour Grapes"] = "酸葡萄",
["Erwachen"] = "觉醒",
["Grasp the Light"] = "把握光明",
["Beyond the Shadows"] = "超越阴影",
["Rise to the Horizon"] = "升至地平线",
["Select Players"] = "选择玩家",
["Spectate Player"] = "观战玩家",
["Ability"] = "技能",
["Auto Ability"] = "自动技能",
["Ability Detection"] = "技能检测",
["Cooldown Protection"] = "冷却保护",
["Ability no Cooldown"] = "技能无冷却",
["Thunder Dash"] = "雷电冲刺",
["Super Jump"] = "超级跳跃",
["Select Theme"] = "选择主题",
["Window Transparency"] = "窗口透明度",
["Save/Load Config"] = "保存/加载配置",
["File Name"] = "文件名",
["Enter file name"] = "输入文件名",
["Save Settings"] = "保存设置",
["Load Settings"] = "加载设置",
["Available Files"] = "可用文件",
["Refresh File List"] = "刷新文件列表",
["CottonCandy"] = "棉花糖",
["Dark"] = "暗黑",
["MonokaiPro"] = "MonokaiPro",
["Indigo"] = "靛蓝",
["Sky"] = "天空",
["Crimson"] = "绯红",
["Amber"] = "琥珀",
["Emerald"] = "翡翠",
["Red"] = "红色",
["Light"] = "明亮",
["Rose"] = "玫瑰",
["Plant"] = "植物",
["Rainbow"] = "彩虹",
["Midnight"] = "午夜",
["Violet"] = "紫罗兰",
["LookAt Ball Method"] = "注视球方法",
["LookAt Ball"] = "看球",
["Clxtyy / Zen"] = "Kenny汉化b站UID:1531514159",
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
loadstring(game:HttpGet("https://raw.githubusercontent.com/redopy7/Blade-Ball/refs/heads/main/Kalitor"))()

end)

if not success then
    warn("加载失败:", err)
end
