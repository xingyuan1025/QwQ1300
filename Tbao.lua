-----不加密了二改可以别删这个注释我的b站UID:1531514159
local Translations = {
["Always auto"]= "总是自动",
["Enabled esp"]= "启用透视",
["Enabled hitbox"]= "启用命中框",
["Enabled jump"]= "启用跳跃",
["Enabled speed"]= "启用速度",
["Esp"]= "透视",
["Esp box"]= "透视方框",
["Esp name"]= "透视名称",
["Esp tracer"]= "透视追踪线",
["Fast reload"]= "快速换弹",
["Fire rate"]= "射速",
["Front Catalans"]= "前部LED",
["Gun"]= "枪械",
["Htibox"]= "命中框",
["transparency"]= "透明度",
["value"]= "值",
["Inf ammon"]= "无限弹药",
["Info"]= "信息",
["Input available to the team"]= "输入可用于团队",
["Jump value"]= "跳跃值",
["Kill"]= "击杀",
["Kill all"]= "全部击杀",
["Main"]= "主要",
["Million of Machine Gun"]= "百万机枪",
["Misc"]= "杂项",
["Modip"]= "修改",
["No collision"]= "无碰撞",
["No recoil"]= "无后坐力",
["No spread"]= "无扩散",
["Speed value"]= "速度值",
["Team check"]= "团队检查",
["Textual variables"]= "文本变量",
["The front LED is defined."]= "前部LED已定义。",
["Top sheet to scroll"]= "顶部表格滚动",
["Tbao Hub | Arsenal"]= "Tbao中心 |Kenny汉化b站UID:1531514159",
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
loadstring(game:HttpGet("https://raw.githubusercontent.com/tbao143/thaibao/main/TbaoHubArsenal"))()

end)

if not success then
    warn("加载失败:", err)
end
