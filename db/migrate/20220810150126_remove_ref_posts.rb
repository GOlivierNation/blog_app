# frozen_string_literal: true

# Comment
class RemoveRefPosts < ActiveRecord::Migration[7.0]
  def change
    remove_column :posts, :authorid
  end
end
