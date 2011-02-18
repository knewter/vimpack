Feature: Install a vim script

  As a vimpack user
  I want to install a vim script
  So I can use it in vim

  Scenario: Install a script
    Given an initialized vimpack in "test_vimpack"
    When I run "vimpack install rails.vim"
    Then the output should contain:
      """
       * installing rails.vim
      rails.vim (4.3) installed!
      """
      And a directory named "test_vimpack/.vimpack/scripts/rails.vim" should exist and be a git submodule of "test_vimpack/.vimpack"
      And a symlink named "test_vimpack/.vimpack/vim/bundle/rails.vim" should exist and link to "test_vimpack/.vimpack/scripts/rails.vim"
      And the exit status should be 0

  Scenario: Attempt to install a script that is not found but a fuzzy match is found
    Given an initialized vimpack in "test_vimpack"
    When I run "vimpack install cucumber"
    Then the output should contain:
      """
      Script not found! Did you mean cucumber.zip?
      """
      And the exit status should be 1

  Scenario: Attempt to install a script that is not found
    Given an initialized vimpack in "test_vimpack"
    When I run "vimpack install railz"
    Then the output should contain:
      """
      Script not found!
      """
      And the exit status should be 1

