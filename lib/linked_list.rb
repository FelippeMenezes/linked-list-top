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
    @tail = new_node if @tail.nil?
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

  def tail
    if @tail == nil
      return nil
    else
      return @tail.value
    end
  end

  def at(index)
    return nil if index < 0

    current_node = @head

    return nil if current_node.nil?

    index.times do
      current_node = current_node.next_node
      return nil if current_node.nil?
    end

    current_node.value
  end

  def pop
    return nil if @head.nil?

    removed_value = @head.value
    @head = @head.next_node

    @tail = nil if @head.nil?

    removed_value
  end

  def contains?(value)
    current_node = @head
    until current_node.nil?
      return true if current_node.value == value
      current_node = current_node.next_node
    end
    false
  end

  def index(value)
    current_node = @head
    index = 0
    until current_node.nil?
      return index if current_node.value == value
      current_node = current_node.next_node
      index += 1
    end
    nil
  end
end
