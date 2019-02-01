ActiveAdmin.register User do
  permit_params :email, :password, :password_confirmation, :admin, :events, events_ids: []

  index do
    selectable_column
    id_column
    column :email
    column :admin
    column :events do |user|
      user.events.map { |r| r.name }.join(", ")
  end
    actions
  end

  filter :email
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs do
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end

end
