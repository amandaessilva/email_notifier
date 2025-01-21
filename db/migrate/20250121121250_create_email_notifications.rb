class CreateEmailNotifications < ActiveRecord::Migration[8.0]
  def change
    create_table :email_notifications do |t|
      t.string :email
      t.text :message
      t.string :status

      t.timestamps
    end
  end
end
