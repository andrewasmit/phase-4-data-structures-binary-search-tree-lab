require_relative './node'
require 'pry'

class BinarySearchTree
  attr_accessor :root

  def initialize(root = nil)
    @root = root
  end

  def search(curr = @root, value)
    return nil if curr == nil
    return curr if curr.value == value
    if (curr.value < value)
      return search(curr.right, value)
    else
      return search(curr.left, value)
    end
  end


  def insert(value)
    # binding.pry
    if search(value) == nil && self.root == nil
      node = Node.new(value)
      self.root = node
    end

    node
  end

end 
