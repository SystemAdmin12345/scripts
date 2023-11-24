local whitelist = {
['Player1'] = "true",
['Player5'] = "true",
['Player9'] = "true"
}

local function whitelisted(player)
  if whitelist[player] == "true" then
    return(0)
  else
    return(1)
  end
end

print(whitelisted('Player1'))
print(whitelisted('Player2'))
