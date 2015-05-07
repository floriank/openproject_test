
namespace :openproject_test do
  namespace :plugins do
    desc 'Creates a new shallow copy of openproject'
    task :clone_openproject do
      OpenprojectTest::CloneOpenproject.start
    end
  end
end

