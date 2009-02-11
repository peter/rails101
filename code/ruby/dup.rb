# Methods that change their receiver end with an exclamation mark by convention.
# If you need to invoke an exclamation mark method on a method argument and you want
# to avoid the object from being changed, you can duplicate the object first
# with the Object#dup method. Core classes such as String, Hash, and Array all have
# meaningful implementations of the dup method. Here is an example from Rails:

class ActiveRecord::Base
  def attributes=(new_attributes)
    return if new_attributes.nil?
    attributes = new_attributes.dup # duplicate argument to avoid changing it
    attributes.stringify_keys! # modify the duplicated object
    # ... method continues here
  end
end