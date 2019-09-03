class Costomer < ApplicationRecord
  scope :refused, -> {where(blacklist: false)}
end
