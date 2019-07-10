class AddInternRefToReports < ActiveRecord::Migration[5.2]
  def change
    add_reference :reports, :intern, foreign_key: true
  end
end
