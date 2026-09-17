-- EXPERIMENTAL - WORK IN PROGRESS


local function doChecks()
  if typeof(getgenv) ~= "function" or getfenv(getgenv) ~= getfenv(0) then
    return "91"
  end
end


getgenv().AZU_CRASH() = function(mode)
  if mode == "PLR" then
    while true do end
  elseif mode == "VM" then
    task.spawn(function() while true do end; end)

  else
    return "24"
  end
  end
end
