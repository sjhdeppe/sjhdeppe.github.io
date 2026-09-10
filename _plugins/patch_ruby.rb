# Fixes compatibility between Ruby 3.2+ and Liquid 4.x
unless Object.method_defined?(:tainted?)
  class Object
    def tainted?
      false
    end

    def untaint
      self
    end
  end
end
