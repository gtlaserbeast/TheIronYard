class CreateHomeworks < ActiveRecord::Migration
  def change
    create_table :homeworks do |t|
      t.string :title
      t.integer :user_id
      t.integer :assignment_id
      t.string :github_link
      t.string :heroku_link
      t.string :notes

      t.timestamps
    end
  end
end
