class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def actors_list
    self.actors.map do |value|
      "#{value.first_name} #{value.last_name}"
    end
  end
end
