class Task < ApplicationRecord
  belongs_to :project
  has_ancestry
end
