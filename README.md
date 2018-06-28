# Thanx Style Guide

:lock_with_ink_pen: Style Guide & Linting Rules

* * *

## General Style

* trailing whitespace should be pruned
* newlines should exist at the end of every file
* line lengths
  * 80 characters default
  * 50 characters for git commit summaries
  * 72 characters for git commit explanatory text
* 2 character soft tabs for indentation
* tabs should always be translated to spaces
* a single indent should be exactly 2 spaces

## Commit Messages

* TA-0000. Capitalized, short (<= 50 characters).
* Prefixed with a corresponding JIRA ticket number.
* Summary should be less than 50 characters or less.
* More detailed explanatory text following if necessary, wrapped at 72
  characters. Explanatory text should be separated from the summary with a
  line break.
* Tags indicate that an action is necessary after the commit is deployed or
  checked out locally. We have the following conventions.

## Resources

* [Rubocop Docs](http://rubocop.readthedocs.io/en/latest/)
* [RSpec Cops](http://rubocop-rspec.readthedocs.io/en/latest/cops_rspec/)
* [Ruby Defaults](https://github.com/rubocop-hq/rubocop/blob/master/config/default.yml)
* [RSpec Defaults](https://github.com/rubocop-hq/rubocop-rspec/blob/master/config/default.yml)
