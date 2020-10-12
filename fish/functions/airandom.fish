function airandom
	./node_modules/.bin/extendscriptr --script ./src/index.js --output ./dist/vary.dist.js --target illustrator; and open -a "Adobe Illustrator"; and open -a "ExtendScript Toolkit"; and osascript -e "tell application \"Adobe Illustrator\" to do javascript \"#include '/Users/sam/Documents/projects/ai-random-color-variants/dist/vary.dist.js'\""; and sleep 0.8; and open -a "Atom"; and open -a "Adobe Illustrator"
end
