require 'statistics'
class League < ActiveRecord::Base
  attr_accessible :competition_id, :games_per_set, :name, :sets_per_match, :league_type, :teams_names
  belongs_to :competition
  has_many :registrations
  has_many :teams, :through => :registrations
  has_many :sessions
  attr_accessor :teams_names

  def structured
  	league_type == "Structured"
  end

  def ratings
  	registrations.collect(&:rating)
  end
end