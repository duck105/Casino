require "administrate/base_dashboard"

class BetDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    participant: Field::BelongsTo.with_options(
      searchable: true,
      searchable_field: 'name',
    ),
    id: Field::Number,
    name: Field::String,
    team: Field::String,
    money: Field::String,
    price: PriceField,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    aasm_state: Field::String,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :id,
    :participant,
    :team,
    :name,
    :money,
    :aasm_state,
    :price,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :participant,
    :id,
    :name,
    :team,
    :money,
    :price,
    :created_at,
    :updated_at,
    :aasm_state,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :participant,
    :name,
    :team,
    :money,
  ].freeze

  # Overwrite this method to customize how bets are displayed
  # across all pages of the admin dashboard.
  #
  def display_resource(bet)
    "Bet ##{bet.id}"
  end
end
