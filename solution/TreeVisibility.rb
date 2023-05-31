class Tree
    attr_accessor :root, :left, :right
    def initialize(root, left, right)
        @root = root
        @left = left
        @right = right
    end

    def visibility(tree, max_value)
        return 0 if !tree.root

        if tree.left == nil && tree.right == nil
            tree.root >= max_value ? (return 1) : (return 0)
        elsif tree.left == nil
            tree.root >= max_value ? (return 1 + visibility(tree.right, tree.root)) : (return visibility(tree.right, max_value))
        elsif tree.right == nil
            tree.root >= max_value ? (return 1 + visibility(tree.left, tree.root)) : (return visibility(tree.left, max_value))
        else
            tree.root >= max_value ? (return 1 + visibility(tree.right, tree.root) + visibility(tree.left, tree.root)) 
            : (return visibility(tree.right, max_value)+ visibility(tree.left, max_value))
        end
    end

    def solution
        return visibility(self, root)
    end
end