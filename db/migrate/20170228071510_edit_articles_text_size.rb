class EditArticlesTextSize < ActiveRecord::Migration[5.0]
  def change
  	change_column :articles, :text, :string, :limit => 2000
  end
end
