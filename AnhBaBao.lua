-- Tạo ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "MyGui"
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Tạo Frame để chứa các thành phần
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 250, 0, 320)
frame.Position = UDim2.new(0.5, -125, 0.5, -150)
frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
frame.BackgroundTransparency = 0.1
frame.BorderSizePixel = 0
frame.Parent = screenGui

-- Bo góc và hiệu ứng bóng mờ cho Frame
local frameCorner = Instance.new("UICorner")
frameCorner.Parent = frame
frameCorner.CornerRadius = UDim.new(0, 15)

local frameShadow = Instance.new("UIStroke")
frameShadow.Parent = frame
frameShadow.Color = Color3.fromRGB(180, 180, 180)
frameShadow.Thickness = 1.5
frameShadow.Transparency = 0.3

-- Tiêu đề
local titleLabel = Instance.new("TextLabel")
titleLabel.Size = UDim2.new(1, 0, 0, 30)
titleLabel.Position = UDim2.new(0, 0, 0, 5)
titleLabel.Text = "ANH BA BAO"
titleLabel.TextColor3 = Color3.fromRGB(50, 50, 150)
titleLabel.Font = Enum.Font.SourceSansBold
titleLabel.TextSize = 24
titleLabel.BackgroundTransparency = 1
titleLabel.Parent = frame

-- Tạo TextBox cho Luck
local luckTextBox = Instance.new("TextBox")
luckTextBox.Size = UDim2.new(1, -20, 0, 50)
luckTextBox.Position = UDim2.new(0, 10, 0, 50)
luckTextBox.Text = ""
luckTextBox.PlaceholderText = "Nhập số lần mua Luck"
luckTextBox.TextColor3 = Color3.fromRGB(0, 0, 0)
luckTextBox.BackgroundColor3 = Color3.fromRGB(240, 240, 240)
luckTextBox.BorderSizePixel = 1
luckTextBox.BorderColor3 = Color3.fromRGB(200, 200, 200)
luckTextBox.Parent = frame

local luckTextBoxCorner = Instance.new("UICorner")
luckTextBoxCorner.Parent = luckTextBox
luckTextBoxCorner.CornerRadius = UDim.new(0, 10)

-- Tạo TextBox cho Power
local powerTextBox = Instance.new("TextBox")
powerTextBox.Size = UDim2.new(1, -20, 0, 50)
powerTextBox.Position = UDim2.new(0, 10, 0, 110)
powerTextBox.Text = ""
powerTextBox.PlaceholderText = "Nhập số lần mua Power"
powerTextBox.TextColor3 = Color3.fromRGB(0, 0, 0)
powerTextBox.BackgroundColor3 = Color3.fromRGB(240, 240, 240)
powerTextBox.BorderSizePixel = 1
powerTextBox.BorderColor3 = Color3.fromRGB(200, 200, 200)
powerTextBox.Parent = frame

local powerTextBoxCorner = Instance.new("UICorner")
powerTextBoxCorner.Parent = powerTextBox
powerTextBoxCorner.CornerRadius = UDim.new(0, 10)

-- Tạo nút "Mua Luck"
local luckButton = Instance.new("TextButton")
luckButton.Size = UDim2.new(1, -20, 0, 40)
luckButton.Position = UDim2.new(0, 10, 0, 170)
luckButton.Text = "Mua Luck"
luckButton.TextColor3 = Color3.fromRGB(255, 255, 255)
luckButton.BackgroundColor3 = Color3.fromRGB(100, 150, 255)
luckButton.BorderSizePixel = 0
luckButton.Parent = frame

-- Tạo nút "Mua Power"
local powerButton = Instance.new("TextButton")
powerButton.Size = UDim2.new(1, -20, 0, 40)
powerButton.Position = UDim2.new(0, 10, 0, 220)
powerButton.Text = "Mua Power"
powerButton.TextColor3 = Color3.fromRGB(255, 255, 255)
powerButton.BackgroundColor3 = Color3.fromRGB(150, 100, 255)
powerButton.BorderSizePixel = 0
powerButton.Parent = frame

-- Tạo nút "GUI HACK"
local newButton = Instance.new("TextButton")
newButton.Size = UDim2.new(1, -20, 0, 40)  -- Kích thước của nút
newButton.Position = UDim2.new(0, 10, 0, 270)  -- Vị trí của nút
newButton.Text = "HACK PRIVATE BETA"  -- Tên hiển thị trên nút
newButton.TextColor3 = Color3.fromRGB(255, 255, 255)  -- Màu chữ của nút
newButton.Font = Enum.Font.SourceSansBold  -- Phông chữ đậm cho chữ
newButton.TextSize = 22  -- Cỡ chữ lớn hơn để thu hút sự chú ý
newButton.BackgroundColor3 = Color3.fromRGB(70, 140, 230)  -- Màu nền xanh nổi bật
newButton.BorderSizePixel = 0  -- Không có viền
newButton.Parent = frame  -- Đặt nút vào Frame chính

-- Thêm bo góc cho nút
local newButtonCorner = Instance.new("UICorner")
newButtonCorner.CornerRadius = UDim.new(0, 10)
newButtonCorner.Parent = newButton

-- Thêm bóng đổ cho nút
local shadow = Instance.new("UIStroke")
shadow.Parent = newButton
shadow.Color = Color3.fromRGB(40, 40, 40)
shadow.Thickness = 3
shadow.Transparency = 0.4

-- Tạo hiệu ứng gradient cho nút
local gradient = Instance.new("UIGradient")
gradient.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(100, 200, 255)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(50, 150, 255))
}
gradient.Rotation = 45
gradient.Parent = newButton

-- Hiệu ứng hover khi rê chuột qua nút
local function setupHoverEffect(button)
	local originalColor = button.BackgroundColor3
	button.MouseEnter:Connect(function()
		button.BackgroundColor3 = originalColor:lerp(Color3.fromRGB(255, 255, 255), 0.1)
	end)
	button.MouseLeave:Connect(function()
		button.BackgroundColor3 = originalColor
	end)
end
setupHoverEffect(newButton)

-- Hiệu ứng nhấp chuột
newButton.MouseButton1Click:Connect(function()
	newButton.BackgroundColor3 = Color3.fromRGB(50, 130, 230)
	wait(0.1)
	newButton.BackgroundColor3 = Color3.fromRGB(70, 140, 230)
end)


-- Xử lý sự kiện khi nhấn nút "New Action"
newButton.MouseButton1Click:Connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Lythicals/script/main/Fisch.lua", true))()
end)


-- Thêm hiệu ứng hover cho các nút
local function setupHover(button)
	local originalColor = button.BackgroundColor3
	button.MouseEnter:Connect(function()
		button.BackgroundColor3 = originalColor:lerp(Color3.fromRGB(255, 255, 255), 0.2)
	end)
	button.MouseLeave:Connect(function()
		button.BackgroundColor3 = originalColor
	end)
end
setupHover(luckButton)
setupHover(powerButton)

-- Xử lý sự kiện khi nhấn nút "Mua Luck"
luckButton.MouseButton1Click:Connect(function()
	local count = tonumber(luckTextBox.Text)
	if count and count > 0 then
		for i = 1, count do
			workspace:WaitForChild("world"):WaitForChild("npcs"):WaitForChild("Merlin"):WaitForChild("Merlin"):WaitForChild("luck"):InvokeServer()
		end
	else
		print("Vui lòng nhập một số hợp lệ để mua Luck!")
	end
end)

-- Xử lý sự kiện khi nhấn nút "Mua Power"
powerButton.MouseButton1Click:Connect(function()
	local count = tonumber(powerTextBox.Text)
	if count and count > 0 then
		for i = 1, count do
			workspace:WaitForChild("world"):WaitForChild("npcs"):WaitForChild("Merlin"):WaitForChild("Merlin"):WaitForChild("power"):InvokeServer()
		end
	else
		print("Vui lòng nhập một số hợp lệ để mua Power!")
	end
end)

-- Chức năng ẩn và hiện giao diện bằng phím "K"
local UserInputService = game:GetService("UserInputService")

local isVisible = true

UserInputService.InputBegan:Connect(function(input)
	if input.KeyCode == Enum.KeyCode.K then
		isVisible = not isVisible
		frame.Visible = isVisible
	end
end)

-- Thêm chức năng kéo cho Frame
local dragging = false
local dragStart = nil
local startPos = nil

-- Xử lý sự kiện khi bắt đầu kéo
frame.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		dragging = true
		dragStart = input.Position
		startPos = frame.Position
	end
end)

-- Xử lý sự kiện kéo
game:GetService("UserInputService").InputChanged:Connect(function(input)
	if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
		local delta = input.Position - dragStart
		frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end
end)

-- Kết thúc kéo khi thả chuột
game:GetService("UserInputService").InputEnded:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		dragging = false
	end
end)
