class CreateKittenCategories < ActiveRecord::Migration
  def change
    create_table :kitten_categories do |t|
      t.integer :kitten_id
      t.integer :category_id
    end
  end
end
