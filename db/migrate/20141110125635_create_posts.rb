class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :id_user
      t.string :title
      t.string :body
      t.string :tags

      t.timestamps
    end
  end
end
