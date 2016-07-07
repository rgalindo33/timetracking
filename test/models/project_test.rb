require 'test_helper'

class ProjectTest < ActiveSupport::TestCase

  test "#clean_old removes projects older than one week" do
    old_project = Project.create(name:"test",
                             description: "testsas")
    old_project.created_at = 2.years.ago
    old_project.save

    new_project = Project.create(name:"so fresh",
                             description: "this week")

# call our delte_old mehotd
    Project.clean_old

    assert_equal 3, Project.all.count

  end
  # test "the truth" do
  #   assert true
  # end
end
