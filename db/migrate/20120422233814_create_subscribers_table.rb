class CreateSubscribersTable < ActiveRecord::Migration
  def up
    create_table :subscribers do |t|
      t.string :email
      t.timestamps
    end
  end

  def down
    create_table :subscribers do |t|
      t.string :email
      t.timestamps
    end
  end
end
