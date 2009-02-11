"ruby".upcase + " " + "rails".capitalize # => RUBY Rails

"time is: #{Time.now}\n second line"

'no interpolation "here" #{Time.now}' # => no interpolation "here" #{Time.now}

"I" << "Go" << "Ruby" # => IGoRuby

%Q{"C" and "Java"} # => "C" and "Java"

%q{single 'quoted'} # => single 'quoted'

<<-END
    A here
    document at #{Time.now}
END
