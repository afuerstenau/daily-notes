class Teammember < ApplicationRecord
  belongs_to :team
  has_many :notes
  
  def ooo
    return state == "Out of Office"
  end
  
  def homeoffice
    return state == "In Home Office"
  end
  
  def state_without_whitespace_lowercase
    return state.downcase.gsub(/\s+/, "")
  end
end
