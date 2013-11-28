class CreateMeetings < ActiveRecord::Migration
  def change
    create_table :meetings do |t|
      t.string :name
      t.datetime :opend_at
      t.string :place
      t.text :description

      t.timestamps
    end
  end
end
