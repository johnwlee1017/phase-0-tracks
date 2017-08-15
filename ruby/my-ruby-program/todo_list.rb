# create todo list that asks user what tasks need to be done and then allows user to view the list and also add/remove items from the list.
#
# create menu, asking what would you like to do (give options and ask to select the number):
# 1 - add item to todo list (displays current list and asks to user to add to list)
# 2 - remove item from todo list (displays current list and asks which item(s) to remove)
# 3 - view todo list (displays current list)
#
# create database (todo_list) and add table (tasks) with user input.
#
# sections:
# 1 - add item to todo list
# if user selects 1, takes user to add item todo list.
# display current list (create method to retrieve data from tasks table from db)
# ask user "Please add the task(s) to the list (and enter "done" when finished)."
# create method to add to items to the tasks table.
# if user is finished and enters "done", it takes user back to the menu

#### create todo_list database and tasks table
require 'sqlite3'

db = SQLite3::Database.new("todo_list.db")

create_table = <<-SQL
  CREATE TABLE IF NOT EXISTS tasks (
    id INTEGER PRIMARY KEY,
    item VARCHAR(255)
  )
SQL

db.execute(create_table)

def display_tasks(db)
  tasks = db.execute("SELECT * FROM tasks")
  p tasks
end

#### Menu

puts "Welcome to your Todo List, please select (number) frothe  options below: "
puts "1 - Add item to your todo list"
puts "2 - Remove item from your todo list"
puts "3 - View your todo list"
user_selection = gets.chomp.to_i

#### section 1 - add items to todo list

if user_selection == 1
  def add_items_to_table(db, item)
    db.execute("INSERT INTO tasks (item) VALUES (?)", [item])
  end

  finished = false
  puts "Please add task(s) to the list (enter 'done' when finished)"
  until finished == true
    user_input = gets.chomp

    if user_input != "done"
      add_items_to_table(db, user_input)
    end

    if user_input == "done"
      finished = true
    end
  end
end

if user_selection == 2
  def remove_item_from_table(db, item_to_delete)
    db.execute("DELETE FROM tasks WHERE item = ?", [item_to_delete])
  end

  finished = false
  puts "Please remove task(s) from the list (enter 'done' when finished)"
  until finished == true
    user_input = gets.chomp

    if user_input != "done"
      remove_item_from_table(db, user_input)
    end

    if user_input == "done"
      finished = true
    end
  end
end






