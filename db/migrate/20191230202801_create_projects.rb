class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :project_title
      t.string :project_desc
      t.boolean :project_status

      t.timestamps
    end
  end
end
