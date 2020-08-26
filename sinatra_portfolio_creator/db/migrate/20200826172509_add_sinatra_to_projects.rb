class AddSinatraToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :sinatra, :boolean
  end
end
