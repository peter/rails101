# Symbols start with a colon
:action.class == Symbol
:action.to_s == "action"
:action == "action".to_sym

# There is only one instance of every symbol
:action.equal?(:action) # => true
'action'.equal?('action') # => false

# Symbols are typically used as keys in hashes
my_hash = {:controller => "home", :action => "index"}
