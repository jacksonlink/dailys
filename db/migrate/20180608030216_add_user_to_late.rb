class AddUserToLate < ActiveRecord::Migration[5.2]
  def change
    add_reference :lates, :user, foreign_key: true
  end
end
