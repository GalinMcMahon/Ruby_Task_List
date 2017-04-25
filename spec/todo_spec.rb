require('rspec')
require('Todo')

describe(Task) do
  before() do
    Task.clear()
  end

  describe("#description") do
    it("lets you give it a description") do
      test_task = Task.new("scrub the zebra", nil)
      expect(test_task.description()).to(eq("scrub the zebra"))
    end
  end

  describe(".all") do
    it("is empty at first") do
      expect(Task.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("adds a task to the array of saved tasks") do
      test_task = Task.new("wash the lion", nil)
      test_task.save()
      expect(Task.all()).to(eq([test_task]))
    end
  end

  describe(".clear") do
    it("empties out all of the saved tasks") do
      Task.new("wash the lion", nil).save()
      Task.clear()
      expect(Task.all()).to(eq([]))
    end
  end

#
# describe(Details) do
#   describe("#details") do
#     it("lets you add details to a specific task") do
#       new_details = Details.new("go places")
#       expect(new_details.details()).to(eq("go places"))
#     end
#   end
  describe(".find") do
    it("returns a task by its id number") do
      test_task = Task.new("Do something", "Due Monday")
      test_task.save()
      test_task2 = Task.new("Do more", "Due soon")
      test_task2 = test_task2.save()
      expect(Task.find(test_task.id())).to(eq(test_task))
    end
  end
end
