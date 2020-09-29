class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :content
      t.string :author
      t.boolean :private
      t.text :tags, array: true, default: []
      t.bigint :user_id

      t.timestamps
    end
  end
end
