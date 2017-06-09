class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :user_forename, limit: 35
      t.string :user_surname, limit: 35
      t.string :user_email, limit: 255
      t.string :company, limit: 70
      t.string :username, limit: 35
      t.string :logo_url, limit: 255
      t.string :api_sk, limit: 50
      t.string :api_pk, limit: 50

      t.timestamps
    end
  end
end
