class Cart < ApplicationRecord
  VALID_NAME_REGEX = /\A[a-zA-Z'-]+\z/
  VALID_PHONE_REGEX = /\A[\d\- ]{7,10}\z/
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :first_name, :last_name, :city, :streat, :company_name,
            length: { maximum: 24 },
            format: { with: VALID_NAME_REGEX },
            presence: true
  validates :phone,
            length: { in: 7..10 },
            format: { with: VALID_PHONE_REGEX },
            allow_nil: true
  validates :building,
            length: { in: 1..6 },
            allow_nil: true
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX }
  validates :visible, inclusion: { in: [true, false] }
end


