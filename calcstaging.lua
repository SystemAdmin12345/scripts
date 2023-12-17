local items = { 0 }
local operations = { "" }
local index = 1
local answer = 0
local answershown = false

-- Clears variables
local function clear()
  print("[DEBUG] Clearing variables")
  items = { 0 }
  operations = { "" }
  index = 1
  answer = 0
  answershown = false
end

-- Appends numbers based on input
local function numberexpand(number)
  print("[DEBUG] Appending number: " .. number)
  if not items[index] then
    items[index] = 0
  end
  if items[index] == nil then
    items[index] = number
  else
    items[index] = items[index] * 10 + number
  end
end

-- Prints debug info
local function debugprint()
  print("[DEBUG] Printing debug info")
  print("Answer: " .. answer)
  print("--- Numbers ---")
  for i = 1, #items do
    print("Item " .. i .. ": " .. items[i])
    print("Type: " .. type(items[i]))
  end
  print("--- Symbols ---")
    for i = 1, #operations do
        print("Operation " .. i .. ": " .. operations[i])
        print("Type: " .. type(operations[i]))
    end
    print("--- TrueNumbers ---")
      for k,v in pairs(items) do
        print(k,v)
      end
    print("--- TrueSymbols ---")
  for k, v in pairs(items) do
    print(k, v)
  end
end

-- Modifies symbols in operations
local function modifysymbol(item)
  print("[DEBUG] Modifying symbol: " .. item)
  operations[index] = item
  index = index + 1
  --items[index] = nil
  --index = index + 1
end

-- Performs calculations
local function calculate()
  print("[DEBUG] Starting calculations")
  local tempItems = {}
  local tempOperations = {}

  -- Copying items and operations to temporary tables
  for i = 1, #items do
    tempItems[i] = items[i]
    print("[DEBUG] Temp Item " .. i .. ": " .. tempItems[i])
    print("[DEBUG] Temp Item " .. i .. " Type: " .. type(tempItems[i]))
  end

  for i = 1, #operations do
    tempOperations[i] = operations[i]
    print("[DEBUG] Temp Operation " .. i .. ": " .. tempOperations[i])
    print("[DEBUG] Temp Operation " .. i .. " Type: " .. type(tempOperations[i]))
  end

  local i = 1
  while i <= #tempOperations do
    print("[DEBUG] Iterating through operation: " .. tempOperations[i])

    if tempOperations[i] == "*" then
      print("[DEBUG] Performing multiplication")

      -- Ensuring i + 1 is within bounds
      if tempItems[i + 1] then
        tempItems[i] = tempItems[i] * tempItems[i + 1]
        table.remove(tempItems, i + 1)
        table.remove(tempOperations, i)
      else
        print("[DEBUG] Issue with multiplication. i+1 is out of bounds.")
        break
      end
    elseif tempOperations[i] == "/" then
      print("[DEBUG] Performing division")

      -- Ensuring i + 1 is within bounds
      if tempItems[i + 1] then
        tempItems[i] = tempItems[i] / tempItems[i + 1]
        table.remove(tempItems, i + 1)
        table.remove(tempOperations, i)
      else
        print("[DEBUG] Issue with division. i+1 is out of bounds.")
        break
      end
    else
      print("[DEBUG] Operation skipped")
      i = i + 1
    end
  end

  local result = tempItems[1] or 0 -- Initializing 'result' with a default value of 0

  local j = 1
  for i = 1, #tempOperations do
    print("[DEBUG] Iterating through symbols: " .. tempOperations[i])

    if tempOperations[i] == "+" then
      print("[DEBUG] Performing addition")

      -- Ensure j+1 is within bounds
      if tempItems[j + 1] then
        result = result + tempItems[j + 1]
      else
        print("[DEBUG] Issue with addition. j+1 is out of bounds.")
        break
      end
    elseif tempOperations[i] == "-" then
      print("[DEBUG] Performing subtraction")

      -- Ensure j+1 is within bounds
      if tempItems[j + 1] then
        result = result - tempItems[j + 1]
      else
        print("[DEBUG] Issue with subtraction. j+1 is out of bounds.")
        break
      end
    end
    j = j + 1
  end

  answer = result
  answershown = true
  print("[DEBUG] Calculation completed. Answer: " .. answer)
end


-- Main operations
--numberexpand(5)
--debugprint()
--numberexpand(4)
--debugprint()
--modifysymbol("+")
--debugprint()
--numberexpand(9)
--debugprint()
--calculate()
--debugprint()

print("===== Test case 1 =====")
print("=== Expected answer: 63 ===")
---- Test Case 1 ----
-- Execution:
numberexpand(5)
numberexpand(4)
modifysymbol("+")
numberexpand(9)
calculate()
debugprint()
clear()
-- Expected result: 63

print("===== Test case 2 =====")
print("=== Expected answer: 46.5 ===")
---- Test Case 2 ----
-- Execution:
numberexpand(3)
modifysymbol("*")
numberexpand(6)
numberexpand(2)
modifysymbol("/")
numberexpand(4)
calculate()
debugprint()
clear()
-- Expected result: 46.5

print("===== Test case 3 =====")
print("=== Expected answer: 107 ===")
---- Test Case 3 ----
-- Execution:
numberexpand(2)
modifysymbol("*")
numberexpand(5)
numberexpand(3)
modifysymbol("+")
numberexpand(1)


calculate()
debugprint()
clear()
-- Expected result: 107

print("===== Test case 4 =====")
print("=== Expected answer: 68 ===")
---- Test Case 4 ----
-- Execution:
numberexpand(2)
modifysymbol("*")
numberexpand(3)
numberexpand(4)

calculate()
debugprint()
clear()
-- Expected result: 68

print("===== Test case 5 =====")
print("=== Expected answer: 4.4 ===")
---- Test Case 5 ----
-- Execution:
numberexpand(2)
numberexpand(2)
modifysymbol("/")
numberexpand(5)

calculate()
debugprint()
clear()
-- Expected result: 4.4

print("===== Test case 6 =====")
print("=== Expected answer: 94 ===")
---- Test Case 6 ----
-- Execution:
numberexpand(1)
numberexpand(0)
modifysymbol("*")
numberexpand(2)
modifysymbol("+")
numberexpand(7)
numberexpand(5)
modifysymbol("-")
numberexpand(1)



calculate()
debugprint()
clear()
-- Expected result: 94

print("===== Test case 7 =====")
print("=== Expected answer: 46 ===")
---- Test Case 7 ----
-- Execution:
numberexpand(1)
numberexpand(2)
modifysymbol("+")
numberexpand(3)
numberexpand(4)
calculate()
debugprint()
clear()
-- Expected result: 46

print("===== Test case 8 =====")
print("=== Expected answer: 10 ===")
---- Test Case 8 ----
-- Execution:
numberexpand(1)
numberexpand(3)
modifysymbol("-")
numberexpand(2)
modifysymbol("-")
numberexpand(1)


calculate()
debugprint()
clear()
-- Expected result: 10

print("===== Test case 9 =====")
print("=== Expected answer: 0 ===")
---- Test Case 9 ----
-- Execution:
numberexpand(5)
modifysymbol("*")
numberexpand(0)
calculate()
debugprint()
clear()
-- Expected result: 0

print("===== Test case 10 =====")
print("=== Expected answer: 8 ===")
---- Test Case 10 ----
-- Execution:
numberexpand(8)
calculate()
debugprint()
clear()
-- Expected result: 8
