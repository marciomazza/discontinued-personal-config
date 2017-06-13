c = get_config()
c.InteractiveShell.autocall = 1
c.InteractiveShell.logstart = True
c.InteractiveShellApp.extensions = ['autoreload']
c.InteractiveShellApp.exec_lines = ['%autoreload 2']
