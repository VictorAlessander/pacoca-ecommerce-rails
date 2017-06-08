class CreateAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :accounts do |t|
      t.string :username
      t.string :password
      t.references :person, foreign_key: true

      t.timestamps
    end
  end
end
