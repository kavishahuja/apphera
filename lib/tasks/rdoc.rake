RDoc::Task.new :rdoc do |rdoc|
  rdoc.main = "README.md"

  rdoc.rdoc_files.include("README.md", "doc/*.rdoc", "app/**/*.rb", "lib/*.rb", "config/**/*.rb, apphera-crawler/src/*.rb")

  rdoc.title = "Apphera Documentation"
  rdoc.options << "--all" 
end