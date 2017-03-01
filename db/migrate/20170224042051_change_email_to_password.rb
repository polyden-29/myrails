class ChangeEmailToPassword < ActiveRecord::Migration[5.0]
  def change
  	rename_column :users ,:email, :password
  end
end
