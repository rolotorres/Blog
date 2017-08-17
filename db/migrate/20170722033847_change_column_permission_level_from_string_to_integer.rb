class ChangeColumnPermissionLevelFromStringToInteger < ActiveRecord::Migration[5.1]
  def change
  	reversible do |dir|
  		change_table :users do |t|
  			dir.up {t.change :permission_level, :integer, default: 1}
  			dir.down {t.change :permission_level, :string}
  		end
  	end
  end
end
