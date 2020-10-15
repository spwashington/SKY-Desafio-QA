class MainPageUtils < SitePrism::Page
    set_url ''
    element :m_WelcomePopup, '.modal.fade.modal-pre-page.in'
    element :m_WelcomePopupButtonClose, '.sky_icon.sky_icon-close.icon_xs', match: :first
    element :m_NavButtonSelected, '.btn.linkMedium.secondaryWeb.active', match: :first
    element :m_NavProgrammingButton, "a[href='/programacao']"

    def welcomePopupExist
        temp = has_css?('.modal.fade.modal-pre-page.in')
        return temp
    end
end