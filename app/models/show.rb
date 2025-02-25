class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def characters
    super
  end

  def actors_list
    actors.map(&:full_name)
  end
end