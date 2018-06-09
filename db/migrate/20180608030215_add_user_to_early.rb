class AddUserToEarly < ActiveRecord::Migration[5.2]
  def change
    add_reference :earlies, :user, foreign_key: true
  end
end
