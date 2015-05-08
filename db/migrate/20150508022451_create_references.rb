class CreateReferences < ActiveRecord::Migration
  def change
    create_table :references do |t|
      t.references :user, index: true, foreign_key: true
      t.string :source
      t.references :entry, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
