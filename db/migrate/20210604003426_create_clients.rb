class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.string :client_name
      t.integer :n_client, default: 0

      t.timestamps
    end
  end
end
