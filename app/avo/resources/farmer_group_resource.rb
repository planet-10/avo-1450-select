class FarmerGroupResource < Avo::BaseResource
  self.title = :id
  self.includes = []
  # self.search_query = -> do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  field :id, as: :id
  # Fields generated from the model
  field :name, as: :text
  field :farmers, as: :has_many, show_on: :edit
  field :secretary_id, as: :select,
        options: ->(model:, resource:, view:, field:) do
          model.farmers.map { |farmer| [farmer.name, farmer.id] }
        end
end
