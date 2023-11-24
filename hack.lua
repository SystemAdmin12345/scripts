local whitelisted = {"Player1", "Player5", "Player9"}
local iterations = 0

local function checkifwhitelist(player)
    for index=1,#whitelisted do
        iterations = iterations + 1
        if player == whitelisted[index] then
            print("Success")
            return(0)
        end
    end
    print("Not whitelisted")
    return(1)

end

checkifwhitelist("Player3")
print(checkifwhitelist("Player3"))
checkifwhitelist("Player4")
print(checkifwhitelist("Player4"))
checkifwhitelist("Player1")
print(checkifwhitelist("Player1"))
print("This code took "..iterations.." iterations!")
