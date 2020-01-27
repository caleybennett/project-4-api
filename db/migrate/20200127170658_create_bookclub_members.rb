class CreateBookclubMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :bookclub_members do |t|
      t.references :user, foreign_key: true
      t.references :bookclub, foreign_key: true

      t.timestamps
    end
  end
end
