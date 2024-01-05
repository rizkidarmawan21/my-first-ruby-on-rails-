class CreateRoleAgents < ActiveRecord::Migration[7.1]
  def change
    create_table :role_agents do |t|
      t.string :name

      t.timestamps
    end
  end
end
