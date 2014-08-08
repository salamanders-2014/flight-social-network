class CreateUserProfilePics < ActiveRecord::Migration
  def change
    create_table :user_profile_pics do |t|
    	t.integer :user_id
    	t.integer :photo_id
    	t.string :description

      t.timestamps
    end
  end
end
