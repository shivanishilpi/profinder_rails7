class Plant < ApplicationRecord
    validates :name, :price, presence: true
    has_one_attached :image
    has_many :notes, as: :notable
    acts_as_list
    attr_accessor :credits

    def sub_credits(sub_creds)
      if sub_creds == 0
        raise StandardError
      end
      @credits = @credits - sub_creds
    end

    def bounce(bouncee)
      if bouncee == "xx"
        return true
      end
      false
    end

    def points
      5
    end

    def name
      "rook"
    end
end
