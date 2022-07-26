# frozen_string_literal: true

# Model Class
class User < ApplicationRecord
  validates_presence_of :name, :lastname, :phone, :genre

  enum genre: { male: 0, female: 1, prefer_not_to_say: 2 }
end
