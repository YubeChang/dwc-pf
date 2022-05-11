class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.integer  :user_id,   null: false
      t.integer  :store_id,  null: false
      t.string   :body,      null: false
      t.boolean  :is_delete, null: false, default: false
      t.timestamps
    end
  end
end
