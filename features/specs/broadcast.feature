Feature: Broadcast Programming
    In Programming Session user can see current broadcast programming and all schedule of broadcast

    Background: Access SKY website
        Given that user access sky website
        Then welcome popup show in first access of user
        
    @CheckProgrammingLink
    Scenario: Access broadcast programming page
        When user click in "Programação" link in navigation bar
        Then page programming load

    @CheckCurrentBroadcast
    Scenario: Check current broadcast programming
        Given user access "Programação" page
        And user select current broadcast programming in programming session
        Then a popup about current broadcast appears with complete info about broadcast
