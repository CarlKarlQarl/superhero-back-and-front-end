class Superhero < ApplicationRecord
    has_many :supervillains, dependent: :destroy
end
