class AddLinksColumnsToHomeworks < ActiveRecord::Migration
  def change
    add_column :homeworks, :links, :string
  end
end
