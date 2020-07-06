class Hour < ApplicationRecord
    validates :hours, prescence:true, numericality: { only_integer: true }
end
