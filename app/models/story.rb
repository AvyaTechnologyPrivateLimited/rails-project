class Story < ActiveRecord::Base
	validates_presence_of :heading, :body_text, :source, :genre_id,:user_id;
	
	belongs_to:genre
	belongs_to:user

  
end
