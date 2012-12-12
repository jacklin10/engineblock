class CreatePistons < ActiveRecord::Migration

  def self.up
    create_table :pistons do |t|
      t.string :size, :null=>false

      t.timestamps
    end

  end

  def self.down
    drop_table :pistons
  end

end
