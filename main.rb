require_relative 'lib/node'
require_relative 'lib/linked_list'

node1 = Node.new
p node1

linked_list_nil = Linked_list.new
linked_list2 = Linked_list.new
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

