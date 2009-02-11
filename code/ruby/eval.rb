def evaluate_code(code, binding)
  a = 2
  eval code, binding
end

a = 1
evaluate_code("puts a", binding) # => 1
