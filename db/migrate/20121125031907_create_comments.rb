class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :issue_id
      t.integer :user_id
      t.text :text

      t.timestamps
    end
  end
end
