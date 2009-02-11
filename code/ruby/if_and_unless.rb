message = if count > 10
            "Try again"
          elsif tries == 3
            "You lose"
          else
            "Enter command"
          end

raise "Unauthorized" if !current_user.admin?
raise "Unauthorized" unless current_user.admin?

status = input > 10 ? "Number too big" : "ok"
