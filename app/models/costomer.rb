class Costomer < ApplicationRecord
  scope :frends, -> {where(blacklist: false)}
  scope :refused, -> {where(blacklist: true)}
end
