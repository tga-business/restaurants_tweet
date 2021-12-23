class PostForm
  include ActiveModel::Model

  attr_accessor :text, :image

  with_options presence: true do
    validates :text
    validates :image(text: text, image: image)
  end

  def save
    Restaurant.create
  end
end