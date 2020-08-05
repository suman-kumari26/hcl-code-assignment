class Question < ApplicationRecord
  attr_accessor :page

  belongs_to :role
  belongs_to :mapping

  validates :description, presence: true, uniqueness: true
end
