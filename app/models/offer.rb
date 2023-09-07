class Offer < ApplicationRecord
    has_many :users, through: :reactions
    has_many :reactions, dependent: :destroy

    Kinds = %w[Pos].freeze
    KindsSpanish = {"Post" => "Postular"}.freeze

    def find_kind_user_relation(user)
        self.reactions.find_by(user_id: user.id).kind
    end
end
