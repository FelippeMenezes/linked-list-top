require_relative 'lib/node'
require_relative 'lib/linked_list'

node1 = Node.new
p node1

linked_list_nil = LinkedList.new
linked_list2 = LinkedList.new
p linked_list2

linked_list2.append('middle')
p linked_list2

linked_list2.append('last')
p linked_list2

linked_list2.prepend('first')
p linked_list2

linked_list_nil.size
p linked_list2.size

p linked_list_nil.head
p linked_list2.head

p linked_list_nil.tail
p linked_list2.tail

p linked_list2.at(25)
p linked_list2.at(1)

p linked_list_nil.pop
p linked_list2.pop
linked_list2.prepend('first')

p linked_list2.contains?('middle')
p linked_list_nil.contains?('middle')

p linked_list2.index('middle')
p linked_list_nil.index('middle')

p linked_list2.to_s
p linked_list_nil.to_s

linked_list2.insert_at(10, 'after_middle')
linked_list2.insert_at(2, 'after_middle')
p linked_list2.to_s
linked_list2.insert_at(1, ['after_first', 'before_middle'])
p linked_list2.to_s

linked_list2.remove_at(10)
linked_list2.remove_at(4)
p linked_list2.to_s

list = LinkedList.new

list.append('dog')
list.append('cat')
list.append('parrot')
list.append('hamster')
list.append('snake')
list.append('turtle')

p list.to_s
