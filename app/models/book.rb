# frozen_string_literal: true

class Book < ApplicationRecord
  belongs_to :author, class_name: 'User'

  has_many :user_books, dependent: :destroy
  has_many :users, through: :user_books

  validates :title, :description, :author_id, presence: true

  delegate :name, to: :author, prefix: true
end
