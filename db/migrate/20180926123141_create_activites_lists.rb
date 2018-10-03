class CreateActivitesLists < ActiveRecord::Migration[5.2]
  def change
    create_table :activites_lists do |t|
      t.string :activity

      t.timestamps
    end
  end
end
