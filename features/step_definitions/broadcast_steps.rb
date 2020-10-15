Given("that user access sky website") do
    @m_Page = MainPageUtils.new
    @m_Page.load
end

Then("welcome popup show in first access of user") do
    temp = @m_Page.welcomePopupExist

    if temp == true
        expect(@m_Page.wait_until_m_WelcomePopup_visible).to eql true
        @m_Page.m_WelcomePopupButtonClose.click
    end
end

When("user click in {string} link in navigation bar") do |_Text|
    @m_TextButton = _Text
    @m_Page.m_NavProgrammingButton.click
end

Then("page programming load") do
    expect(@m_Page.m_NavButtonSelected.text).to eql @m_TextButton
end

Given("user access {string} page") do |_Text|
    @m_Page = ProgrammingPageUtils.new
    @m_Page.load
    expect(@m_Page.m_NavButtonSelected.text).to eql _Text
end

Given("user select current broadcast programming in programming session") do
    @m_Page.m_CurrentBroadcast.click
    expect(@m_Page.wait_until_m_ModalProgramming_visible).to eql true
end

Then("a popup about current broadcast appears with complete info about broadcast") do
    expect(@m_Page.m_ModalProgramming).to have_content(@m_Page.m_CurrentBroadcastDuration.text)
    expect(@m_Page.m_ModalProgramming).to have_content(@m_Page.m_CurrentBroadcastTitle.text)
end