class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.integer :id_post
      t.string :content
      t.string :author
      t.datetime :published_at
      t.string :avatar

      t.timestamps
    end
  end
end
