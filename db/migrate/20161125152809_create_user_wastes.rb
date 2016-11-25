class CreateUserWastes < ActiveRecord::Migration[5.0]
  def change
    create_table :user_wastes do |t|
      t.references :user, foreign_key: true
      t.references :waste, foreign_key: true

      t.timestamps
    end
  end
end
