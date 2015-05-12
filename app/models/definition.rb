class Definition < ActiveRecord::Base
  belongs_to :user
  belongs_to :entry

  has_paper_trail :only => [definition]
end
