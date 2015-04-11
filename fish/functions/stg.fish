function stg
	if test (defaults read com.apple.finder AppleShowAllFiles) = "TRUE"
    defaults write com.apple.finder AppleShowAllFiles FALSE
else
    defaults write com.apple.finder AppleShowAllFiles TRUE
end
killall Finder
end
