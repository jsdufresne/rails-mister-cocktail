class Ingredient < ApplicationRecord
  has_many :doses
  before_destroy :check_for_cocktails

  private

  def check_for_cocktails
    if cocktails.count > 0
      errors.add_to_base("cannot delete ingredient while cocktails exist")
      return false
    end
  end
end
