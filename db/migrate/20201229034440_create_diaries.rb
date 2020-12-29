class CreateDiaries < ActiveRecord::Migration[6.0]
  def change
    create_table :diaries do |t|
      t.string:calendar_date,   null:false
      t.text:text,              null:false
      t.string:condition,       null:false
      t.string:motivation,      null:false
      t.string:work_volume,     null:false
      t.timestamps
    end
  end
end
