class Room < ApplicationRecord
  belongs_to :user
  scope :most_recent, -> {order('created_at DESC')}

  def complete_name
    "#{title}, #{location}"
  end
end
