system("ls -l")
# $? is a predefined variable with the exit status
puts $?.exitstatus if !$?.success?
# The back ticks "`" return the output of the external program
standard_out = `ls -l`
