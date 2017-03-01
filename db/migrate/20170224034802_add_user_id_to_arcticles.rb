class AddUserIdToArcticles < ActiveRecord::Migration[5.0]
  def change
  	add_column :articles ,:user_id,:integer
  				#tablename,fieldname,type
  end
end
