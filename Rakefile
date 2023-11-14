task :default => :all

desc "Pruebas unitarias de las variables de instancia"
task :vi do
  sh "ruby -I. test/tc_variables_instancia.rb"
end

desc "Pruebas unitarias de las variables de clase"
task :vc do
  sh "ruby -I. test/tc_variables_clase.rb"
end

desc "Pruebas unitarias de las variables de clase y herencia"
task :vch do
  sh "ruby -I. test/tc_variables_clase_herencia.rb"
end

desc "Pruebas unitarias de las variables de instancia de la clase"
task :vic do
  sh "ruby -I. test/tc_variables_instancia_de_la_clase.rb"
end

desc "Todas las pruebas"
task :all do
  sh "ruby -I. test/tc_variables_instancia.rb"
  sh "ruby -I. test/tc_variables_clase.rb"
  sh "ruby -I. test/tc_variables_clase_herencia.rb"
  sh "ruby -I. test/tc_variables_instancia_de_la_clase.rb"
end
