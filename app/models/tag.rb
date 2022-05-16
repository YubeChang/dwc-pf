class Tag < ApplicationRecord
  def self.looks(search_option, word)
    if    search_option == "perfect_match"               #完全一致
            @tags = Tag.where("name LIKE ?", "#{word}")
    elsif search_option == "front_match"                 #前方一致
            @tags = Tag.where("name LIKE ?", "#{word}%")
    elsif search_option == "back_match"                  #後方一致
            @tags = Tag.where("name LIKE ?", "%#{word}")
    else #search_option == "partial_match"               #部分一致
            @tags = Tag.where("name LIKE ?", "%#{word}%")
    end
  end
end
