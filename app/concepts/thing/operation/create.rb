module Thing::Operation
  class Create < Trailblazer::Operation
      step :process
      step Contract::Build(constant: Thing::Contract::Create)
      # step Contract::Validate(key: :thing)
      step Contract::Persist()
      def process(options, params:)
          options[:model] = Thing.new({name: params[:thing][:name], description: params[:thing][:description]})
      end
  end
end
