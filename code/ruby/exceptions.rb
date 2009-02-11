begin 
  raise(ArgumentError, "No file_name provided") if !file_name
  content = load_blog_data(file_name)
  raise "Content is nil" if !content 
rescue BlogDataNotFound 
  STDERR.puts "File #{file_name} not found" 
rescue BlogDataConnectError
  @connect_tries ||= 1
  @connect_tries += 1
  retry if @connect_tries < 3 
  STDERR.puts "Invalid blog data in #{file_name}" 
rescue Exception => exc 
  STDERR.puts "Error loading #{file_name}: #{exc.message}"
  raise
end
