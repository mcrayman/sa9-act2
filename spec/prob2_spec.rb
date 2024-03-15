require "prob2"

RSpec.describe TodoList do
  describe "#add" do
    it "adds a todo to the list" do
      todo_list = TodoList.new
      todo_list.add("todo1")
      expect(todo_list.todos).to include("todo1")
    end
  end

  describe "#remove" do
    it "removes a todo from the list" do
      todo_list = TodoList.new
      todo_list.remove("todo1")
      expect(todo_list.todos).not_to include("todo1")
    end
  end

  describe "#todos" do
    it "returns all todos" do
      todo_list = TodoList.new
      todo_list.add("todo1")
      todo_list.add("todo2")
      expect(todo_list.todos).to eq(["todo1", "todo2"])
    end
  end
end
      
