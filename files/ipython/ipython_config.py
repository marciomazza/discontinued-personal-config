c = get_config()
c.InteractiveShell.autocall = 2
c.InteractiveShell.logstart = True
c.InteractiveShellApp.extensions = ["autoreload", "pgcli.magic"]
c.InteractiveShellApp.exec_lines = ["%autoreload 2"]
