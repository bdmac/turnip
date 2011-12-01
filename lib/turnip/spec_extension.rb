module Turnip
  module SpecExtension
    def step(description)
      Turnip::StepRunner.execute_steps(self, [build_step(description)])
    end
    
    private
    
    def build_step(description)
      Turnip::Builder::Step.new(description, nil)
    end
  end
end