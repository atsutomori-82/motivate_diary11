class CreateDiaries < ActiveRecord::Migration[6.0]
  def change
    create_table :diaries do |t|
      t.string     :calendar_date,   null:false
      t.text       :text,              null:false
      t.integer    :condition_id,       null:false
      t.integer    :motivation,      null:false
      t.integer    :work_volume,     null:false
      t.timestamps
    end
  end
end
