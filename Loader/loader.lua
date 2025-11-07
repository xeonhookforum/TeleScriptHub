local text1 = [[

.___________. _______  __       _______     _______.  ______ .______       __  .______   .___________.
|           ||   ____||  |     |   ____|   /       | /      ||   _  \     |  | |   _  \  |           |
`---|  |----`|  |__   |  |     |  |__     |   (----`|  ,----'|  |_)  |    |  | |  |_)  | `---|  |----`
    |  |     |   __|  |  |     |   __|     \   \    |  |     |      /     |  | |   ___/      |  |
    |  |     |  |____ |  `----.|  |____.----)   |   |  `----.|  |\  \----.|  | |  |          |  |
    |__|     |_______||_______||_______|_______/     \______|| _| `._____||__| | _|          |__|                                      
]]
print(text1)
print("https://discord.gg/7GwpF9e3Xf")
print("https://discord.gg/7GwpF9e3Xf")
print("https://discord.gg/7GwpF9e3Xf")
print("https://discord.gg/7GwpF9e3Xf")
print("https://discord.gg/7GwpF9e3Xf")
print("https://discord.gg/7GwpF9e3Xf")
print("https://discord.gg/7GwpF9e3Xf")
wait(1)

if usedev == true then
    wait(1)
    warn("beta-dev")
    if IsTeleScriptRunning == true and debug == false then
        error("Only one hub at time can be working! If more executed it could break whole hub!")
    else
        loadstring(game:HttpGet("https://raw.githubusercontent.com/xeonhookforum/TeleScriptHub/refs/heads/main/Dev/newest_recode.lua"))()
    end
else
    wait(1)
    warn("beta-public")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xeonhookforum/TeleScriptHub/refs/heads/main/Public/newest_recode.lua"))()
end