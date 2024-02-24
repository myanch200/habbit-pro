class CreateHabbitEntries < ActiveRecord::Migration[7.1]
  def change
    create_table :habbit_entries do |t|
      t.string :name, null: false
      t.string :occurrence, default: "daily"
      t.string :status, default: "incomplete"

      t.timestamps
    end
  end
end
