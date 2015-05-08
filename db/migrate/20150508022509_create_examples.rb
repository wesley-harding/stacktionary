class CreateExamples < ActiveRecord::Migration
  def change
    create_table :examples do |t|
      t.references :user, index: true, foreign_key: true
      t.text :example
      t.references :entry, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
