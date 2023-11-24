local superitems={"Moon","Cheese"}

for k=1, #superitems do
print(superitems[k])
end

local characters = { "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T",
    "U", "V", "W", "X", "Y", "Z", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o",
    "p", "q", "r","s", "t", "u", "v", "w", "x", "y", "z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9"
}
local length = 5
local result = ""
local index = 01

local function load()
    result = ""
    length = math.random(1, 30)

    while index < length do

    result = result..""..characters[math.random(1,#characters)]

        index = index + 1
    end
    return(result)

end

print("Your skip code is: " .. load())

print("Your ..(random).. IP address is " ..math.random(0, 255) .. "." .. math.random(0, 255) .. "." .. math.random(0, 255) .. "." .. math.random(0, 255))
