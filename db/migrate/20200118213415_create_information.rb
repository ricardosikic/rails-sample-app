class CreateInformation < ActiveRecord::Migration[5.1]
  def change
    create_table :information do |t|
      t.references :user, foreign_key: true
      t.datetime :birthday
      t.string :country
      t.text :about_me

      t.timestamps
    end
  end
end
