class AddDataIdToParams < ActiveRecord::Migration[5.0]
  def change
    add_reference :params, :datatype, foreign_key: true
  end
end
