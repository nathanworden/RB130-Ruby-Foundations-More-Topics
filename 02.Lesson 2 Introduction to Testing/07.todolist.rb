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

  def size
    todos.size
  end

  def first
    todos[0]
  end

  def last
    todos[-1]
  end

  def shift
    todos.shift
  end

  def pop
    todos.pop
  end

  def done?
    todos.all? {|item| item.done?}
  end

  def <<(todo_item)
    validate_item(todo_item)
    todos << todo_item
    todos
  end

  alias_method :add, :<<

  def validate_item(todo_item)
    raise TypeError.new("Can only add Todo objects") unless todo_item.class == Todo
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

  def remove_at(index)
    raise IndexError, "You dummy! Index #{index} outside of array bounds" unless todos[index]
    todos.delete_at(index)
  end

  def to_a
    todos.clone
  end

  def each
    counter = 0

    while counter < todos.size
      yield(todos[counter])
      counter += 1
    end

    self
  end

  def select
    result = TodoList.new(title)
    each do |todo| 
      result << todo if yield(todo)
    end
    result
  end

  def ==(other)
    other.is_a?(TodoList)
  end

  def find_by_title(title)
    select {|todo| todo.title == title}.first
  end

  def all_done
    select {|todo| todo.done?}
  end

  def all_not_done
    select {|todo| !todo.done?}
  end

  def mark_done(title)
    find_by_title(title).done!
  end

  def mark_all_done
    each {|todo| todo.done!}
  end

  def mark_all_undone
    each {|todo| todo.undone!}
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
todo4 = Todo.new("Go to gym", "for a second time today")

list = TodoList.new("Today's Todos")

list.add(todo1)
list.add(todo2)
list.add(todo3)
list.add(todo4)
# list.add(1)

todo1.done!
todo4.done!

# results = list.select {|todo| todo.done?}

# puts results.inspect

# p list.find_by_title("Go to gym") 

# p list.all_done

# p list.all_not_done

# p list.mark_done("Go to gym")

# list.mark_all_done
# puts list
# list.mark_all_undone
# puts list

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




