class Hello < ApplicationRecord
  validates :title, presence: true
  validates :introduction, presence: true
end
