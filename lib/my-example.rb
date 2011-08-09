module My
  module Example
    VERSION = "0.0.1"
    
    autoload :A, File.join(File.dirname(__FILE__), File.basename(__FILE__, '.rb'), 'a')
    autoload :B, File.join(File.dirname(__FILE__), File.basename(__FILE__, '.rb'), 'b')

    class << self
      def new(selector, *args)
        case selector
        when 'a' then A.new(*args)
        when 'b' then B.new(*args)
        else raise ArgumentError, "Must select 'a' or 'b'"
        end
      end
    end
    
    class Base
      attr_reader :opts, :args
      
      def initialize(*args)
        @opts = {}
        if args.last.is_a?(Hash)
          @opts.merge!(args.pop)
        end
        @args = args
      end
      
      def whoami
        "base!"
      end
      
    end
  end
end