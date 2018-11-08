REM This file runs tests for merges, PRs, and nightlies.
REM There are a few rules for what tests are run:
REM  * PRs run all non-acceptance tests for every library.
REM  * Merges run all non-acceptance tests for every library, and acceptance tests for all altered libraries.
REM  * Nightlies run all acceptance tests for every library.
REM Currently only runs tests on 2.5.1

"C:\Program Files\Git\bin\bash.exe" github/google-api-ruby-client/.kokoro/windows.sh
