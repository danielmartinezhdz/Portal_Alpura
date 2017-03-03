class CreateDatatypes < ActiveRecord::Migration[5.0]
  def change
    create_table :datatypes do |t|
      t.string :name
      t.string :expression

      t.timestamps
    end
  end
end
