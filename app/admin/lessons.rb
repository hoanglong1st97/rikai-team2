ActiveAdmin.register Lesson do
    permit_params :chapter, :title, :content, :course_id
    index do
        column :id
        column :chapter, :sortable => :chapter
        column :title, :sortable => :title
        column :course, :sortable => :course
        column :created_at ,:sortable=> :created_at
        actions
    end
    form do |f|
        f.inputs do
          f.input :course
          f.input :chapter
          f.input :title
          f.input :content, as: :html_editor
        end
        f.actions
    end
      
end
