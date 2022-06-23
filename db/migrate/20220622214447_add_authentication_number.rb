class AddAuthenticationNumber < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :authentication_number, :integer

    remove_column :users, :encrypted_otp_secret
    remove_column :users, :encrypted_otp_secret_iv
    remove_column :users, :encrypted_otp_secret_salt
    remove_column :users, :consumed_timestamp
    remove_column :users, :otp_required_for_login
  end
end
