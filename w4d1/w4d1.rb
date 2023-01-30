require 'set'

class GraphNode
  attr_accessor :value, :neighbors

  def initialize(value)
    self.val = value
    self.neighbors = []

  end

  def add_neighbor(n)
    self.neighbors << n

  end

end

def bfs(starting_node, target_value)
  queue = [starting_node]
  visit = Set.new()

  until queue.empty?
    node = queue.shift
    unless visit.include?(node)
      if node.val == target_value
        return node.val 
      end
      visit.add(node)
      queue += node.neighbors
    end
  end
  
  nil

end