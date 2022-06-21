class CreateLikes < ActiveRecord::Migration[6.1]
  def change
    create_table :likes do |t|
      t.integer :like
      t.integer :answer_id
    end
  end
end
