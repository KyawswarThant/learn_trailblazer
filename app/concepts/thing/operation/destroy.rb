module Thing::Operation
  class Destroy < Trailblazer::Operation
    step Model(Thing, :find_by)
    step :delete!

    def delete!(options, model:, **)
      model.destroy
    end
  end
end
