class Post < ApplicationRecord
  before_save :ensure_body_present, if: :name_present?

  private

  def ensure_body_present
    self.body ||= "Default body" if body.blank?
  end

  def name_present?
    name.present?
  end
end
