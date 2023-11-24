local whitelisted = {"Player1", "Player5", "Player9", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k"}
local check = {}
local val = 0
local iterations = 0

local function checkifwhitelist(player)

    while true do
        iterations = iterations + 1
        val = math.random(1,#whitelisted)

        if player == whitelisted[val] then
            print("Success")
            check[val] = "1"
            return(0)
        else
            check[val] = "0"
        end

        if #check == #whitelisted then
            print("Not whitelisted")
            check = {}
            return(1)
        end

    end
end

checkifwhitelist("Player3")
print(checkifwhitelist("Player3"))
checkifwhitelist("Player4")
print(checkifwhitelist("Player4"))
checkifwhitelist("Player1")
print(checkifwhitelist("Player1"))
print("This code took "..iterations.." iterations!")
