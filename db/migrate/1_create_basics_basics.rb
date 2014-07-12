class CreateBasicsBasics < ActiveRecord::Migration

  def up
    create_table :refinery_basics do |t|
      t.string :name
      t.string :location
      t.text :content
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-basics"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/basics/basics"})
    end

    drop_table :refinery_basics

  end

end
