class Cart < ApplicationRecord
  has_one :attachment, as: :attachable

  include Tire::Model::Search
  include Tire::Model::Callbacks

  VALID_NAME_REGEX = /\A[a-zA-Z'-]+\z/
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :first_name, :last_name,
            length: { maximum: 24 },
            format: { with: VALID_NAME_REGEX },
            presence: true
  validates :building,
            length: { in: 1..6 },
            allow_nil: true
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX }
  validates :visible, inclusion: { in: [true, false] }
end


