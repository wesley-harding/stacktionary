class ChangeEntryContentToTerm < ActiveRecord::Migration
  def change
    rename_column :entries, :content, :term
  end
end
