while count < 100
  puts count
  count += 1
end

payment.make_request while (payment.failure? and payment.tries < 3)

for user in @users
  next if user.admin?
  if user.paid?
    break
  end
end

until count > 5
  puts count
  count += 1
end

puts(count += 1) until count > 5
