class CreateControls < ActiveRecord::Migration
  def change
    create_table :controls do |t|
      t.string :key
      t.string :value

      t.timestamps null: false
    end
  end
end
