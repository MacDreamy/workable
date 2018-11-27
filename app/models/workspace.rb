class Workspace < ApplicationRecord
  belongs_to :category
  belongs_to :workspace_owner
  has_many :reviews
end
