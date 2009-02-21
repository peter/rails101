module Timing
  class MaxTimeExceeded < RuntimeError; end
  
  def self.time(max_time = 10)
    start = Time.now
    yield
    expired = Time.now - start
    raise MaxTimeExceeded, "Code took #{expired}s which exceeds max time of #{max_time}s" if expired > max_time
    expired
  end
end

n_seconds = Timing::time(1) do
  i = 0
  while i < 10000000
    i = i + 1
  end
end

puts n_seconds
