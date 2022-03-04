module Thing::Operation
  class Update < Trailblazer::Operation
    step :process!
    # step Contract::Build(constant: Thing::Contract::Create)
    # step :test!
    # step Contract::Persist()

    def process!(options, params)
      @thing = Thing.find(params[:params][:id])
      @model = @thing.update({name: params[:params][:thing][:name], description: params[:params][:thing][:description]})
      # options[:model] = Thing.find(params[:params][:id])
    end

    # def test!(options, params)
      # @thing = Thing.find(params[:params][:id])
      # @model = @thing.update({name: params[:params][:thing][:name], description: params[:params][:thing][:description]})
      # byebug
      # options
    #end
  end
end
