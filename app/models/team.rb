class Team < ApplicationRecord
  has_many :subteams, class_name: "Team", foreign_key: "superteam_id"
  belongs_to :superteam, class_name: "Team", optional: "true"
  has_many :teammembers

  def all_ooo_teammembers
    ooo_teammembers = Array.new
    teammembers.each do |teammember|
      if (teammember.ooo) then
        ooo_teammembers << teammember unless !teammember.ooo
      end
    end
    subteams.each do |subteam|
      ooo_teammembers |= subteam.all_ooo_teammembers
    end

    ooo_teammembers = ooo_teammembers.sort {|x,y| x[:name]<=>y[:name]}
    return ooo_teammembers
  end
end
