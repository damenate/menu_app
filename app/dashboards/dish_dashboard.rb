require "administrate/base_dashboard"

class DishDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    course: Field::BelongsTo,
    id: Field::Number,
    name: Field::String,
    description: Field::Text,
    price: Field::String.with_options(searchable: false),
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :course,
    :id,
    :name,
    :description,
  ]

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :course,
    :id,
    :name,
    :description,
    :price,
    :created_at,
    :updated_at,
  ]

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :course,
    :name,
    :description,
    :price,
  ]

  # Overwrite this method to customize how dishes are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(dish)
  #   "Dish ##{dish.id}"
  # end
end
