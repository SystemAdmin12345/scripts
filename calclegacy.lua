local items = {0}
local operations = {""}
local index = 1
local answer = "N/A"
local answershown = false

local function clear()
  items = {0}
  operations = {""}
  index = 1
  answer = "N/A"
  answershown = false
end

local function numberexpand(number)
  items[index] = items[index] * 10 + number
end

local function debugprint()
  print("--- Numbers ---")
  for i = 1,#items do
  print(i)
  print(items[i])
  print(type(items[i]))
  end
  print("--- Symbols ---")
  for i=1,#operations do
  print(i)
  print(operations[i])
  print(type(operations[i]))
  end
end

local function modifysymbol(item)
  operations[index] = item
end

numberexpand(5)
numberexpand(4)
modifysymbol("+")
debugprint()
