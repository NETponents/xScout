#!/bin/bash
echo 'Configuring JIT variables...'
sed 's/TRAVISCOMMIT/'$TRAVIS_COMMIT'/' ./builddata.partial.rb > ./builddata.partial2.rb
sed 's/TRAVISBUILD/'$TRAVIS_BUILD_NUMBER'/' ./builddata.partial2.rb > ./inc/builddata.rb
rm ./builddata.partial.rb
rm ./builddata.partial2.rb
head ./inc/builddata.rb
