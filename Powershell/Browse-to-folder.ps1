$FolderBrowser = New-Object System.Windows.Forms.FolderBrowserDialog

# Opens a GUI to select a folder
[void]$FolderBrowser.ShowDialog()

# Assign the selected folder to a variable
$FolderBrowser.SelectedPath
