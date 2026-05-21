class Linked_list
  attr_accessor :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end

  def append(value)
    new_node = Node.new(value)

    if @head.nil?
      @head = new_node
    else
      @tail.next_node = new_node
    end

    @tail = new_node
  end

  def prepend(value)
    new_node = Node.new(value, @head)
    @head = new_node
  end

  def size
    counter = 0
    current_node = @head

    until current_node.nil?
      counter += 1
      current_node = current_node.next_node
    end

    counter
  end

  def head
    if @head == nil
      return nil
    else
      return @head.value
    end
  end
end
