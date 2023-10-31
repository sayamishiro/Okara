class Like < ApplicationRecord
  belongs_to :okara
  belongs_to :user

  validates_uniqueness_of :okara_id, scope: :user_id
  
end
