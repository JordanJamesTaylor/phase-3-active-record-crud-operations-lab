class Movie < ActiveRecord::Base

    def self.create_with_title newTitle
        self.create(title: newTitle)
    end

    def self.first_movie
        self.first
    end

    def self.last_movie
        self.last
    end

    def self.movie_count
        self.count
    end

    def self.find_movie_with_id id
        self.find(id)
    end

    def self.find_movie_with_attributes att
        self.find_by(att)
    end

    def self.find_movies_after_2002
        self.where('release_date > 2002')
    end

    def update_with_attributes val
        assign_attributes(val)
        save
    end
end