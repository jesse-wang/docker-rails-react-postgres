require "administrate/base_dashboard"

class ItemDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    designer: Field::BelongsTo,
    category: Field::BelongsTo,
    id: Field::Number,
    year: Field::Number,
    season: Field::String,
    name: Field::String,
    code: Field::String,
    price: Field::Number,
    gender: Field::String,
    size: Field::String,
    color: Field::String,
    style: Field::String,
    material: Field::String,
    description: Field::Text,
    image: Field::String,
    meta: Field::String.with_options(searchable: false),
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :designer,
    :category,
    :id,
    :year,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :designer,
    :category,
    :id,
    :year,
    :season,
    :name,
    :code,
    :price,
    :gender,
    :size,
    :color,
    :style,
    :material,
    :description,
    :image,
    :meta,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :designer,
    :category,
    :year,
    :season,
    :name,
    :code,
    :price,
    :gender,
    :size,
    :color,
    :style,
    :material,
    :description,
    :image,
    :meta,
  ].freeze

  # Overwrite this method to customize how items are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(item)
  #   "Item ##{item.id}"
  # end
end
