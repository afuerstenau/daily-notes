class Note < ApplicationRecord
  
  def teammember_name
    Teammember.find(teammember_id).name
  end
end
