system("ls -l")
puts $?.exitstatus if !$?.success?
puts `ls -l`
