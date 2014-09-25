class AddWorkflowToHomeworks < ActiveRecord::Migration
  def change
    add_column :homeworks, :workflow_state, :string
  end
end
