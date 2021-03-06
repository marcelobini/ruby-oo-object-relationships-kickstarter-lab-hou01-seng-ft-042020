class Project

    attr_reader :title

    @@all=[]

    def initialize(title)
        @title = title

        @@all << self
    end

    def self.all
        @@all
    end

    def add_backer(backer)
        ProjectBacker.new(self,backer)
    end

    def backers
        project_backers = ProjectBacker.all.select do |proj|
            proj.project == self
          end
          project_backers.map do |proj|
            proj.backer
          end
    end
end
