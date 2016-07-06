class CreateHomes < ActiveRecord::Migration
  def change
    create_table :homes do |t|
      t.string :name
      t.integer :size
      t.string :owner
      t.string :location
      t.string :note

      t.timestamps
    end
  end
end
