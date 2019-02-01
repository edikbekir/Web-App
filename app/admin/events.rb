ActiveAdmin.register Event do
  permit_params :start_time, :end_time, :name

  index do
    selectable_column
    id_column
    column :name
    column :start_time
    column :end_time
    actions
  end

  filter :name
  filter :start_time
  filter :end_time

  form do |f|
    f.inputs do
      f.input :name
      f.input :start_time
      f.input :end_time
    end
    f.actions
  end

end
