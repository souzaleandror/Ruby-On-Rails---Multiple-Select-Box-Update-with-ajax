class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t|
      t.string :name
      t.string :acronym
      t.string :capital
      t.text :obs
      t.boolean :active

      t.timestamps null: false
    end
  end
end
