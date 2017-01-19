class AddUpVoteToComment < ActiveRecord::Migration[5.0]
  def change
    add_column :comments, :upvote, :integer
  end
end
