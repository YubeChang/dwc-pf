class CreateStores < ActiveRecord::Migration[6.1]
  def change
    create_table :stores do |t|
      t.string :name,      null: false
      #緯度
      t.float  :latitude,  null: false
      #経度
      t.float  :longitude, null: false
      t.timestamps
    end
  end
end
