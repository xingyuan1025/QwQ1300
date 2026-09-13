local main = Instance.new("ScreenGui")  -- 创建主屏幕GUI
local Frame = Instance.new("Frame")  -- 创建主框架
local up = Instance.new("TextButton")  -- 创建上升按钮
local down = Instance.new("TextButton")  -- 创建下降按钮
local onof = Instance.new("TextButton")  -- 创建飞行开关按钮
local TextLabel = Instance.new("TextLabel")  -- 创建标题标签
local plus = Instance.new("TextButton")  -- 创建加速度按钮
local speed = Instance.new("TextLabel")  -- 创建速度显示标签
local mine = Instance.new("TextButton")  -- 创建减速度按钮
local closebutton = Instance.new("TextButton")  -- 创建关闭按钮
local mini = Instance.new("TextButton")  -- 创建最小化按钮
local mini2 = Instance.new("TextButton")  -- 创建恢复按钮

main.Name = "main"  -- 设置主界面的名称
main.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")  -- 放置在玩家的PlayerGui中
main.ZIndexBehavior = Enum.ZIndexBehavior.Sibling  -- 设置Z索引行为
main.ResetOnSpawn = false  -- 重生时不重置

Frame.Parent = main  -- 框架的父级是主界面
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)  -- 背景颜色改为白色
Frame.BorderColor3 = Color3.fromRGB(103, 221, 213)  -- 边框颜色保持原样
Frame.Position = UDim2.new(0.100320168, 0, 0.379746825, 0)  -- 设置位置
Frame.Size = UDim2.new(0, 190, 0, 57)  -- 设置大小

up.Name = "up"  -- 按钮名称
up.Parent = Frame  -- 父级
up.BackgroundColor3 = Color3.fromRGB(255, 255, 255)  -- 背景颜色改为白色
up.Size = UDim2.new(0, 44, 0, 28)  -- 大小
up.Font = Enum.Font.SourceSans  -- 字体
up.Text = "上升"  -- 文本
up.TextColor3 = Color3.fromRGB(0, 0, 0)  -- 文本颜色
up.TextSize = 14.000  -- 文本大小

down.Name = "down"  -- 按钮名称
down.Parent = Frame  -- 父级
down.BackgroundColor3 = Color3.fromRGB(255, 255, 255)  -- 背景颜色改为白色
down.Position = UDim2.new(0, 0, 0.491228074, 0)  -- 位置
down.Size = UDim2.new(0, 44, 0, 28)  -- 大小
down.Font = Enum.Font.SourceSans  -- 字体
down.Text = "下降"  -- 文本
down.TextColor3 = Color3.fromRGB(0, 0, 0)  -- 文本颜色
down.TextSize = 14.000  -- 文本大小

onof.Name = "onof"  -- 按钮名称
onof.Parent = Frame  -- 父级
onof.BackgroundColor3 = Color3.fromRGB(255, 255, 255)  -- 背景颜色改为白色
onof.Position = UDim2.new(0.702823281, 0, 0.491228074, 0)  -- 位置
onof.Size = UDim2.new(0, 56, 0, 28)  -- 大小
onof.Font = Enum.Font.SourceSans  -- 字体
onof.Text = "飞行"  -- 文本
onof.TextColor3 = Color3.fromRGB(0, 0, 0)  -- 文本颜色
onof.TextSize = 14.000  -- 文本大小

TextLabel.Parent = Frame  -- 父级
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)  -- 背景颜色改为白色
TextLabel.Position = UDim2.new(0.469327301, 0, 0, 0)  -- 位置
TextLabel.Size = UDim2.new(0, 100, 0, 28)  -- 大小
TextLabel.Font = Enum.Font.SourceSans  -- 字体
TextLabel.Text = "飞行"  -- 文本
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)  -- 文本颜色
TextLabel.TextScaled = true  -- 文本缩放
TextLabel.TextSize = 14.000  -- 文本大小
TextLabel.TextWrapped = true  -- 文本换行

plus.Name = "plus"  -- 按钮名称
plus.Parent = Frame  -- 父级
plus.BackgroundColor3 = Color3.fromRGB(255, 255, 255)  -- 背景颜色改为白色
plus.Position = UDim2.new(0.231578946, 0, 0, 0)  -- 位置
plus.Size = UDim2.new(0, 45, 0, 28)  -- 大小
plus.Font = Enum.Font.SourceSans  -- 字体
plus.Text = "+"  -- 文本
plus.TextColor3 = Color3.fromRGB(0, 0, 0)  -- 文本颜色
plus.TextScaled = true  -- 文本缩放
plus.TextSize = 14.000  -- 文本大小
plus.TextWrapped = true  -- 文本换行

speed.Name = "speed"  -- 标签名称
speed.Parent = Frame  -- 父级
speed.BackgroundColor3 = Color3.fromRGB(255, 255, 255)  -- 背景颜色改为白色
speed.Position = UDim2.new(0.468421042, 0, 0.491228074, 0)  -- 位置
speed.Size = UDim2.new(0, 44, 0, 28)  -- 大小
speed.Font = Enum.Font.SourceSans  -- 字体
speed.Text = "1"  -- 初始文本
speed.TextColor3 = Color3.fromRGB(0, 0, 0)  -- 文本颜色
speed.TextScaled = true  -- 文本缩放
speed.TextSize = 14.000  -- 文本大小
speed.TextWrapped = true  -- 文本换行

mine.Name = "mine"  -- 按钮名称
mine.Parent = Frame  -- 父级
mine.BackgroundColor3 = Color3.fromRGB(255, 255, 255)  -- 背景颜色改为白色
mine.Position = UDim2.new(0.231578946, 0, 0.491228074, 0)  -- 位置
mine.Size = UDim2.new(0, 45, 0, 29)  -- 大小
mine.Font = Enum.Font.SourceSans  -- 字体
mine.Text = "-"  -- 文本
mine.TextColor3 = Color3.fromRGB(0, 0, 0)  -- 文本颜色
mine.TextScaled = true  -- 文本缩放
mine.TextSize = 14.000  -- 文本大小
mine.TextWrapped = true  -- 文本换行

closebutton.Name = "Close"  -- 按钮名称
closebutton.Parent = main.Frame  -- 父级
closebutton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)  -- 背景颜色改为白色
closebutton.Font = "SourceSans"  -- 字体
closebutton.Size = UDim2.new(0, 45, 0, 28)  -- 大小
closebutton.Text = "×"  -- 文本
closebutton.TextSize = 30  -- 文本大小
closebutton.Position =  UDim2.new(0, 0, -1, 27)  -- 位置

mini.Name = "minimize"  -- 按钮名称
mini.Parent = main.Frame  -- 父级
mini.BackgroundColor3 = Color3.fromRGB(255, 255, 255)  -- 背景颜色改为白色
mini.Font = "SourceSans"  -- 字体
mini.Size = UDim2.new(0, 45, 0, 28)  -- 大小
mini.Text = "-"  -- 文本
mini.TextSize = 40  -- 文本大小
mini.Position = UDim2.new(0, 44, -1, 27)  -- 位置

mini2.Name = "minimize2"  -- 按钮名称
mini2.Parent = main.Frame  -- 父级
mini2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)  -- 背景颜色改为白色
mini2.Font = "SourceSans"  -- 字体
mini2.Size = UDim2.new(0, 45, 0, 28)  -- 大小
mini2.Text = "+"  -- 文本
mini2.TextSize = 40  -- 文本大小
mini2.Position = UDim2.new(0, 44, -1, 57)  -- 位置
mini2.Visible = false  -- 初始不可见

speeds = 1  -- 初始速度值

local speaker = game:GetService("Players").LocalPlayer  -- 获取本地玩家

local chr = game.Players.LocalPlayer.Character  -- 获取角色
local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")  -- 获取Humanoid

nowe = false  -- 飞行状态标志

Frame.Active = true  -- 框架激活
Frame.Draggable = true  -- 框架可拖拽

-- 飞行开关按钮事件
onof.MouseButton1Down:connect(function()

	if nowe == true then
		nowe = false  -- 关闭飞行

		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing,true)  -- 恢复爬墙状态
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown,true)  -- 恢复跌落状态
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying,true)  -- 恢复飞行状态
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall,true)  -- 恢复自由落体
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp,true)  -- 恢复起立
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping,true)  -- 恢复跳跃
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed,true)  -- 恢复落地
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics,true)  -- 恢复物理
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding,true)  -- 恢复平台站立
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,true)  -- 恢复布娃娃
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Running,true)  -- 恢复跑步
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics,true)  -- 恢复无物理跑步
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated,true)  -- 恢复坐下
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics,true)  -- 恢复无物理侧移
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming,true)  -- 恢复游泳
		speaker.Character.Humanoid:ChangeState(Enum.HumanoidStateType.RunningNoPhysics)  -- 切换到无物理跑步状态
	else 
		nowe = true  -- 开启飞行



		for i = 1, speeds do
			spawn(function()  -- 创建线程实现瞬移行走

				local hb = game:GetService("RunService").Heartbeat	-- 获取心跳服务


				tpwalking = true  -- 瞬移行走标志
				local chr = game.Players.LocalPlayer.Character  -- 重新获取角色
				local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")  -- 重新获取Humanoid
				while tpwalking and hb:Wait() and chr and hum and hum.Parent do
					if hum.MoveDirection.Magnitude > 0 then
						chr:TranslateBy(hum.MoveDirection)  -- 根据移动方向瞬移
					end
				end

			end)
		end
		game.Players.LocalPlayer.Character.Animate.Disabled = true  -- 禁用动画
		local Char = game.Players.LocalPlayer.Character  -- 获取角色
		local Hum = Char:FindFirstChildOfClass("Humanoid") or Char:FindFirstChildOfClass("AnimationController")  -- 获取Humanoid或动画控制器

		for i,v in next, Hum:GetPlayingAnimationTracks() do
			v:AdjustSpeed(0)  -- 暂停所有动画轨道
		end
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing,false)  -- 禁用爬墙
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown,false)  -- 禁用跌落
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying,false)  -- 禁用飞行
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall,false)  -- 禁用自由落体
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp,false)  -- 禁用起立
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping,false)  -- 禁用跳跃
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed,false)  -- 禁用落地
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics,false)  -- 禁用物理
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding,false)  -- 禁用平台站立
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,false)  -- 禁用布娃娃
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Running,false)  -- 禁用跑步
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics,false)  -- 禁用无物理跑步
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated,false)  -- 禁用坐下
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics,false)  -- 禁用无物理侧移
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming,false)  -- 禁用游泳
		speaker.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Swimming)  -- 切换到游泳状态
	end




	if game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").RigType == Enum.HumanoidRigType.R6 then  -- 检查角色类型为R6



		local plr = game.Players.LocalPlayer  -- 获取玩家
		local torso = plr.Character.Torso  -- 获取躯干
		local flying = true  -- 飞行标志
		local deb = true  -- 防抖标志
		local ctrl = {f = 0, b = 0, l = 0, r = 0}  -- 控制方向
		local lastctrl = {f = 0, b = 0, l = 0, r = 0}  -- 上次控制方向
		local maxspeed = 50  -- 最大速度
		local speed = 0  -- 当前速度


		local bg = Instance.new("BodyGyro", torso)  -- 创建BodyGyro控制旋转
		bg.P = 9e4  -- 设置P值
		bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)  -- 最大扭矩
		bg.cframe = torso.CFrame  -- 设置CFrame
		local bv = Instance.new("BodyVelocity", torso)  -- 创建BodyVelocity控制速度
		bv.velocity = Vector3.new(0,0.1,0)  -- 初始速度
		bv.maxForce = Vector3.new(9e9, 9e9, 9e9)  -- 最大力
		if nowe == true then
			plr.Character.Humanoid.PlatformStand = true  -- 设置平台站立
		end
		while nowe == true or game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0 do  -- 飞行循环
			game:GetService("RunService").RenderStepped:Wait()  -- 等待渲染步

			if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then  -- 如果有方向输入
				speed = speed+.5+(speed/maxspeed)  -- 加速
				if speed > maxspeed then
					speed = maxspeed  -- 限制最大速度
				end
			elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then  -- 无输入减速
				speed = speed-1
				if speed < 0 then
					speed = 0
				end
			end
			if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then  -- 更新速度向量
				bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
				lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
			elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
				bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
			else
				bv.velocity = Vector3.new(0,0,0)  -- 停止
			end
			--	game.Players.LocalPlayer.Character.Animate.Disabled = true
			bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)  -- 更新旋转
		end
		ctrl = {f = 0, b = 0, l = 0, r = 0}  -- 重置控制
		lastctrl = {f = 0, b = 0, l = 0, r = 0}
		speed = 0
		bg:Destroy()  -- 销毁BodyGyro
		bv:Destroy()  -- 销毁BodyVelocity
		plr.Character.Humanoid.PlatformStand = false  -- 恢复平台站立
		game.Players.LocalPlayer.Character.Animate.Disabled = false  -- 恢复动画
		tpwalking = false  -- 关闭瞬移行走




	else  -- R15角色类型
		local plr = game.Players.LocalPlayer
		local UpperTorso = plr.Character.UpperTorso  -- 获取上躯干
		local flying = true
		local deb = true
		local ctrl = {f = 0, b = 0, l = 0, r = 0}
		local lastctrl = {f = 0, b = 0, l = 0, r = 0}
		local maxspeed = 50
		local speed = 0


		local bg = Instance.new("BodyGyro", UpperTorso)
		bg.P = 9e4
		bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
		bg.cframe = UpperTorso.CFrame
		local bv = Instance.new("BodyVelocity", UpperTorso)
		bv.velocity = Vector3.new(0,0.1,0)
		bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
		if nowe == true then
			plr.Character.Humanoid.PlatformStand = true
		end
		while nowe == true or game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0 do
			wait()  -- 等待

			if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
				speed = speed+.5+(speed/maxspeed)
				if speed > maxspeed then
					speed = maxspeed
				end
			elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
				speed = speed-1
				if speed < 0 then
					speed = 0
				end
			end
			if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
				bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
				lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
			elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
				bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
			else
				bv.velocity = Vector3.new(0,0,0)
			end

			bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
		end
		ctrl = {f = 0, b = 0, l = 0, r = 0}
		lastctrl = {f = 0, b = 0, l = 0, r = 0}
		speed = 0
		bg:Destroy()
		bv:Destroy()
		plr.Character.Humanoid.PlatformStand = false
		game.Players.LocalPlayer.Character.Animate.Disabled = false
		tpwalking = false



	end





end)

local tis  -- 上升连接变量

-- 上升按钮事件
up.MouseButton1Down:connect(function()
	tis = up.MouseEnter:connect(function()
		while tis do
			wait()  -- 等待
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,1,0)  -- 向上移动
		end
	end)
end)

-- 离开上升按钮事件
up.MouseLeave:connect(function()
	if tis then
		tis:Disconnect()  -- 断开连接
		tis = nil
	end
end)

local dis  -- 下降连接变量

-- 下降按钮事件
down.MouseButton1Down:connect(function()
	dis = down.MouseEnter:connect(function()
		while dis do
			wait()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,-1,0)  -- 向下移动
		end
	end)
end)

-- 离开下降按钮事件
down.MouseLeave:connect(function()
	if dis then
		dis:Disconnect()
		dis = nil
	end
end)


-- 角色重生事件
game:GetService("Players").LocalPlayer.CharacterAdded:Connect(function(char)
	wait(0.7)  -- 等待0.7秒
	game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false  -- 恢复平台站立
	game.Players.LocalPlayer.Character.Animate.Disabled = false  -- 恢复动画

end)


-- 加速度按钮事件
plus.MouseButton1Down:connect(function()
	speeds = speeds + 1  -- 增加速度
	speed.Text = speeds  -- 更新显示
	if nowe == true then  -- 如果飞行中


		tpwalking = false  -- 关闭瞬移行走
		for i = 1, speeds do
			spawn(function()  -- 创建新线程

				local hb = game:GetService("RunService").Heartbeat	-- 获取心跳


				tpwalking = true
				local chr = game.Players.LocalPlayer.Character
				local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
				while tpwalking and hb:Wait() and chr and hum and hum.Parent do
					if hum.MoveDirection.Magnitude > 0 then
						chr:TranslateBy(hum.MoveDirection)
					end
				end

			end)
		end
	end
end)

-- 减速度按钮事件
mine.MouseButton1Down:connect(function()
	if speeds == 1 then
		speed.Text = '不能小于1'  -- 显示提示
		wait(1)  -- 等待1秒
		speed.Text = speeds  -- 恢复显示
	else
		speeds = speeds - 1  -- 减少速度
		speed.Text = speeds
		if nowe == true then
			tpwalking = false
			for i = 1, speeds do
				spawn(function()

					local hb = game:GetService("RunService").Heartbeat	


					tpwalking = true
					local chr = game.Players.LocalPlayer.Character
					local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
					while tpwalking and hb:Wait() and chr and hum and hum.Parent do
						if hum.MoveDirection.Magnitude > 0 then
							chr:TranslateBy(hum.MoveDirection)
						end
					end

				end)
			end
		end
	end
end)

-- 关闭按钮事件
closebutton.MouseButton1Click:Connect(function()
	main:Destroy()  -- 销毁主界面
end)

-- 最小化按钮事件
mini.MouseButton1Click:Connect(function()
	up.Visible = false  -- 隐藏上升按钮
	down.Visible = false
	onof.Visible = false
	plus.Visible = false
	speed.Visible = false
	mine.Visible = false
	mini.Visible = false
	mini2.Visible = true  -- 显示恢复按钮
	main.Frame.BackgroundTransparency = 1  -- 框架透明
	closebutton.Position =  UDim2.new(0, 0, -1, 57)  -- 调整关闭按钮位置
end)

-- 恢复按钮事件
mini2.MouseButton1Click:Connect(function()
	up.Visible = true  -- 显示上升按钮
	down.Visible = true
	onof.Visible = true
	plus.Visible = true
	speed.Visible = true
	mine.Visible = true
	mini.Visible = true
	mini2.Visible = false
	main.Frame.BackgroundTransparency = 0   -- 框架不透明
	closebutton.Position =  UDim2.new(0, 0, -1, 27)  -- 调整关闭按钮位置
end)