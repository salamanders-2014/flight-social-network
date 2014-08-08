class CreateUserProfilePics < ActiveRecord::Migration
  def change
    create_table :user_profile_pics do |t|

      t.timestamps
    end
  end
end
