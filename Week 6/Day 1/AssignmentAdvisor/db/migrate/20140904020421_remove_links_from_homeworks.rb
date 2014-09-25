class RemoveLinksFromHomeworks < ActiveRecord::Migration
  def change
    remove_column :homeworks, :links, :string
  end
end
