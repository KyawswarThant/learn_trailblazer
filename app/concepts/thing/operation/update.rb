module Thing::Operation
  class Update < Trailblazer::Operation
    class Present < Trailblazer::Operation
      step Model(Thing, :find_by)
    end
    step Nested(Present)
    step Contract::Build(constant: Thing::Contract::Create)
    step Contract::Validate(key: :thing)
    step Contract::Persist()
  end
end
