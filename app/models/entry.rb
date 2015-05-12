class Entry < ActiveRecord::Base
  belongs_to :user
  has_many   :definitions
  has_many   :references
  has_many   :examples

  accepts_nested_attributes_for :definitions, :reject_if => :all_blank, :allow_destroy => true
  accepts_nested_attributes_for :references,  :reject_if => :all_blank, :allow_destroy => true
  accepts_nested_attributes_for :examples,    :reject_if => :all_blank, :allow_destroy => true

  validates :term, presence: true, length: {maximum: 64}, uniqueness: {case_sensitive: false}
end
