class CreateDonates < ActiveRecord::Migration
  def change
    create_table :donates do |t|

      t.timestamps
    end
  end
end
