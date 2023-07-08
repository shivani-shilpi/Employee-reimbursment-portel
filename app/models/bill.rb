class Bill < ApplicationRecord
  belongs_to :employee

  enum bill_type: { food: 'Food', travel: 'Travel', others: 'Others' }
end
