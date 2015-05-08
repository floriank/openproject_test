module OpenprojectTest
  class Installer < Thor::Group
    include Thor::Actions

    REPO_URL = 'https://github.com/opf/openproject'

    desc 'clones a shallow copy of OpenProject with a certain version'

    class_option :path, type: :string, desc: 'the path to clone into',
                        alias: '-p', default: 'spec/dummy'

    class_option :branch, type: :string, default: 'dev', alias: '-b'

    def remove_openproject
      FileUtils.rm_rf options[:path]
    end

    def clone_openproject
      say "Cloning Openproject into #{options[:path]}...", :blue
      system clone_cmd
    end

    private

    def clone_cmd
      path, branch = %w(path branch).map { |s| options.fetch s }
      "git clone #{REPO_URL} --depth 1 --branch #{branch} #{path} > /dev/null"
    end
  end
end
