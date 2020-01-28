class RemoveBookclubFromBook < ActiveRecord::Migration[5.2]
  def change
    remove_reference :books, :bookclub, foreign_key: true
  end
end
