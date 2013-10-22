desc "Aplicación"
task :default => :server

desc "Servidor"
task :server do
  sh "rackup"
end

desc "run the unit tests"
task :test do
  sh "ruby test/test.rb "
end

desc "Ejecutar los Test Rspec"
task :spec do
        sh "rspec spec/rsack/server_spec.rb"
end
