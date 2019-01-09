module NotesHelper
  def goal_prio_and_summary(goal)
    goal.priority.to_s + ' ' + goal.summary
  end
end
