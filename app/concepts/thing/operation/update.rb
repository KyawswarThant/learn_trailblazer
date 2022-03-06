module Thing::Operation
  class Update < Trailblazer::Operation
    step Model(Thing, :find_by)
    step Contract::Build(constant: Thing::Contract::Create)
    step Contract::Validate(key: :thing)
    step Contract::Persist()
  end
end
