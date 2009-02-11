comment = Object.new
def comment.user
  Object.new
end

# Overly verbose:
user_id = nil
if comment
  if comment.user
    user_id = comment.user.object_id
  end
end

# Idiomatic:
user_id = comment && comment.user && comment.user.object_id
