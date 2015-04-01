ActiveAdmin.register Book do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :title, :author, :cover
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end
  index do
    selectable_column
    id_column
    column :title
    column :author
    column "dd" do |book|
      image_tag(book.cover.thumb)
    end
    actions
  end

   show do
    attributes_table do
      row :title
      row :author
      row :cover do
        image_tag book.cover
      end
    end
    active_admin_comments
  end

end
