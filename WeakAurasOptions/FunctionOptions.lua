--[[
{
  type = "code",
  script = "function() return true end",
  events = "UNIT_AURA",
}
-- on UNIT_AURA,
function()
  return true
end
{
  type = "build",
  predicate = {
    type = "combo",
    clause = "all",
    subPredicates = {
      {
        type = "compare",
        check = "health",
        value = 100,
        op = "<"
      },
      {
        type = "match",
        check = "name",
        pattern = "rivers"
      }
    }
  },
  accept = {
    type = "action",
    action = "code",
    script = "print('rivers is at low heath!')"

  },
  reject = {
    type = "action",
    action = "print",
    toPrint = "rejected!"
  }
}
function()
  local state = something
  if state.health < 100
  and string.match(state.name, "rivers") then
    print('rivers is at low heath!')
    return true
  else
    print('rivers is not at low health!')
    return false
  end
end
]]

local WeakAuras = WeakAuras
local L = WeakAuras.L

local function createOrder(order)
  return function()
    order = order + 1
    return order
  end
end

function WeakAuras.AddFunctionOption(args, data, order, path, prefix, prototype)
end
