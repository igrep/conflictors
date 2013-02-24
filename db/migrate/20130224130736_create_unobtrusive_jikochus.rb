class CreateUnobtrusiveJikochus < ActiveRecord::Migration
  def change
    create_table :unobtrusive_jikochus do |t|
      t.string :name

      t.timestamps
    end
  end
end
