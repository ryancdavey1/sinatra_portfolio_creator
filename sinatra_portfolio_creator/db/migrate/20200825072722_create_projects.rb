class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :description
      t.integer :user_id
      t.boolean :javascript
      t.boolean :html_and_css
      t.boolean :sql
      t.boolean :python
      t.boolean :java
      t.boolean :ruby
      t.boolean :swift
      t.boolean :c_sharp
      t.boolean :c
      t.boolean :php
      t.string :start_date
      t.string :end_date
      t.timestamps
    end
  end
end
