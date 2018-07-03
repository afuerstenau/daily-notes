class Note < ApplicationRecord
  belongs_to :goal, optional: true
  
  def teammember_name
    if Teammember.exists?(teammember_id)
      Teammember.find(teammember_id).name
    else
      "user doesn't exist (anymore)"
    end
  end
end
