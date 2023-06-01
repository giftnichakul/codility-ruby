class TreeVisibility
  attr_accessor :root, :left, :right

  def initialize(root, left, right)
    @root = root
    @left = left
    @right = right
  end

  def visibility(tree, max_value)
    return 0 unless tree.root

    if tree.left.nil? && tree.right.nil?
      tree.root >= max_value ? (return 1) : (return 0)
    elsif tree.left.nil?
      if tree.root >= max_value
        (1 + visibility(tree.right,
                        tree.root))
      else
        visibility(tree.right, max_value)
      end
    elsif tree.right.nil?
      if tree.root >= max_value
        (1 + visibility(tree.left,
                        tree.root))
      else
        visibility(tree.left, max_value)
      end
    elsif tree.root >= max_value
      (1 + visibility(tree.right, tree.root) + visibility(tree.left, tree.root))
    else
      (visibility(tree.right, max_value) + visibility(tree.left, max_value))
    end
  end

  def solution
    visibility(self, root)
  end
end
