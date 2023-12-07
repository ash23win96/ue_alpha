class Avo::Resources::Category < Avo::BaseResource
  self.includes = []
  # self.search = {
  #   query: -> { query.ransack(id_eq: params[:q], m: "or").result(distinct: false) }
  # }

  def fields
    field :id, as: :id
    field :name, as: :text
    field :description, as: :textarea
    field :user_id, as: :number
    field :products, as: :has_many
    field :user, as: :belongs_to
  end
end
