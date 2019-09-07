class Todo
  DONE_MARKER = 'X'
  UNDONE_MARKER = ' '

  attr_accessor :title, :description, :done

  def initialize(title, description='')
    @title = title
    @description = description
    @done = false
  end

  def done!
    self.done = true
  end

  def done?
    done
  end

  def undone!
    self.done = false
  end

  def to_s
    "[#{done? ? DONE_MARKER : UNDONE_MARKER}] #{title}"
  end
end

class TodoList
  attr_accessor :title

  def initialize(title)
    @title = title
    @todos = []
  end

  def add(todo_item)
    validate_item(todo_item)
    todos << todo_item
    todos
  end

  def validate_item(todo_item)
    raise TypeError.new("Can only add Todo objects") unless todo_item.class == Todo
  end

  def size
    todos.size
  end

  def first
    todos[0]
  end

  def last
    todos[-1]
  end

  def to_a
    todos.clone
  end

  def done?
    todos.all? {|item| item.done?}
  end

  def item_at(index)
    todos.fetch(index)
  end

  def mark_done_at(index)
    todos.fetch(index).done!
  end

  def mark_undone_at(index)
    todos.fetch(index).undone!
  end

  def done!
    todos.each {|item| item.done!}
  end

  def shift
    todos.shift
  end

  def pop
    todos.pop
  end

  def remove_at(index)
    raise IndexError, "You dummy! Index #{index} outside of array bounds" unless todos[index]
    todos.delete_at(index)
  end

  def each
    counter = 0

    while counter < todos.size
      yield(todos[counter])
      counter += 1
    end

    todos
  end

  def select
    result = []
    each do |todo| 
      result << todo if yield(todo)
    end
    result
  end

  def to_s  
    text = "---- #{title} ----\n"
    # todos.each {|item| puts item}
    text << todos.map {|item| item.to_s}.join("\n")
    text
  end

  private
  attr_accessor :todos
end

todo1 = Todo.new("Buy milk")
todo2 = Todo.new("Clean room")
todo3 = Todo.new("Go to gym")

list = TodoList.new("Today's Todos")

list.add(todo1)
list.add(todo2)
list.add(todo3)
# list.add(1)

todo1.done!

results = list.select {|todo| todo.done?}

puts results.inspect

# list.each do |todo|
#   puts todo
# end

# list.size
# list.first
# list.last
# list.to_a
# list.done?

# list.item_at
# list.item_at(1)
# list.item_at(100)

# list.mark_done_at
# list.mark_done_at(1)
# list.mark_done_at(100)

# list.mark_undone_at
# list.mark_undone_at(1)
# list.mark_undone_at(100)

# list.done!

# list.shift

# list.pop

# list.remove_at
# list.remove_at(1)
# list.remove_at(100)

# list.to_s

# puts list




