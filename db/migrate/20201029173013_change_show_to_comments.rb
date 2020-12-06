class ChangeShowToComments < ActiveRecord::Migration[6.0]
  def change
    change_column_default(:comments, :show, false)

  end
end
