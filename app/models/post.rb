class Post < ApplicationRecord

  def self.looks(search_option, word)
    if    search_option == "perfect_match"               #完全一致
            @posts = Post.where("body LIKE ?", "#{word}")
    elsif search_option == "front_match"                 #前方一致
            @posts = Post.where("body LIKE ?", "#{word}%")
    elsif search_option == "back_match"                  #後方一致
            @posts = Post.where("body LIKE ?", "%#{word}")
    else #search_option == "partial_match"               #部分一致
            @posts = Post.where("body LIKE ?", "%#{word}%")
    end
  end

end
