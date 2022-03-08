module Thing::Operation
  class Create < Trailblazer::Operation
    class Present < Trailblazer::Operation
      step Model(Thing, :new)
      step Contract::Build(constant: Thing::Contract::Create)
    end

    step Nested(Present)
    step Contract::Validate()
    step Contract::Persist()

    def test!(options, **)
      byebug
    end
  end
end
