class CreateJikochus < ActiveRecord::Migration
  def change
    create_table :jikochus do |t|
      t.string :name
      t.datetime :fought_at

      t.timestamps
    end
  end
end
