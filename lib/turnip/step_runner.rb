module Turnip
  module StepRunner    
    class << self      
      def execute_steps(context, steps)
        steps.each do |step|
          execute_step(context, step)
        end
      end

      def load_steps_for(*tags)
        self.available_steps = Turnip::StepModule.all_steps_for(*tags)
      end

      private

      attr_accessor :available_steps

      def execute_step(context, step)
        Turnip::StepDefinition.execute(context, available_steps, step)
      end
    end
  end
end