class RemoveAvatarFromComment < ActiveRecord::Migration[5.0]
  def change
    remove_column :comments, :avatar, :string
  end
end
