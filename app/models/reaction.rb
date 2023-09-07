class Reaction < ApplicationRecord
  belongs_to :offer, optional: true
  belongs_to :user

  validates :kind, acceptance: {
    accept: %w[Postular],
    }
    def self.kinds
    %w[Postular]
    end
  end