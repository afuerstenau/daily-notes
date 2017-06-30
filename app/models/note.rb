class Note < ApplicationRecord
  belongs_to :goal, optional: true
  
  def teammember_name
    Teammember.find(teammember_id).name
  end
end
