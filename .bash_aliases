shopt -s expand_aliases  

# Aliases 

# force CLI tool aliases
alias flp='force login -u=jfontas@nfpa.org'
alias flt='force login -i=test'
alias fltc='force login -i=test -u=jfontas@nfpa.org.config'
alias fpac='force push -t ApexClass metadata/classes'
alias fpat='force push -t ApexTrigger metadata/triggers'


alias gtm='cd ~/Desktop/Mirror'
alias gts='cd ~/Desktop/Mirror/Source'
alias gtsi='cd ~/Desktop/Mirror/Source/NFPA_Internal'
alias gtsisbr='cd ~/Desktop/Mirror/Source/NFPA_Internal/SalesforceWebToCaseTrigger/branches/RemoveNfpaAs'
alias ls='ls -GFh'
alias vrc='vim ~/.vimrc'

alias java_jre='/Library/Internet\ Plug-Ins/JavaAppletPlugin.plugin/Contents/Home/bin/java'

bundleVim() {
	cd ~/.vim/bundle
	git clone $1
}
alias bd=bundleVim

runDataLoader() {
	java -cp /Applications/LexiLoader_v29.app/Contents/Resources/Java/Dataloader.jar -Dsalesforce.config.dir=$1 com.salesforce.dataloader.process.ProcessRunner process.name=$2
}
alias dl='runDataLoader'

runDataLoaderEncrypt() {
	java_jre -cp /Applications/LexiLoader_v29.app/Contents/Resources/Java/Dataloader.jar com.salesforce.dataloader.security.EncryptionUtil -e $1
}
alias dle='runDataLoaderEncrypt'
