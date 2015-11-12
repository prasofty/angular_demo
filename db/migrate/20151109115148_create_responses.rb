class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.references :forms
      t.text :answers
      t.timestamps null: false
    end
  end
end
