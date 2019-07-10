ActiveAdmin.register Report do
    permit_params :title, :content, :intern_id
    index do
        column :id
        column :title, :sortable => :title
        column :intern, :sortable => :intern
        column :created_at ,:sortable=> :created_at
        actions
    end
    form do |f|
        f.inputs do
          f.input :title
          f.input :content, as: :html_editor
        end
        f.actions
    end
end
