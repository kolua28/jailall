local plr = game.Players.LocalPlayer
local friendslist = {}
local frdtrfs = true
--[[for _,guis in plr.PlayerGui:GetDescendants() do
	if guis.ClassName == 'Frame' or guis.ClassName == 'TextLabel' or guis.ClassName == 'ScrollingFrame' or guis.ClassName == 'ImageLabel' then
		guis.BackgroundColor3 = Color3.new(0.333333, 0, 0)
	elseif guis.ClassName == 'TextButton' or guis.ClassName == 'ImageButton' or guis.ClassName == 'TextBox' then
		guis.BackgroundColor3 = Color3.new(0.666667, 0, 0)
	end
	if guis.ClassName == 'Frame' or guis.ClassName == 'ScrollingFrame' then
		guis.BorderColor3 = Color3.new(1, 0, 0)
		guis.BorderSizePixel = 3
	end
	if guis.ClassName == 'UIGradient' or guis.ClassName == 'UIStroke' or guis.ClassName == 'UICorner' then
		guis:Destroy()
	end
	if guis.ClassName == 'TextLabel' then
		guis.TextColor3 = Color3.new(1,0,0)
	end
	if guis.ClassName == 'TextLabel' or guis.ClassName == 'TextButton' then
		guis.Font = Enum.Font.RobotoMono
	end
end
]]
local main = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
main.Name = "main"
main.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
main.IgnoreGuiInset = true
main.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
main.ResetOnSpawn = false 

Frame.Parent = main
Frame.Position = UDim2.new(0.2,0,0.5,0)
Frame.Size = UDim2.new(0.2,0,0,0)
Frame.BackgroundColor3 = Color3.new(0.333333, 0, 0)
Frame.BorderColor3 = Color3.new(1, 0, 0)
Frame.BorderSizePixel = 0
Frame.Active = true
Frame.Draggable = true
--local ui = Instance.new('UIListLayout',Frame)
game:GetService('TweenService'):Create(Frame,TweenInfo.new(1,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut),{Size = UDim2.new(0.2,0,0.25,0)}):Play()
Frame.BorderSizePixel = 3
wait(1)
local button = Instance.new('TextButton')
button.Text = 'Jail all'
button.Font = Enum.Font.RobotoMono
button.BackgroundColor3 = Color3.new(0.666667, 0, 0)
button.BorderSizePixel = 0
button.TextScaled = true
button.Parent = Frame
button.Size = UDim2.new(0.5,0,0.25,0)
button.Position = UDim2.new(0,0,0.25,0)
local button2 = Instance.new('TextButton')
button2.Text = 'Lock all'
button2.Font = Enum.Font.RobotoMono
button2.BackgroundColor3 = Color3.new(0.666667, 0, 0)
button2.BorderSizePixel = 0
button2.TextScaled = true
button2.Parent = Frame
button2.Size = UDim2.new(0.5,0,0.25,0)
button2.Position = UDim2.new(0.5,0,0.25,0)
local button1 = Instance.new('TextBox')
button1.Text = 'NAME'
button1.Font = Enum.Font.RobotoMono
button1.BackgroundColor3 = Color3.new(0.666667, 0, 0)
button1.BorderSizePixel = 0
button1.TextScaled = true
button1.Parent = Frame
button1.Size = UDim2.new(0.5,0,0.25,0)
local button1i = Instance.new('TextButton')
button1i.Text = 'Jail plr'
button1i.Font = Enum.Font.RobotoMono
button1i.BackgroundColor3 = Color3.new(0.952941, 0, 0)
button1i.BorderSizePixel = 0
button1i.TextScaled = true
button1i.Parent = button1
button1i.Size = UDim2.new(0.3,0,1,0)
button1i.Position = UDim2.new(1,0,0,0)
local button2i = Instance.new('TextButton')
button2i.Text = 'Inf Jail plr'
button2i.Font = Enum.Font.RobotoMono
button2i.BackgroundColor3 = Color3.new(0.952941, 0, 0)
button2i.BorderSizePixel = 0
button2i.TextScaled = true
button2i.Parent = button1
button2i.Size = UDim2.new(0.3,0,1,0)
button2i.Position = UDim2.new(1.35,0,0,0)
local button3i = Instance.new('TextButton')
button3i.Text = 'Lock plr'
button3i.Font = Enum.Font.RobotoMono
button3i.BackgroundColor3 = Color3.new(0.952941, 0, 0)
button3i.BorderSizePixel = 0
button3i.TextScaled = true
button3i.Parent = button1
button3i.Size = UDim2.new(0.3,0,1,0)
button3i.Position = UDim2.new(1.7,0,0,0)
local button4i = Instance.new('TextButton')
button4i.Text = 'Safe plr'
button4i.Font = Enum.Font.RobotoMono
button4i.BackgroundColor3 = Color3.new(0.333333, 1, 0.498039)
button4i.BorderSizePixel = 0
button4i.TextScaled = true
button4i.Parent = button1
button4i.Size = UDim2.new(0.3,0,1,0)
button4i.Position = UDim2.new(2.1,0,0,0)
local button5i = Instance.new('TextButton')
button5i.Text = 'Del plr'
button5i.Font = Enum.Font.RobotoMono
button5i.BackgroundColor3 = Color3.new(0.333333, 1, 0.498039)
button5i.BorderSizePixel = 0
button5i.TextScaled = true
button5i.Parent = button1
button5i.Size = UDim2.new(0.3,0,1,0)
button5i.Position = UDim2.new(2.1,0,1,0)
local text = Instance.new('TextLabel')
text.Text = '0'
text.Font = Enum.Font.RobotoMono
text.TextColor3 = Color3.new(1, 0, 0)
text.BackgroundTransparency = 1
text.BorderSizePixel = 0
text.TextScaled = true
text.Parent = Frame
text.Size = UDim2.new(1,0,0.5,0)
text.Position = UDim2.new(0,0,0.5,0)

game.StarterGui:SetCore('SendNotification',{Title = 'Loaded script';Text = 'SCRIPT BY KOLUA28';Icon = 'http://www.roblox.com/asset/?id=11982227421';})

function jailall()
	for i,v in game.Players:GetChildren() do
		frdtrfs = true
		if v.Name == plr.Name then
		frdtrfs = false
		end
			for _, frd in friendslist do
				if v.Name == frd then
					frdtrfs = false
				end
			end
		if frdtrfs == true then
			game.ReplicatedStorage.JailPlayer:FireServer(v)
		end
		text.Text = i
	end
	game:GetService('TweenService'):Create(text,TweenInfo.new(0.3,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut,0,true,0.3),{TextColor3 = Color3.new(0,1,0)}):Play()
end
function jailplr()
	for ppp,plrs in game.Players:GetChildren() do
		if plrs.Name == button1.Text then
			game.ReplicatedStorage.JailPlayer:FireServer(game.Players:FindFirstChild(plrs.Name))
			text.Text = 1
			game.StarterGui:SetCore('SendNotification',{Title = 'Player';Text = plrs.Name;Icon = 'http://www.roblox.com/asset/?id=11982227421';})
		elseif plrs.DisplayName == button1.Text then
			game.ReplicatedStorage.JailPlayer:FireServer(game.Players:FindFirstChild(plrs.Name))
			text.Text = 1
			game.StarterGui:SetCore('SendNotification',{Title = 'Player';Text = plrs.DisplayName;Icon = 'http://www.roblox.com/asset/?id=11982227421';})
		end
	end
	game:GetService('TweenService'):Create(text,TweenInfo.new(0.3,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut,0,true,0.3),{TextColor3 = Color3.new(0,1,0)}):Play()
	task.wait(1)
	text.Text = 0
end
function infjailplr()
	for ppp,plrs in game.Players:GetChildren() do
		if plrs.Name == button1.Text then
			for spam = 1,30 do
			game.ReplicatedStorage.JailPlayer:FireServer(game.Players:FindFirstChild(plrs.Name))
			end
			text.Text = 1
			game.StarterGui:SetCore('SendNotification',{Title = 'Player';Text = plrs.Name;Icon = 'http://www.roblox.com/asset/?id=11982227421';})
		elseif plrs.DisplayName == button1.Text then
			for spam = 1,30 do
			game.ReplicatedStorage.JailPlayer:FireServer(game.Players:FindFirstChild(plrs.Name))
			end
			text.Text = 1
			game.StarterGui:SetCore('SendNotification',{Title = 'Player';Text = plrs.DisplayName;Icon = 'http://www.roblox.com/asset/?id=11982227421';})
		end
	end
	game:GetService('TweenService'):Create(text,TweenInfo.new(0.3,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut,0,true,0.3),{TextColor3 = Color3.new(0,1,0)}):Play()
	task.wait(1)
	text.Text = 0
end
function lockplr()
	for ppp,plrs in game.Players:GetChildren() do
		if plrs.Name == button1.Text then
			for spam = 1,250 do
			game.ReplicatedStorage.JailPlayer:FireServer(game.Players:FindFirstChild(plrs.Name))
			end
			text.Text = 1
			game.StarterGui:SetCore('SendNotification',{Title = 'Player';Text = plrs.Name;Icon = 'http://www.roblox.com/asset/?id=11982227421';})
		elseif plrs.DisplayName == button1.Text then
			for spam = 1,250 do
			game.ReplicatedStorage.JailPlayer:FireServer(game.Players:FindFirstChild(plrs.Name))
			end
			text.Text = 1
			game.StarterGui:SetCore('SendNotification',{Title = 'Player';Text = plrs.DisplayName;Icon = 'http://www.roblox.com/asset/?id=11982227421';})
		end
	end
	game:GetService('TweenService'):Create(text,TweenInfo.new(0.3,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut,0,true,0.3),{TextColor3 = Color3.new(0,1,0)}):Play()
	task.wait(1)
	text.Text = 0
end
function lockall()
	for spam = 1,1000 do
	for i,v in game.Players:GetChildren() do
			frdtrfs = true
			if v.Name == plr.Name then
				frdtrfs = false
			end
			for _, frd in friendslist do
				if v.Name == frd then
					frdtrfs = false
				end
			end
			if frdtrfs == true then
				game.ReplicatedStorage.JailPlayer:FireServer(v)
			end
	end
	end
end
function safeplr()
	for ppp,plrs in game.Players:GetChildren() do
		if plrs.Name == button1.Text then
			table.insert(friendslist,plrs.Name)	
			text.Text = 1
			game.StarterGui:SetCore('SendNotification',{Title = 'Player';Text = plrs.Name;Icon = 'http://www.roblox.com/asset/?id=11982227421';})
		elseif plrs.DisplayName == button1.Text then
			table.insert(friendslist,plrs.Name)
			text.Text = 1
			game.StarterGui:SetCore('SendNotification',{Title = 'Player';Text = plrs.DisplayName;Icon = 'http://www.roblox.com/asset/?id=11982227421';})
		end
	end
	for _,checkfrd in friendslist do
	print(checkfrd)
	end
	game:GetService('TweenService'):Create(text,TweenInfo.new(0.3,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut,0,true,0.3),{TextColor3 = Color3.new(0,1,0)}):Play()
	task.wait(1)
	text.Text = 0
end
function deleteplr()
			for frdnum,friend in friendslist do
				if friend == button1.Text then
					table.remove(friendslist,frdnum)
				text.Text = 1
			end
			game.StarterGui:SetCore('SendNotification',{Title = 'Player';Text = button1.Text;Icon = 'http://www.roblox.com/asset/?id=11982227421';})
			end
	for _,checkfrd in friendslist do
		warn(checkfrd)
	end
	game:GetService('TweenService'):Create(text,TweenInfo.new(0.3,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut,0,true,0.3),{TextColor3 = Color3.new(0,1,0)}):Play()
	task.wait(1)
	text.Text = 0
end
button1i.Activated:Connect(jailplr)
button2i.Activated:Connect(infjailplr)
button3i.Activated:Connect(lockplr)
button4i.Activated:Connect(safeplr)
button5i.Activated:Connect(deleteplr)
button.Activated:Connect(jailall)
button2.Activated:Connect(lockall)
