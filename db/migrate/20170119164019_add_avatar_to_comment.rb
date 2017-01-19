class AddAvatarToComment < ActiveRecord::Migration[5.0]
  def change
    add_column :comments, :avatar, :string
  end
end
