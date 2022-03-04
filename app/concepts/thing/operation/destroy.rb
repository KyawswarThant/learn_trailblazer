module Thing::Operation
  class Destroy < Trailblazer::Operation
    # step :process
    # def process(options, params)
    #   @thing = Thing.find(params[:params][:id])
    #   @thing.destroy
    # end
    step Model(Thing, :find_by)
    step :delete!

    def delete!(options, model:, **)
      model.destroy
    end
  end
end
