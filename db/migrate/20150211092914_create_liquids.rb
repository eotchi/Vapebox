class CreateLiquids < ActiveRecord::Migration
  def change
    create_table :liquids do |t|
      t.string :name
      t.string :base
      t.string :nicotine
      t.text :notes

      t.timestamps
    end
  end
end
