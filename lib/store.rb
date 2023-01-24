class Store < ActiveRecord::Base
  has_many :employees
  validates :name, presence: true, length: { minimum: 3 }
  validates :annual_revenue, numericality: { greater_than_or_equal_to: 0 }
  validate :must_carry_at_least_one_mens_or_womens_apparel

  def must_carry_at_least_one_mens_or_womens_apparel
    error_msg = 'Store must carry at least one of the men\'s or women\'s apparel'
    return errors.add(:mens_apparel, error_msg) unless mens_apparel || womens_apparel
  end
end
