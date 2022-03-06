module Thing::Operation
  class Destroy < Trailblazer::Operationx
    step Model(Thing, :find_by)
    step :delete!

    def delete!(options, model:, **)
      model.destroy
    end
  end
end
