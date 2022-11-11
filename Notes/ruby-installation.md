1) Run as administrator
	rubyinstaller-2.4.2-2-x64.exe
	to C:\Ruby24

2) Run as administrator
	Devkit-mingw64-64-4.7.2-20130224-1432-sfx.exe
	to C:\RubyDevKit

3) CD:\RubyDevKit
	1. ruby dk.rb init
	2. Modify created config.yml as follows:
		# ---
		# - C:/ruby19trunk
		# - C:/ruby192dev
		#
		---
		- C:/Ruby24
	3. ruby dk.rb install

