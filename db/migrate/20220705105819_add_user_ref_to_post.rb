# frozen_string_literal: true

# frozen_string_literal
class AddUserRefToPost < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :posts, :users, column: :authorId
    add_index :posts, :authorId
  end
end
