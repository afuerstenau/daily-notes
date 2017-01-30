class Team < ApplicationRecord
  has_many :subteams, class_name: "Team", foreign_key: "superteam_id"
  belongs_to :superteam, class_name: "Team", optional: "true"
  has_many :teammembers
end
