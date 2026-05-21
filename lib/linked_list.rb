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
    i = 0

    until current_node.nil?
      return i if current_node.value == value
      current_node = current_node.next_node
      i += 1
    end

    nil
  end

  def to_s
    return "" if @head.nil?

    current_node = @head
    elements = []

    until current_node.nil?
      elements << "( #{current_node.value} )"
      current_node = current_node.next_node
    end

    elements.join(" -> ") + " -> nil"
  end

  def insert_at(index, values)
    values = Array(values)
    current_size = size

    return puts "No index found in this list." if index < 0 || index > current_size
    return if values.empty?

    if index == 0
      values.reverse_each { |val| prepend(val) }
    else
      previous_node = @head
      (index - 1).times do
        previous_node = previous_node.next_node
      end
      after_node = previous_node.next_node

      values.each do |val|
        new_node = Node.new(val)
        previous_node.next_node = new_node
        previous_node = new_node
      end

      previous_node.next_node = after_node
      @tail = previous_node if after_node.nil?
    end
  end

  def remove_at(index)
    current_size = size
    return puts "No index found in this list." if index < 0 || index >= current_size

    if index == 0
      removed_node = @head
      @head = @head.next_node
      @tail = nil if @head.nil?
    else
      previous_node = @head
      (index - 1).times do
        previous_node = previous_node.next_node
      end

      removed_node = previous_node.next_node
      previous_node.next_node = removed_node.next_node
      @tail = previous_node if removed_node == @tail
    end

    removed_node.value
  end
end
