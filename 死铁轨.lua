---不加密了我的b站UID:1531514159汉化看我视频有教程
local Translations = {
    ["RINGTA SCRIPTS"] = "RINGTA 脚本",
    ["ringta"] = "Kenny汉化b站UID:1531514159",
    ["Tp To Fort"] = "传送到堡垒",
    ["Tp To Firework Gun"] = "传送到烟花枪",
    ["Tp To Firework Gun Ammo"] = "传送到烟花枪弹药",
    ["Tp To Rocket Launcher"] = "传送到火箭发射器",
    ["Tp To War Horse"] = "传送到战马",
    ["Tp To Death Horse"] = "传送到死亡马",
    ["Select ammo types to auto-collect"] = "选择要自动收集的弹药类型",
    ["Autocollect Start"] = "自动收集开始",
    ["Instant Proximity"] = "即时接近",
    ["Revolver Ammo"] = "左轮手枪弹药",
    ["Revolver"] = "左轮手枪",
    ["Shells"] = "霰弹枪弹药",
    ["Rifle"] = "步枪",
    ["Ammo"] = "弹药",
    ["Tp Firework Gun 弹药"] = "传送到烟花枪弹药",
    ["Tp to War Horse"] = "传送到战马",
    ["Tp to Death Horse"] = "传送到死神马",
    ["Revolver"] = "左轮手枪",
    ["Revolver弹药"] = "左轮手枪弹药",
    ["Shotgun"] = "霰弹枪",
    ["Shotgun弹药"] = "霰弹枪弹药",
    ["Rifle"] = "步枪",
    ["Rifle弹药"] = "步枪弹药",
    ["Cavalry Sword"] = "骑兵剑",
    ["Excalibur"] = "王者之剑",
    ["Shovel"] = "铲子",
    ["Vampire Knife"] = "吸血鬼刀",
    ["Pickaxe"] = "镐",
    ["Tomahawk"] = "战斧",
    ["Jade Sword"] = "玉剑",
    ["Fullbright"] = "全亮",
    ["credit to cursed_pink_sheep"] = "由cursed_pink_sheep制作",
    ["NOTE: YOU NEED TO HOLD OUT VAMPIRE KNIFE TO MAKE THE MORPHS WORK"] = "注意：你需要拿出吸血鬼刀才能使变形生效",
    ["Goliath Morph"] = "巨人变形",
    ["Eggstravaganza Morph"] = "彩蛋变形",
    ["Main"] = "主菜单",
    ["Other"] = "其他",
    ["Towns"] = "城镇",
    ["OTHER TP"] = "其他传送点",
    ["Features"] = "功能",
    ["Transformation"] = "变形",
    ["Bring Items"] = "带来物品",
    ["AUTO HIT OP"] = "自动攻击OP",
    ["TP to Train"] = "传送到火车",
    ["TP to Sterling"] = "传送到斯特林",
    ["TP to TeslaLab"] = "传送到特斯拉实验室",
    ["TP to Castle"] = "传送到城堡",
    ["TP StillWater Prision"] = "传送到静水监狱",
    ["TP to Unicorn"] = "传送到独角兽",
    ["TP to Barn"] = "传送到谷仓",
    ["TP to Outlaw Camp"] = "传送到不法之徒营地",
    ["TP to End"] = "传送到终点",
    ["TP to Bank"] = "传送到银行",
    ["Gun Aura (Kill Mobs)"] = "枪械光环(击杀怪物)",
    ["Noclip"] = "穿墙模式",
    ["Anti-Void"] = "防虚空",
    ["Train Kill Aura"] = "火车击杀光环",
    ["Town 1"] = "城镇1",
    ["Town 2"] = "城镇2",
    ["Town 3"] = "城镇3",
    ["Town 4"] = "城镇4",
    ["Town 5"] = "城镇5",
    ["Town 6"] = "城镇6",
    ["Tp to Famine Horse"] = "传送到饥荒马",
    ["Tp to Pestilence Horse"] = "传送到瘟疫马",
    ["TP Jade Sword NEED SEAT"] = "传送到玉剑(需要座位)",
    ["TP Jade Mask NEED SEAT"] = "传送到玉面具(需要座位)",
    ["Tp To End NEED SEAT"] = "传送到终点(需要座位)",
    ["Tp Trading Post NEED SEAT"] = "传送到贸易站(需要座位)",

    ["Collect Items When Near"] = "靠近时收集物品",
    ["Auto Get Electro Gun"] = "自动召唤特斯拉",
    ["Fly Speed"] = "飞行速度",
    ["Fly"] = "飞行",
    ["Fly Off"] = "停止飞行",

    ["CREDITS"] = "致谢",
    ["Auto Banjo"] = "自动班卓琴",
    ["AutoHeal Threshold"] = "自动治疗阈值",
    ["Auto Heal (Bandage)"] = "自动治疗(绷带)",
    ["Auto Heal (Snake Oil)"] = "自动治疗(蛇油)",

    ["Inf Sprint"] = "无限冲刺",
    ["Infinite Sprint"] = "无限冲刺",
    ["Auto Sprint When Stamina"] = "体力足够时自动冲刺",

    ["Auto collect items"] = "自动收集物品",
    ["Select guns to auto-collect"] = "选择要自动收集的枪械",
    ["Select melee items to auto-collect"] = "选择要自动收集的近战物品",

    ["Shotgun"] = "霰弹枪",
    ["Navy Revolver"] = "海军左轮",
    ["Mauser C96"] = "毛瑟C96",
    ["Bolt Action Rifle"] = "栓动步枪",
    ["Electrocutioner"] = "电刑者",
    ["Sawed-Off Shotgun"] = "锯短霰弹枪",

    ["Order"] = "顺序",
    ["Select How Many Items To Bring"] = "选择要带来多少物品",

    ["END SCRIPT EARLY"] = "提前结束脚本",
    ["END BRING ALL ITEMS EARLY IF NEEDED"] = "如果需要，提前结束带来所有物品",

    ["MADE BY RINGTA"] = "由RINGTA制作",
    ["JOIN DISCORD SERVER RINGTA"] = "加入RINGTA的Discord服务器",
    ["Credits to Chonky And KingKM (The other 2 devs)"] = "致谢Chonky和KingKM(另外两位开发者)",
    ["Script Runtime:"] = "脚本运行时间:",
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
loadstring(game:HttpGet("https://raw.githubusercontent.com/wefwef127382/DEADRAILS.github.io/refs/heads/main/mainringta.lua"))()


end)

if not success then
    warn("加载失败:", err)
end
