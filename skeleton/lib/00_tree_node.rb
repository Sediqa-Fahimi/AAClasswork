class PolyTreeNode
    attr_reader :value, :parent, :children
    attr_writer :parent
    def initialize(value)
        @value = value
        @parent = nil
        @children = []
    end
    def parent=(node)
        # return nil if parent.nil?
        if !node.nil?
            if self.parent
                @parent.children.delete(self)
                node.children << self
                @parent = node
            else
                node.children << self
                @parent = node
            end
        else
            @parent = nil
            return nil
        end
    end

end