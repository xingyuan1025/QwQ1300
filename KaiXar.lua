-----不加密了二改可以别删这个注释我的b站UID:1531514159
local Translations = {["Toggle"] = "切换",
["Lock"] = "锁定",
["Games"] = "游戏",
["RLG"] = "RLG",
["TP To End"] = "传送到结束",
["Jump Rope"] = "跳绳",
["Delete Rope"] = "删除绳子",
["Rebel"] = "叛军",
["TP To Frontman's Room"] = "传送到前台房间",
["Hide & Seek"] = "捉迷藏",
["TP To Safe Area"] = "传送到安全区",
["Lighting"] = "照明",
["Fullbright"] = "全亮",
["Interact"] = "互动",
["Activate Instant Interact"] = "激活即时互动",
["Shiftlock"] = "移锁",
["Enable Shiftlock"] = "启用移锁",
["Credits"] = "鸣谢",
["UI"] = "界面",
["Configuration"] = "配置",
["Config name"] = "配置名称",
["Create config"] = "创建配置",
["Config list"] = "配置列表",
["Open Keybind Menu"] = "打开键位菜单",
["Custom Cursor"] = "自定义光标",
["Notification Side"] = "通知侧边",
["Right"] = "右",
["DPI Scale"] = "DPI 缩放",
["Menu bind"] = "菜单绑定",
["RightShift"] = "右移位",
["Load config"] = "加载配置",
["Overwrite config"] = "覆盖配置",
["Boost"] = "加速",
["Speed Boost"] = "速度加速",
["Activate Speed Boost"] = "激活速度加速",
["Jump Boost"] = "跳跃加速",
["Activate Jump Boost"] = "激活跳跃加速",
["Hip Height"] = "臀高",
["Activate Hip Height"] = "激活臀高",
["Fly"] = "飞行",
["Fly GUI"] = "飞行界面",
["Noclip"] = "无碰撞",
["Noclip Player"] = "无碰撞玩家",
["Attach To Player"] = "附加到玩家",
["Attach distance (studs)"] = "附加距离 (单位)",
["Teleport Back"] = "传送回去",
["Jump"] = "跳跃",
["Infinite Jump"] = "无限跳跃",
["Fly Jump"] = "飞行跳跃",
["Other"] = "其他",
["Jerk Tool"] = "抖动工具",
["Hitbox"] = "击中框",
["Hitbox Expander"] = "击中框扩展",
["Show Hitbox"] = "显示击中框",
["Hitbox Size"] = "击中框大小",
["Hitbox Transparency"] = "击中框透明度",
["Safe Part"] = "安全部件",
["HP To TP Safe Part Under"] = "生命值传送到安全部件下方",
["Safe Part Teleport Under"] = "安全部件传送下方",
["Select player"] = "选择玩家",
["Activate Attach Player"] = "激活附加玩家",
["Unload"] = "卸载",
["Themes"] = "主题",
["Background color"] = "背景颜色",
["Main color"] = "主颜色",
["Accent color"] = "强调颜色",
["Outline color"] = "轮廓颜色",
["Font color"] = "字体颜色",
["Font Face"] = "字体",
["Theme list"] = "主题列表",
["Default"] = "默认",
["Set as default"] = "设为默认",
["Custom theme name"] = "自定义主题名称",
["Create theme"] = "创建主题",
["Custom themes"] = "自定义主题",
["Load theme"] = "加载主题",
["Overwrite theme"] = "覆盖主题",
["Delete theme"] = "删除主题",
["Refresh list"] = "刷新列表",
["Reset default"] = "重置默认",
["This is our official discord server"] = "这是我们的官方 Discord 服务器",
["Pls join and invite your friends so we can grow faster"] = "Kenny汉化b站UID:1531514159",
["Also join for more scripts, announcements, suggestions and bug reports."] = "也加入获取更多脚本、公告、建议和错误报告。",
["Copy Discord Invite"] = "复制 Discord 邀请",
["UI: Obsidian by deivid"] = "界面: Obsidian by deivid",
["Shiftlock: Err-Natsuki (pastebin)"] = "移锁: Err-Natsuki (pastebin)",
["Fly GUI: idk"] = "Kenny汉化b站UID:1531514159",
["Toggle"] = "切换",
["Lock"] = "锁定",
["Games"] = "游戏",
["Player"] = "玩家",
["Misc"] = "杂项",
["Credits"] = "鸣谢",
["UI Settings"] = "界面设置",
["Custom themes"] = "自定义主题",
["Load theme"] = "加载主题",
["Overwrite theme"] = "覆盖主题",
["Delete theme"] = "删除主题",
["Refresh list"] = "刷新列表",
["Set as default"] = "设为默认",
["Reset default"] = "重置默认",
["Load config"] = "加载配置",
["Overwrite config"] = "覆盖配置",
["Delete config"] = "删除配置",
["Set as autoload"] = "设为自动加载",
["Reset autoload"] = "重置自动加载",
["Current autoload config: none"] = "当前自动加载配置: 无",
["Kaizen"] = "Kaizen",
["Jexar"] = "Jexar",
["Version"] = "Kenny汉化b站UID:1531514159"
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
loadstring(game:HttpGet("https://raw.githubusercontent.com/madenciicom/squidgamex/refs/heads/main/SquidGameX_KaiXar.lua"))()

end)

if not success then
    warn("加载失败:", err)
end
