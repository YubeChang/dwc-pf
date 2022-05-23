class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts,     dependent: :destroy
  has_many :comments,  dependent: :destroy
  has_many :favorites, dependent: :destroy

  has_many :active_relationships,  class_name: "Relationship",
                                  foreign_key: "follower_id",
                                    dependent: :destroy
  has_many :passive_relationships, class_name: "Relationship",
                                  foreign_key: "followed_id",
                                    dependent: :destroy

  has_many :following,                through: :active_relationships,
                                       source: :followed
  has_many :followers,                through: :passive_relationships,
                                       source: :follower

  has_one_attached :user_image

  def self.looks(search_option, word)
    if    search_option == "perfect_match"               #完全一致
            @users = User.where("name LIKE ?", "#{word}")
    elsif search_option == "front_match"                 #前方一致
            @users = User.where("name LIKE ?", "#{word}%")
    elsif search_option == "back_match"                  #後方一致
            @users = User.where("name LIKE ?", "%#{word}")
    else #search_option == "partial_match"               #部分一致
            @users = User.where("name LIKE ?", "%#{word}%")
    end
  end

  def get_user_image(width,height)
    unless user_image.attached?
      file_path = Rails.root.join('app/assets/images/no_image.jpg')
      user_image.attach(io: File.open(file_path), filename: 'default-image.jpg', content_type: 'image/jpg')
    end
      user_image.variant(resize_to_limit: [width, height]).processed
  end

end
