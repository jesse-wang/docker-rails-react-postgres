require "administrate/base_dashboard"

class CompanyDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    users: Field::HasMany,
    id: Field::Number,
    name: Field::String,
    origin: Field::String,
    description: Field::Text,
    image: Field::String,
    media_type: Field::String,
    manufacturer_code: Field::String,
    address_line1: Field::String,
    address_line2: Field::String,
    city: Field::String,
    state: Field::String,
    country: Field::String,
    zip: Field::String,
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
    :users,
    :id,
    :name,
    :origin,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :users,
    :id,
    :name,
    :origin,
    :description,
    :image,
    :media_type,
    :manufacturer_code,
    :address_line1,
    :address_line2,
    :city,
    :state,
    :country,
    :zip,
    :meta,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :users,
    :name,
    :origin,
    :description,
    :image,
    :media_type,
    :manufacturer_code,
    :address_line1,
    :address_line2,
    :city,
    :state,
    :country,
    :zip,
    :meta,
  ].freeze

  # Overwrite this method to customize how companies are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(company)
  #   "Company ##{company.id}"
  # end
end
