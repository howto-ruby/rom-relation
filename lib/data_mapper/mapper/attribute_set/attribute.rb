module DataMapper
  class Mapper
    class AttributeSet

      # Attribute
      #
      # @api private
      class Attribute

        # @api private
        attr_reader :name

        # @api private
        attr_reader :type

        # @api private
        attr_reader :field

        # @api private
        def initialize(name, options = {})
          @name  = name
          @field = options.fetch(:to, @name)
          @type  = options.fetch(:type, Object)
          @key   = options.fetch(:key, false)
        end

        # @api public
        def key?
          @key
        end

      end # class Attribute
    end # class AttributeSet
  end # class Mapper
end # module DataMapper