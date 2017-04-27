require "administrate/base_dashboard"

class DesignerDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    category: Field::HasMany,
    items: Field::HasMany,
    users: Field::HasMany,
    id: Field::Number,
    name: Field::String,
    origin: Field::String,
    description: Field::Text,
    image: Field::String,
    meta: Field::String.with_options(searchable: false),
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :name,
    :category,
    :items,
    :users,
    :id,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :category,
    :items,
    :users,
    :id,
    :name,
    :origin,
    :description,
    :image,
    :meta,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :category,
    :items,
    :users,
    :name,
    :origin,
    :description,
    :image,
    :meta,
  ].freeze

  # Overwrite this method to customize how designers are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(designer)
  #   "Designer ##{designer.id}"
  # end
end
