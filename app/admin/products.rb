ActiveAdmin.register Product do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
   permit_params :name, :price, :description, :stock, :category_id, :image

   remove_filter :image_attachment, :image_blob
   form do |f|
    f.semantic_errors
    f.inputs
    f.inputs do
      f.input :image, as: :file, hint: f.object.image.present? ? image_tag(f.object.image) : ""
    end
    f.actions
   end
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :price, :description, :stock, :category_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
end
