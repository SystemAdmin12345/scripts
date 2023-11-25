local banned = {
['Player2'] = "Being a player 2",
['Player5'] = 'stop',
['Player6'] = 'hacking'
}



local function check(player)
if banned[player] then
  return('Player "'..player..'" is banned for "'..banned[player]..'"')
else
  return('Player "'..player..'" is allowed in game')
end
end


print(check('Player1'))
print(check('Player2'))
print(check('Player3'))
print(check('Player4'))
print(check('Player5'))
print(check('Player6'))
print(check('Player7'))
