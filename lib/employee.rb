class Employee < ActiveRecord::Base
  belongs_to :store, required: true
  validates :first_name, :last_name, presence: true
  validates :hourly_rate, numericality: { only_integer: true }, inclusion: { in: 40..200 }
  # before_create :generate_password
  # after_create :generate_password
  before_save :generate_password

  private
  # before_create
  # def generate_password
  #   self.password = SecureRandom.base64(8)
  # end

  # after_create
  # def generate_password
  #   update_column(:password, SecureRandom.base64(8))
  # end

  # before_save
  def generate_password
    self.password = SecureRandom.base64(8)
  end
end
