class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :activity
      t.date :date
      t.integer :duration

      t.timestamps
    end
  end
end
