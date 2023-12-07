class Avo::Resources::Product < Avo::BaseResource
  self.includes = []
  # self.search = {
  #   query: -> { query.ransack(id_eq: params[:q], m: "or").result(distinct: false) }
  # }

  def fields
    field :id, as: :id
    field :name, as: :text
    field :description, as: :textarea
    field :price, as: :number
    field :user_id, as: :number
    field :category_id, as: :number
    field :image, as: :text
    field :user, as: :belongs_to
    field :category, as: :belongs_to
    field :line_items, as: :has_many
  end
end
