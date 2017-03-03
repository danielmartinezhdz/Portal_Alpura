class CreateWebservices < ActiveRecord::Migration[5.0]
  def change
    create_table :webservices do |t|
      t.string :description
      t.text :wsdl
      t.text :url

      t.timestamps
    end
  end
end
