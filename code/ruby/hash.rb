h = {:lang => 'Ruby', :framework => 'Rails'}
h[:lang] == 'Ruby'
h[:perl] == nil
puts h.inspect
env = {"USER" => "peter", "SHELL" => "/bin/bash"}
env.each {|k, v| puts "#{k}=#{v}" }
