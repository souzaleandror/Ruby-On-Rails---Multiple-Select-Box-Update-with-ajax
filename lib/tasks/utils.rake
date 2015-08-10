namespace :utils do
	desc "Deletar server"
	task l: :environment do      
		pidfile = 'tmp/pids/server.pid'
		if File.exists? pidfile
			pid = File.read(pidfile).to_i
			if RbConfig::CONFIG['host_os'] =~ /mswin32/
				sh "taskkill /f /pid #{pid}"
				sh "del tmp\\pids\\server.pid"
			else
				sh "kill -9 #{pid}"
				sh "rm #{pidfile}"
			end
			puts "All cleaned up. Yay!"
		else
			puts "Already clean. Whew!"
		end
	end
# ---------------------------------------------------------------------------
desc "Start an instance of the server cleanly."
task :startup => :cleanup do
	sh "rails server"
end
end