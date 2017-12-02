#encoding: utf-8
namespace :db do
task :back up => environment do
  backup_dir = ENV['DIR']||File.join(Rails.root, 'db', 'backup')
  
  source = File.join(Rails.root, 'db', "production.db")
  dest   = File.join(backup_dir, "production.backup")
  
  makedirs backup_dir.join(Rails.root, 'db', "production.db")
  sh "sqlite3 #{source} .dump > #{dest}"
  end
end

