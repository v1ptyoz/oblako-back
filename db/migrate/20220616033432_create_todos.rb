class CreateTodos < ActiveRecord::Migration[7.0]
  def change
    create_table :todos do |t|
      t.text :text
      t.integer :category_id, index: true
      t.boolean :isCompleted, default: false

      t.timestamps
    end
  end
end
