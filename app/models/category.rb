class Category < ApplicationRecord
    has_many :posts

    def to_s                       
        "#{category}"                   
    end    


end
