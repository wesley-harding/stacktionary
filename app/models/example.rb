class Example < ActiveRecord::Base
  belongs_to :user
  belongs_to :entry

  has_paper_trail :only => ['example']
end
