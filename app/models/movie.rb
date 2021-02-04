class Movie < ActiveRecord::Base
	def initialize
		@all_ratings = ['G','PG','PG-13','R']
	end

	def all_ratings
		@all_ratings
	end

	def self.with_ratings(ratings_list)
		filtered_movies = nil
		if ratings_list == nil
			filtered_movies = @movies.all
		else
			filtered_movies = @movies.where(rating: ratings_list)
		end
		filtered_movies
	end
end
