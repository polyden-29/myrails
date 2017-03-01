class AddUserNameToArticle < ActiveRecord::Migration[5.0]
  def change
  	add_column :articles, :user_name, :string
  end
end
