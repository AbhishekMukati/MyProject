class RenamecolumeTopatients < ActiveRecord::Migration[7.0]
  def change 
     rename_column :patients ,  :Disease, :disease
     rename_column :patients , :Age, :age

  end
end
