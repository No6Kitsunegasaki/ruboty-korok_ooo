module Ruboty
  module Handlers
    class KorokOoo < Base
      on /.*\((?<medal1>.*)\).*\((?<medal2>.*)\).*\((?<medal3>.*)\)/, name: 'ooo', description: 'change form with medals'

      def ooo(message)
        Ruboty::KorokOoo::Actions::Ooo.new(message).call
      end
    end
  end
end
