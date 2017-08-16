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
# add/remove item(s) to todo list
# if user selects section, takes user to add/remove item todo list.
# display current list (create method to retrieve data from tasks table from db)
# ask user "Please add/remove the task(s) to/from the list (and enter "done" when finished)."
# create method to add/remove items to/from the tasks table.
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

  puts "Here is your Todo List: "
  tasks.each do |item|
    puts item[1]
  end
end

exit = false
until exit == true
  #### Menu
  puts #for spacing
  puts "Welcome to your Todo List, please select (number) from the options below: "
  puts "1 - Add item(s) to your todo list"
  puts "2 - Remove item(s) from your todo list"
  puts "3 - View your todo list"
  puts "Type 'exit' to leave"
  user_selection = gets.chomp

  #### section 1 - add items to todo list

  if user_selection == "1"
    puts #for spacing
    display_tasks(db)

    def add_items_to_table(db, item)
      db.execute("INSERT INTO tasks (item) VALUES (?)", [item])
    end

    finished = false
    puts #for spacing
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

  #### section 2 - remove items from todo list

  if user_selection == "2"
    puts #for spacing
    display_tasks(db)

    def remove_item_from_table(db, item_to_delete)
      db.execute("DELETE FROM tasks WHERE item = ?", [  item_to_delete])
    end

    finished = false
    puts #for spacing
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

  #### section 3 - view todo list

  if user_selection == "3"
    puts #for spacing
    display_tasks(db)
  end

  if user_selection == "exit"
    exit = true
  end
end








