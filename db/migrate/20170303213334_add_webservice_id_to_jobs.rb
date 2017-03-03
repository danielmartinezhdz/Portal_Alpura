class AddWebserviceIdToJobs < ActiveRecord::Migration[5.0]
  def change
    add_reference :jobs, :webservice, foreign_key: true
  end
end
