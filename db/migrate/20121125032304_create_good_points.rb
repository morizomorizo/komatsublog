class CreateGoodPoints < ActiveRecord::Migration
  def change
    create_table :good_points do |t|
      t.integer :issue_id
      t.integer :user_id
      t.integer :count

      t.timestamps
    end
  end
end
