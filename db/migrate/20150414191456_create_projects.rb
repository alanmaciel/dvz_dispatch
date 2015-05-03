class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :short_name
      t.string :code_name
      t.date :creation_date
      t.date :release_date
      t.text :description
      t.text :subsystems
      t.date :last_release_date
      t.time :last_release_time
      t.string :last_release_version
      t.text :last_release_description
      t.string :last_release_deployer
      t.date :next_release_date
      t.time :next_release_time
      t.string :next_release_version
      t.text :next_release_description
      t.string :next_release_deployer

      t.timestamps null: false
    end
  end
end
