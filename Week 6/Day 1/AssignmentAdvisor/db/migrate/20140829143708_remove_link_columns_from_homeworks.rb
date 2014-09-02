class RemoveLinkColumnsFromHomeworks < ActiveRecord::Migration
  def change
    remove_column :homeworks, :github_link, :string
    remove_column :homeworks, :heroku_link, :string
  end
end
