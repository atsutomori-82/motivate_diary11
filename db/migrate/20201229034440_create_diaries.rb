class CreateDiaries < ActiveRecord::Migration[6.0]
  def change
    create_table :diaries do |t|
      t.date       :calendar_date,      null:false
      t.text       :text,               null:false
      t.integer    :condition_id,       null:false
      t.integer    :motivation_id,      null:false
      t.integer    :work_volume_id,     null:false
      t.timestamps
    end
  end
end
