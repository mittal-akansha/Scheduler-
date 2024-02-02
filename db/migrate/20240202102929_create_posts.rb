class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.boolean :published
      t.datetime :published_at
      t.boolean :scheduled

      t.timestamps
    end
  end
end
