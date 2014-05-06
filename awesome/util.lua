function is_process_running(proc_name)
  local handle = io.popen("pgrep " .. proc_name)
  local output = handle:read("*a")
  handle:close()
  naughty.notify({ 
    title = output,
    text = output ~= ""
  })
  return output ~= ""
end
