# == Schema Information
#
# Table name: characters
#
#  id         :integer          not null, primary key
#  movie_id   :integer
#  actor_id   :integer
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Character < ApplicationRecord
  belongs_to :movie, :class_name => "Movie", :foreign_key => "movie_id" 

#   def movie
#     return Movie.find_by({ :id => self.movie_id })
#   end
end
