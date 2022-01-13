# The complete setup file for the Powershell envrionment.
# The only thing that it does not do is install the NerdFont.
# Please install Caskaydia Cove NerdFont in https://github.com/ryanoasis/nerd-fonts > Releases

# Install oh-my-posh
Install-Module posh-git -Scope CurrentUser -Force

# Install Terminal Icons
Install-Module -Name Terminal-Icons -Repository PSGallery

# Install PSReadLine (Autocomplete)
Install-Module -Name PSReadLine -Scope CurrentUser -Force -SkipPublisherCheck
