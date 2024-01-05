class CreateAgents < ActiveRecord::Migration[7.1]
  def change
    create_table :agents do |t|
      t.string :name
      t.string :email, index: { unique: true, name: 'unique_emails' }
      t.string :password, null: false
      t.references :divisions, null: false, foreign_key: true
      t.references :role_agent, null: false, foreign_key: true

      t.timestamps
    end
  end
end
