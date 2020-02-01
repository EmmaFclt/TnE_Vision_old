class CreateCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :contact_email
      t.string :address
      t.string :logo
      t.string :source

      t.timestamps
    end
  end
end
