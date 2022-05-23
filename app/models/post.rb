class Post < ApplicationRecord
  belongs_to :user
  has_one_attached :post_image

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

  def get_post_image(width,height)
    unless post_image.attached?
      file_path = Rails.root.join('app/assets/images/no_image.jpg')
      post_image.attach(io: File.open(file_path), filename: 'default-image.jpg', content_type: 'image/jpg')
    end
      post_image.variant(resize_to_limit: [width, height]).processed
  end

end
