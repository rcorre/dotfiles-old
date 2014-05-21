function is_process_running(proc_name)
  local handle = io.popen("pgrep " .. proc_name)
  local output = handle:read("*a")
  handle:close()
  return output ~= ""
end

function program_exists(progname)
  local handle = io.popen("which " .. progname .. " 2>/dev/null");
  local output = handle:read("*a")
  handle:close()
  return output ~= ""
end
