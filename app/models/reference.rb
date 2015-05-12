class Reference < ActiveRecord::Base
  belongs_to :user
  belongs_to :entry

  has_paper_trail :only => ['source']
end
