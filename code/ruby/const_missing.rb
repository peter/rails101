def Object.const_missing(name) 
  @looked_for ||= {} 
  str_name = name.to_s 
  raise "Class not found: #{name}" if @looked_for[str_name] 
  @looked_for[str_name] = 1 
  file = str_name.downcase 
  require file 
  klass = const_get(name) 
  return klass if klass 
  raise "Class not found: #{name}" 
end
