-- Made by : https://v3rmillion.net/member.php?action=profile&uid=1642742

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/lime"))()

local w = Library:Window("Main")

local Virtual = game:GetService("VirtualUser")
_G.AutoOpen = false

w:Toggle("ออโต้เปิดไข่น้ำแข็ง 10ฟอง", function(v)
    _G.AutoOpen = v
    if _G.AutoOpen then
        while _G.AutoOpen do
        local args = {
    [1] = "Christmas2024",
    [2] = "gems10"
}

game:GetService("ReplicatedStorage"):WaitForChild("endpoints"):WaitForChild("client_to_server"):WaitForChild("buy_from_banner"):InvokeServer(unpack(args))

        wait()
        end
    end
end)

w:Toggle("ออโต้เปิดไข่ซากาโมโตะ 10ฟอง", function(v)
    _G.AutoOpen = v
    if _G.AutoOpen then
        while _G.AutoOpen do
     local args = {
    [1] = "SakamotoEvent",
    [2] = "gems10"
}

game:GetService("ReplicatedStorage"):WaitForChild("endpoints"):WaitForChild("client_to_server"):WaitForChild("buy_from_banner"):InvokeServer(unpack(args))

        wait()
        end
    end
end)

w:Toggle("ออโต้เปิดไข่Special แบบ10ฟอง", function(v)
    _G.AutoOpen = v
    if _G.AutoOpen then
        while _G.AutoOpen do
     local args = {
    [1] = "EventClover",
    [2] = "gems10"
}

game:GetService("ReplicatedStorage"):WaitForChild("endpoints"):WaitForChild("client_to_server"):WaitForChild("buy_from_banner"):InvokeServer(unpack(args))
        wait()
        end
    end
end)

w:Toggle("ออโต้เปิดไข่Special แบบ1ฟอง", function(v)
    _G.AutoOpen = v
    if _G.AutoOpen then
        while _G.AutoOpen do
     local args = {
    [1] = "EventClover",
    [2] = "gems"
}

game:GetService("ReplicatedStorage"):WaitForChild("endpoints"):WaitForChild("client_to_server"):WaitForChild("buy_from_banner"):InvokeServer(unpack(args))
        wait()
        end
    end
end)

w:Toggle("ออโต้เปิดไข่Legacy แบบ10ฟอง", function(v)
    _G.AutoOpen = v
    if _G.AutoOpen then
        while _G.AutoOpen do
     local args = {
    [1] = "Legacy",
    [2] = "gems10"
}

game:GetService("ReplicatedStorage"):WaitForChild("endpoints"):WaitForChild("client_to_server"):WaitForChild("buy_from_banner"):InvokeServer(unpack(args))

        wait()
        end
    end
end)

w:Button("แปลงเพชรฟ้าเป็นเพชรทอง 400ต่อรอบ", function(v)
    _G.AutoOpen = v
     local args = {
    [1] = 400
}

game:GetService("ReplicatedStorage"):WaitForChild("endpoints"):WaitForChild("client_to_server"):WaitForChild("exchange_legacy_gems"):InvokeServer(unpack(args))
        wait()
end)

w:Button("ยัดกล่องของขวัญ", function(v)
    _G.AutoOpen = v
     
game:GetService("ReplicatedStorage"):WaitForChild("endpoints"):WaitForChild("client_to_server"):WaitForChild("feed_easter_meter"):InvokeServer()
        wait()
end)

w:Toggle("รับของขวัญ", function(v)
    _G.AutoOpen = v
    if _G.AutoOpen then
        while _G.AutoOpen do
     game:GetService("ReplicatedStorage"):WaitForChild("endpoints"):WaitForChild("client_to_server"):WaitForChild("claim_easter_meter"):InvokeServer()
        wait()
        end
    end
end)

