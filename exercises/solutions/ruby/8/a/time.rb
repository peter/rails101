def time
  start = Time.now
  yield
  Time.now - start
end

n_seconds = time do
  i = 0
  while i < 10000000
    i = i + 1
  end
end

puts n_seconds