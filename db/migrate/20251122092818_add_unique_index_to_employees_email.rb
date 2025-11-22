class AddUniqueIndexToEmployeesEmail < ActiveRecord::Migration[7.1]
  def change
    add_index :employees, :email, unique: true   #  PREVENT DUPLICATE EMAILS. if any duplicaate email foundit will raise error . 
  end
end
