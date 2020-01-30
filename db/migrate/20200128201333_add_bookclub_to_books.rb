class AddBookclubToBooks < ActiveRecord::Migration[5.2]
  def change
    add_reference :books, :bookclub, foreign_key: true
  end
end
