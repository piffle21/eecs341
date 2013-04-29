class Game < ActiveRecord::Base
  attr_accessible :game_set_id, :plays_ins_attributes
  belongs_to :game_set
  has_one :match, :through => :game_set
  has_one :hangout, :through => :match
  has_one :league, :through => :hangout
  has_many :plays_ins
  has_many :teams, :through => :plays_ins
  has_many :scores, :through => :plays_ins
	has_many :winners, :through => :plays_ins, :conditions => {:plays_ins => {:won => true}}, :source	=> :team
	has_many :losers, :through => :plays_ins, :conditions => {:plays_ins => {:won => false}}, :source => :team

  accepts_nested_attributes_for :plays_ins

  after_create :update_teams_ratings

  def update_teams_ratings
    p1 = plays_ins.first
    p2 = plays_ins.last

    p1_new = p1.team.rating(league)+p1.delta_rating
    p2_new = p2.team.rating(league)+p2.delta_rating

    p1.update_team_rating(p1_new)
    p2.update_team_rating(p2_new)
  end

 def winner
	winners.first
 end
 
 def loser
	losers.first
 end
end
